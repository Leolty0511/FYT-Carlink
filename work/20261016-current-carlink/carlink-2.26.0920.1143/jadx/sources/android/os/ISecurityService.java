package android.os;

/* JADX INFO: loaded from: classes.dex */
public interface ISecurityService extends IInterface {

    public static abstract class Stub extends Binder implements ISecurityService {
        private static final String DESCRIPTOR = "android.os.ISecurityService";
        static final int TRANSACTION_getKeyInterfaces = 2;
        static final int TRANSACTION_getSysUids = 4;
        static final int TRANSACTION_isKeyService = 1;
        static final int TRANSACTION_judge = 3;

        public static class Proxy implements ISecurityService {
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

            @Override // android.os.ISecurityService
            public boolean getKeyInterfaces(String str, int[] iArr, int[] iArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (iArr == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(iArr.length);
                    }
                    if (iArr2 == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(iArr2.length);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.readIntArray(iArr);
                    parcelObtain2.readIntArray(iArr2);
                    return z2;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.ISecurityService
            public int[] getSysUids() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.ISecurityService
            public boolean isKeyService(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.ISecurityService
            public int judge(int i2, String str, int i3, int i4, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISecurityService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISecurityService)) ? new Proxy(iBinder) : (ISecurityService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zIsKeyService = isKeyService(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zIsKeyService ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String string = parcel.readString();
                int i4 = parcel.readInt();
                int[] iArr = i4 < 0 ? null : new int[i4];
                int i5 = parcel.readInt();
                int[] iArr2 = i5 >= 0 ? new int[i5] : null;
                boolean keyInterfaces = getKeyInterfaces(string, iArr, iArr2);
                parcel2.writeNoException();
                parcel2.writeInt(keyInterfaces ? 1 : 0);
                parcel2.writeIntArray(iArr);
                parcel2.writeIntArray(iArr2);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                int iJudge = judge(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iJudge);
                return true;
            }
            if (i2 != 4) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            int[] sysUids = getSysUids();
            parcel2.writeNoException();
            parcel2.writeIntArray(sysUids);
            return true;
        }
    }

    boolean getKeyInterfaces(String str, int[] iArr, int[] iArr2);

    int[] getSysUids();

    boolean isKeyService(String str);

    int judge(int i2, String str, int i3, int i4, String str2);
}
