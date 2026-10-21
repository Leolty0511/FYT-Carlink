package com.android.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface IVoWifiUT extends IInterface {

    public static abstract class Stub extends Binder implements IVoWifiUT {
        private static final String DESCRIPTOR = "com.android.ims.internal.IVoWifiUT";
        static final int TRANSACTION_queryCallBarring = 4;
        static final int TRANSACTION_queryCallForward = 5;
        static final int TRANSACTION_queryCallWaiting = 6;
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_unregisterCallback = 2;
        static final int TRANSACTION_updateCLIR = 10;
        static final int TRANSACTION_updateCallBarring = 7;
        static final int TRANSACTION_updateCallForward = 8;
        static final int TRANSACTION_updateCallWaiting = 9;
        static final int TRANSACTION_updateIPAddr = 3;

        public static class Proxy implements IVoWifiUT {
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

            @Override // com.android.ims.internal.IVoWifiUT
            public int queryCallBarring(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public int queryCallForward() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public int queryCallWaiting() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public void registerCallback(IVoWifiUTCallback iVoWifiUTCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVoWifiUTCallback != null ? iVoWifiUTCallback.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public void unregisterCallback(IVoWifiUTCallback iVoWifiUTCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVoWifiUTCallback != null ? iVoWifiUTCallback.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public int updateCLIR(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public int updateCallBarring(int i2, boolean z2, String[] strArr, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public int updateCallForward(int i2, int i3, String str, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public int updateCallWaiting(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiUT
            public boolean updateIPAddr(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVoWifiUT asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVoWifiUT)) ? new Proxy(iBinder) : (IVoWifiUT) iInterfaceQueryLocalInterface;
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
                    registerCallback(IVoWifiUTCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(IVoWifiUTCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUpdateIPAddr = updateIPAddr(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateIPAddr ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iQueryCallBarring = queryCallBarring(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iQueryCallBarring);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iQueryCallForward = queryCallForward();
                    parcel2.writeNoException();
                    parcel2.writeInt(iQueryCallForward);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iQueryCallWaiting = queryCallWaiting();
                    parcel2.writeNoException();
                    parcel2.writeInt(iQueryCallWaiting);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUpdateCallBarring = updateCallBarring(parcel.readInt(), parcel.readInt() != 0, parcel.createStringArray(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iUpdateCallBarring);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUpdateCallForward = updateCallForward(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iUpdateCallForward);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUpdateCallWaiting = updateCallWaiting(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iUpdateCallWaiting);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUpdateCLIR = updateCLIR(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iUpdateCLIR);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int queryCallBarring(int i2);

    int queryCallForward();

    int queryCallWaiting();

    void registerCallback(IVoWifiUTCallback iVoWifiUTCallback);

    void unregisterCallback(IVoWifiUTCallback iVoWifiUTCallback);

    int updateCLIR(boolean z2);

    int updateCallBarring(int i2, boolean z2, String[] strArr, int i3);

    int updateCallForward(int i2, int i3, String str, int i4, int i5);

    int updateCallWaiting(boolean z2);

    boolean updateIPAddr(String str, String str2);
}
