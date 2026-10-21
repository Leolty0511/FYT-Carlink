package android.service.euicc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface IGetDownloadableSubscriptionMetadataCallback extends IInterface {

    public static abstract class Stub extends Binder implements IGetDownloadableSubscriptionMetadataCallback {
        private static final String DESCRIPTOR = "android.service.euicc.IGetDownloadableSubscriptionMetadataCallback";
        static final int TRANSACTION_onComplete = 1;

        public static class Proxy implements IGetDownloadableSubscriptionMetadataCallback {
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

            @Override // android.service.euicc.IGetDownloadableSubscriptionMetadataCallback
            public void onComplete(GetDownloadableSubscriptionMetadataResult getDownloadableSubscriptionMetadataResult) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (getDownloadableSubscriptionMetadataResult != null) {
                        parcelObtain.writeInt(1);
                        getDownloadableSubscriptionMetadataResult.writeToParcel(parcelObtain, 0);
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

        public static IGetDownloadableSubscriptionMetadataCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGetDownloadableSubscriptionMetadataCallback)) ? new Proxy(iBinder) : (IGetDownloadableSubscriptionMetadataCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onComplete(parcel.readInt() != 0 ? GetDownloadableSubscriptionMetadataResult.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onComplete(GetDownloadableSubscriptionMetadataResult getDownloadableSubscriptionMetadataResult);
}
