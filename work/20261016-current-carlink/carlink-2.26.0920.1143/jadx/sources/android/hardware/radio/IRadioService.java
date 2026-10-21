package android.hardware.radio;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IRadioService extends IInterface {

    public static abstract class Stub extends Binder implements IRadioService {
        private static final String DESCRIPTOR = "android.hardware.radio.IRadioService";
        static final int TRANSACTION_listModules = 1;
        static final int TRANSACTION_openTuner = 2;

        public static class Proxy implements IRadioService {
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

            @Override // android.hardware.radio.IRadioService
            public List<RadioManager.ModuleProperties> listModules() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(RadioManager.ModuleProperties.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.radio.IRadioService
            public ITuner openTuner(int i2, RadioManager.BandConfig bandConfig, boolean z2, ITunerCallback iTunerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    int i3 = 1;
                    if (bandConfig != null) {
                        parcelObtain.writeInt(1);
                        bandConfig.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iTunerCallback != null ? iTunerCallback.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return ITuner.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRadioService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRadioService)) ? new Proxy(iBinder) : (IRadioService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                List<RadioManager.ModuleProperties> listListModules = listModules();
                parcel2.writeNoException();
                parcel2.writeTypedList(listListModules);
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
            ITuner iTunerOpenTuner = openTuner(parcel.readInt(), parcel.readInt() != 0 ? RadioManager.BandConfig.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, ITunerCallback.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iTunerOpenTuner != null ? iTunerOpenTuner.asBinder() : null);
            return true;
        }
    }

    List<RadioManager.ModuleProperties> listModules();

    ITuner openTuner(int i2, RadioManager.BandConfig bandConfig, boolean z2, ITunerCallback iTunerCallback);
}
