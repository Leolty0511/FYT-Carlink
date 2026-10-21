package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes3.dex */
public interface IMmsNetwork extends IInterface {

    public static abstract class Stub extends Binder implements IMmsNetwork {
        private static final String DESCRIPTOR = "com.android.internal.telephony.IMmsNetwork";
        static final int TRANSACTION_acquireNetwork = 1;
        static final int TRANSACTION_releaseNetwork = 2;

        public static class Proxy implements IMmsNetwork {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.internal.telephony.IMmsNetwork
            public boolean acquireNetwork(IBinder iBinder, IBinder iBinder2, int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iBinder2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.telephony.IMmsNetwork
            public boolean releaseNetwork(IBinder iBinder, IBinder iBinder2, int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iBinder2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
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

        public static IMmsNetwork asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMmsNetwork)) ? new Proxy(iBinder) : (IMmsNetwork) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zAcquireNetwork = acquireNetwork(parcel.readStrongBinder(), parcel.readStrongBinder(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zAcquireNetwork ? 1 : 0);
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zReleaseNetwork = releaseNetwork(parcel.readStrongBinder(), parcel.readStrongBinder(), parcel.readInt(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(zReleaseNetwork ? 1 : 0);
            return true;
        }
    }

    boolean acquireNetwork(IBinder iBinder, IBinder iBinder2, int i2, String str);

    boolean releaseNetwork(IBinder iBinder, IBinder iBinder2, int i2, String str);
}
