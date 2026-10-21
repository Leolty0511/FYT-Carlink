package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.PersistableBundle;

/* JADX INFO: loaded from: classes3.dex */
public interface ICarrierConfigLoaderEx extends IInterface {

    public static abstract class Stub extends Binder implements ICarrierConfigLoaderEx {
        private static final String DESCRIPTOR = "com.android.internal.telephony.ICarrierConfigLoaderEx";
        static final int TRANSACTION_getConfigForPhoneId = 4;
        static final int TRANSACTION_getConfigForSubId = 1;
        static final int TRANSACTION_getDefaultCarrierServicePackageName = 5;
        static final int TRANSACTION_notifyConfigChangedForSubId = 2;
        static final int TRANSACTION_updateConfigForPhoneId = 3;

        public static class Proxy implements ICarrierConfigLoaderEx {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.telephony.ICarrierConfigLoaderEx
            public PersistableBundle getConfigForPhoneId(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PersistableBundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ICarrierConfigLoaderEx
            public PersistableBundle getConfigForSubId(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PersistableBundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ICarrierConfigLoaderEx
            public String getDefaultCarrierServicePackageName() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.telephony.ICarrierConfigLoaderEx
            public void notifyConfigChangedForSubId(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ICarrierConfigLoaderEx
            public void updateConfigForPhoneId(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarrierConfigLoaderEx asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICarrierConfigLoaderEx)) ? new Proxy(iBinder) : (ICarrierConfigLoaderEx) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                PersistableBundle configForSubId = getConfigForSubId(parcel.readInt());
                parcel2.writeNoException();
                if (configForSubId != null) {
                    parcel2.writeInt(1);
                    configForSubId.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                notifyConfigChangedForSubId(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                updateConfigForPhoneId(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                PersistableBundle configForPhoneId = getConfigForPhoneId(parcel.readInt());
                parcel2.writeNoException();
                if (configForPhoneId != null) {
                    parcel2.writeInt(1);
                    configForPhoneId.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            String defaultCarrierServicePackageName = getDefaultCarrierServicePackageName();
            parcel2.writeNoException();
            parcel2.writeString(defaultCarrierServicePackageName);
            return true;
        }
    }

    PersistableBundle getConfigForPhoneId(int i2);

    PersistableBundle getConfigForSubId(int i2);

    String getDefaultCarrierServicePackageName();

    void notifyConfigChangedForSubId(int i2);

    void updateConfigForPhoneId(int i2, String str);
}
