package android.os;

/* JADX INFO: loaded from: classes.dex */
public interface IProcessInfoService extends IInterface {

    public static abstract class Stub extends Binder implements IProcessInfoService {
        private static final String DESCRIPTOR = "android.os.IProcessInfoService";
        static final int TRANSACTION_getProcessStatesAndOomScoresFromPids = 2;
        static final int TRANSACTION_getProcessStatesFromPids = 1;

        public static class Proxy implements IProcessInfoService {
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

            @Override // android.os.IProcessInfoService
            public void getProcessStatesAndOomScoresFromPids(int[] iArr, int[] iArr2, int[] iArr3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    if (iArr2 == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(iArr2.length);
                    }
                    if (iArr3 == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(iArr3.length);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.readIntArray(iArr2);
                    parcelObtain2.readIntArray(iArr3);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IProcessInfoService
            public void getProcessStatesFromPids(int[] iArr, int[] iArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    if (iArr2 == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(iArr2.length);
                    }
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.readIntArray(iArr2);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IProcessInfoService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IProcessInfoService)) ? new Proxy(iBinder) : (IProcessInfoService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            int[] iArr;
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                int[] iArrCreateIntArray = parcel.createIntArray();
                int i4 = parcel.readInt();
                iArr = i4 >= 0 ? new int[i4] : null;
                getProcessStatesFromPids(iArrCreateIntArray, iArr);
                parcel2.writeNoException();
                parcel2.writeIntArray(iArr);
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
            int[] iArrCreateIntArray2 = parcel.createIntArray();
            int i5 = parcel.readInt();
            int[] iArr2 = i5 < 0 ? null : new int[i5];
            int i6 = parcel.readInt();
            iArr = i6 >= 0 ? new int[i6] : null;
            getProcessStatesAndOomScoresFromPids(iArrCreateIntArray2, iArr2, iArr);
            parcel2.writeNoException();
            parcel2.writeIntArray(iArr2);
            parcel2.writeIntArray(iArr);
            return true;
        }
    }

    void getProcessStatesAndOomScoresFromPids(int[] iArr, int[] iArr2, int[] iArr3);

    void getProcessStatesFromPids(int[] iArr, int[] iArr2);
}
