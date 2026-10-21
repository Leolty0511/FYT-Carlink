package android.net.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.server.wifi.wificond.NativeScanResult;
import com.android.server.wifi.wificond.PnoSettings;
import com.android.server.wifi.wificond.SingleScanSettings;

/* JADX INFO: loaded from: classes.dex */
public interface IWifiScannerImpl extends IInterface {
    public static final int SCAN_TYPE_DEFAULT = -1;
    public static final int SCAN_TYPE_HIGH_ACCURACY = 2;
    public static final int SCAN_TYPE_LOW_POWER = 1;
    public static final int SCAN_TYPE_LOW_SPAN = 0;

    void abortScan() throws RemoteException;

    NativeScanResult[] getPnoScanResults() throws RemoteException;

    NativeScanResult[] getScanResults() throws RemoteException;

    boolean scan(SingleScanSettings singleScanSettings) throws RemoteException;

    boolean startPnoScan(PnoSettings pnoSettings) throws RemoteException;

    boolean stopPnoScan() throws RemoteException;

    void subscribePnoScanEvents(IPnoScanEvent iPnoScanEvent) throws RemoteException;

    void subscribeScanEvents(IScanEvent iScanEvent) throws RemoteException;

    void unsubscribePnoScanEvents() throws RemoteException;

    void unsubscribeScanEvents() throws RemoteException;

    public static class Default implements IWifiScannerImpl {
        @Override // android.net.wifi.IWifiScannerImpl
        public NativeScanResult[] getScanResults() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public NativeScanResult[] getPnoScanResults() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public boolean scan(SingleScanSettings scanSettings) throws RemoteException {
            return false;
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public void subscribeScanEvents(IScanEvent handler) throws RemoteException {
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public void unsubscribeScanEvents() throws RemoteException {
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public void subscribePnoScanEvents(IPnoScanEvent handler) throws RemoteException {
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public void unsubscribePnoScanEvents() throws RemoteException {
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public boolean startPnoScan(PnoSettings pnoSettings) throws RemoteException {
            return false;
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public boolean stopPnoScan() throws RemoteException {
            return false;
        }

        @Override // android.net.wifi.IWifiScannerImpl
        public void abortScan() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IWifiScannerImpl {
        private static final String DESCRIPTOR = "android.net.wifi.IWifiScannerImpl";
        static final int TRANSACTION_abortScan = 10;
        static final int TRANSACTION_getPnoScanResults = 2;
        static final int TRANSACTION_getScanResults = 1;
        static final int TRANSACTION_scan = 3;
        static final int TRANSACTION_startPnoScan = 8;
        static final int TRANSACTION_stopPnoScan = 9;
        static final int TRANSACTION_subscribePnoScanEvents = 6;
        static final int TRANSACTION_subscribeScanEvents = 4;
        static final int TRANSACTION_unsubscribePnoScanEvents = 7;
        static final int TRANSACTION_unsubscribeScanEvents = 5;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWifiScannerImpl asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IWifiScannerImpl)) {
                return (IWifiScannerImpl) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            SingleScanSettings singleScanSettingsCreateFromParcel;
            PnoSettings pnoSettingsCreateFromParcel;
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    NativeScanResult[] scanResults = getScanResults();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(scanResults, 1);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    NativeScanResult[] pnoScanResults = getPnoScanResults();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(pnoScanResults, 1);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        singleScanSettingsCreateFromParcel = SingleScanSettings.CREATOR.createFromParcel(parcel);
                    } else {
                        singleScanSettingsCreateFromParcel = null;
                    }
                    boolean zScan = scan(singleScanSettingsCreateFromParcel);
                    parcel2.writeNoException();
                    parcel2.writeInt(zScan ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    subscribeScanEvents(IScanEvent.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unsubscribeScanEvents();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    subscribePnoScanEvents(IPnoScanEvent.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    unsubscribePnoScanEvents();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        pnoSettingsCreateFromParcel = PnoSettings.CREATOR.createFromParcel(parcel);
                    } else {
                        pnoSettingsCreateFromParcel = null;
                    }
                    boolean zStartPnoScan = startPnoScan(pnoSettingsCreateFromParcel);
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartPnoScan ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopPnoScan = stopPnoScan();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopPnoScan ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    abortScan();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IWifiScannerImpl {
            public static IWifiScannerImpl sDefaultImpl;
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

            @Override // android.net.wifi.IWifiScannerImpl
            public NativeScanResult[] getScanResults() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getScanResults();
                    }
                    _reply.readException();
                    NativeScanResult[] _result = (NativeScanResult[]) _reply.createTypedArray(NativeScanResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public NativeScanResult[] getPnoScanResults() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPnoScanResults();
                    }
                    _reply.readException();
                    NativeScanResult[] _result = (NativeScanResult[]) _reply.createTypedArray(NativeScanResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public boolean scan(SingleScanSettings scanSettings) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (scanSettings != null) {
                        _data.writeInt(1);
                        scanSettings.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().scan(scanSettings);
                    }
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public void subscribeScanEvents(IScanEvent handler) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(handler != null ? handler.asBinder() : null);
                    boolean _status = this.mRemote.transact(4, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().subscribeScanEvents(handler);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public void unsubscribeScanEvents() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(5, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unsubscribeScanEvents();
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public void subscribePnoScanEvents(IPnoScanEvent handler) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(handler != null ? handler.asBinder() : null);
                    boolean _status = this.mRemote.transact(6, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().subscribePnoScanEvents(handler);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public void unsubscribePnoScanEvents() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(7, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unsubscribePnoScanEvents();
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public boolean startPnoScan(PnoSettings pnoSettings) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pnoSettings != null) {
                        _data.writeInt(1);
                        pnoSettings.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(8, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startPnoScan(pnoSettings);
                    }
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public boolean stopPnoScan() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(9, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().stopPnoScan();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWifiScannerImpl
            public void abortScan() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(10, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().abortScan();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWifiScannerImpl impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IWifiScannerImpl getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
