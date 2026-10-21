package android.service.euicc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface IGetEuiccProfileInfoListCallback extends IInterface {

    public static abstract class Stub extends Binder implements IGetEuiccProfileInfoListCallback {
        private static final String DESCRIPTOR = "android.service.euicc.IGetEuiccProfileInfoListCallback";
        static final int TRANSACTION_onComplete = 1;

        public static class Proxy implements IGetEuiccProfileInfoListCallback {
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

            @Override // android.service.euicc.IGetEuiccProfileInfoListCallback
            public void onComplete(GetEuiccProfileInfoListResult getEuiccProfileInfoListResult) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (getEuiccProfileInfoListResult != null) {
                        parcelObtain.writeInt(1);
                        getEuiccProfileInfoListResult.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGetEuiccProfileInfoListCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGetEuiccProfileInfoListCallback)) ? new Proxy(iBinder) : (IGetEuiccProfileInfoListCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onComplete(parcel.readInt() != 0 ? GetEuiccProfileInfoListResult.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onComplete(GetEuiccProfileInfoListResult getEuiccProfileInfoListResult);
}
