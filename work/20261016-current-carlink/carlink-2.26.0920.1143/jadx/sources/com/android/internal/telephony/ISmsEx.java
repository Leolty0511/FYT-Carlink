package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes3.dex */
public interface ISmsEx extends IInterface {

    public static abstract class Stub extends Binder implements ISmsEx {
        private static final String DESCRIPTOR = "com.android.internal.telephony.ISmsEx";
        static final int TRANSACTION_commonInterfaceForMessaging = 1;
        static final int TRANSACTION_copyMessageToIccEfForSubscriber = 2;
        static final int TRANSACTION_getSimCapacityForSubscriber = 3;
        static final int TRANSACTION_setCMMSForSubscriber = 4;
        static final int TRANSACTION_setPropertyForSubscriber = 5;

        public static class Proxy implements ISmsEx {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.telephony.ISmsEx
            public boolean commonInterfaceForMessaging(int i2, long j2, String str, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.readIntArray(iArr);
                    return z2;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISmsEx
            public int copyMessageToIccEfForSubscriber(int i2, String str, int i3, byte[] bArr, byte[] bArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.telephony.ISmsEx
            public String getSimCapacityForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISmsEx
            public void setCMMSForSubscriber(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISmsEx
            public void setPropertyForSubscriber(int i2, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
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

        public static ISmsEx asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISmsEx)) ? new Proxy(iBinder) : (ISmsEx) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                int i4 = parcel.readInt();
                long j2 = parcel.readLong();
                String string = parcel.readString();
                int[] iArrCreateIntArray = parcel.createIntArray();
                boolean zCommonInterfaceForMessaging = commonInterfaceForMessaging(i4, j2, string, iArrCreateIntArray);
                parcel2.writeNoException();
                parcel2.writeInt(zCommonInterfaceForMessaging ? 1 : 0);
                parcel2.writeIntArray(iArrCreateIntArray);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int iCopyMessageToIccEfForSubscriber = copyMessageToIccEfForSubscriber(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.createByteArray(), parcel.createByteArray());
                parcel2.writeNoException();
                parcel2.writeInt(iCopyMessageToIccEfForSubscriber);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                String simCapacityForSubscriber = getSimCapacityForSubscriber(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(simCapacityForSubscriber);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                setCMMSForSubscriber(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
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
            setPropertyForSubscriber(parcel.readInt(), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    boolean commonInterfaceForMessaging(int i2, long j2, String str, int[] iArr);

    int copyMessageToIccEfForSubscriber(int i2, String str, int i3, byte[] bArr, byte[] bArr2);

    String getSimCapacityForSubscriber(int i2);

    void setCMMSForSubscriber(int i2, int i3);

    void setPropertyForSubscriber(int i2, String str, String str2);
}
