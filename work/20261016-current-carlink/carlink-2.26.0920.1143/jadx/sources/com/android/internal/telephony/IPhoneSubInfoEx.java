package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes3.dex */
public interface IPhoneSubInfoEx extends IInterface {

    public static abstract class Stub extends Binder implements IPhoneSubInfoEx {
        private static final String DESCRIPTOR = "com.android.internal.telephony.IPhoneSubInfoEx";
        static final int TRANSACTION_getIsimDomainForSubscriber = 2;
        static final int TRANSACTION_getIsimImpiForSubscriber = 1;
        static final int TRANSACTION_getIsimImpuForSubscriber = 3;
        static final int TRANSACTION_getIsimIstForSubscriber = 4;
        static final int TRANSACTION_getIsimPcscfForSubscriber = 5;

        public static class Proxy implements IPhoneSubInfoEx {
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

            @Override // com.android.internal.telephony.IPhoneSubInfoEx
            public String getIsimDomainForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.IPhoneSubInfoEx
            public String getIsimImpiForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.IPhoneSubInfoEx
            public String[] getIsimImpuForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.IPhoneSubInfoEx
            public String getIsimIstForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.IPhoneSubInfoEx
            public String[] getIsimPcscfForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPhoneSubInfoEx asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPhoneSubInfoEx)) ? new Proxy(iBinder) : (IPhoneSubInfoEx) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                String isimImpiForSubscriber = getIsimImpiForSubscriber(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(isimImpiForSubscriber);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String isimDomainForSubscriber = getIsimDomainForSubscriber(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(isimDomainForSubscriber);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                String[] isimImpuForSubscriber = getIsimImpuForSubscriber(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeStringArray(isimImpuForSubscriber);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                String isimIstForSubscriber = getIsimIstForSubscriber(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(isimIstForSubscriber);
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
            String[] isimPcscfForSubscriber = getIsimPcscfForSubscriber(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStringArray(isimPcscfForSubscriber);
            return true;
        }
    }

    String getIsimDomainForSubscriber(int i2);

    String getIsimImpiForSubscriber(int i2);

    String[] getIsimImpuForSubscriber(int i2);

    String getIsimIstForSubscriber(int i2);

    String[] getIsimPcscfForSubscriber(int i2);
}
