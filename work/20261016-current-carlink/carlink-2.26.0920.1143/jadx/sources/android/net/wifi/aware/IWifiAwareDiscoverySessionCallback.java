package android.net.wifi.aware;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IWifiAwareDiscoverySessionCallback extends IInterface {

    public static abstract class Stub extends Binder implements IWifiAwareDiscoverySessionCallback {
        private static final String DESCRIPTOR = "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback";
        static final int TRANSACTION_onMatch = 5;
        static final int TRANSACTION_onMessageReceived = 8;
        static final int TRANSACTION_onMessageSendFail = 7;
        static final int TRANSACTION_onMessageSendSuccess = 6;
        static final int TRANSACTION_onSessionConfigFail = 3;
        static final int TRANSACTION_onSessionConfigSuccess = 2;
        static final int TRANSACTION_onSessionStarted = 1;
        static final int TRANSACTION_onSessionTerminated = 4;

        public static class Proxy implements IWifiAwareDiscoverySessionCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onMatch(int i2, byte[] bArr, byte[] bArr2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onMessageReceived(int i2, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onMessageSendFail(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onMessageSendSuccess(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onSessionConfigFail(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onSessionConfigSuccess() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onSessionStarted(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
            public void onSessionTerminated(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWifiAwareDiscoverySessionCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IWifiAwareDiscoverySessionCallback)) ? new Proxy(iBinder) : (IWifiAwareDiscoverySessionCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSessionStarted(parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSessionConfigSuccess();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSessionConfigFail(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSessionTerminated(parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMatch(parcel.readInt(), parcel.createByteArray(), parcel.createByteArray());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMessageSendSuccess(parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMessageSendFail(parcel.readInt(), parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMessageReceived(parcel.readInt(), parcel.createByteArray());
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void onMatch(int i2, byte[] bArr, byte[] bArr2);

    void onMessageReceived(int i2, byte[] bArr);

    void onMessageSendFail(int i2, int i3);

    void onMessageSendSuccess(int i2);

    void onSessionConfigFail(int i2);

    void onSessionConfigSuccess();

    void onSessionStarted(int i2);

    void onSessionTerminated(int i2);
}
