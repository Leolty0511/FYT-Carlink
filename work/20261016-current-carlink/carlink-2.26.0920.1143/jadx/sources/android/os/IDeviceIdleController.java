package android.os;

/* JADX INFO: loaded from: classes.dex */
public interface IDeviceIdleController extends IInterface {

    public static abstract class Stub extends Binder implements IDeviceIdleController {
        private static final String DESCRIPTOR = "android.os.IDeviceIdleController";
        static final int TRANSACTION_addPowerSaveTempWhitelistApp = 14;
        static final int TRANSACTION_addPowerSaveTempWhitelistAppForMms = 15;
        static final int TRANSACTION_addPowerSaveTempWhitelistAppForSms = 16;
        static final int TRANSACTION_addPowerSaveWhitelistApp = 1;
        static final int TRANSACTION_exitIdle = 17;
        static final int TRANSACTION_getAppIdTempWhitelist = 11;
        static final int TRANSACTION_getAppIdUserWhitelist = 10;
        static final int TRANSACTION_getAppIdWhitelist = 9;
        static final int TRANSACTION_getAppIdWhitelistExceptIdle = 8;
        static final int TRANSACTION_getFullPowerWhitelist = 7;
        static final int TRANSACTION_getFullPowerWhitelistExceptIdle = 6;
        static final int TRANSACTION_getSystemPowerWhitelist = 4;
        static final int TRANSACTION_getSystemPowerWhitelistExceptIdle = 3;
        static final int TRANSACTION_getUserPowerWhitelist = 5;
        static final int TRANSACTION_isPowerSaveWhitelistApp = 13;
        static final int TRANSACTION_isPowerSaveWhitelistExceptIdleApp = 12;
        static final int TRANSACTION_registerMaintenanceActivityListener = 18;
        static final int TRANSACTION_removePowerSaveWhitelistApp = 2;
        static final int TRANSACTION_unregisterMaintenanceActivityListener = 19;

        public static class Proxy implements IDeviceIdleController {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IDeviceIdleController
            public void addPowerSaveTempWhitelistApp(String str, long j2, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public long addPowerSaveTempWhitelistAppForMms(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public long addPowerSaveTempWhitelistAppForSms(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public void addPowerSaveWhitelistApp(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.os.IDeviceIdleController
            public void exitIdle(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public int[] getAppIdTempWhitelist() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public int[] getAppIdUserWhitelist() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public int[] getAppIdWhitelist() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public int[] getAppIdWhitelistExceptIdle() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public String[] getFullPowerWhitelist() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public String[] getFullPowerWhitelistExceptIdle() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.os.IDeviceIdleController
            public String[] getSystemPowerWhitelist() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public String[] getSystemPowerWhitelistExceptIdle() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public String[] getUserPowerWhitelist() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public boolean isPowerSaveWhitelistApp(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public boolean isPowerSaveWhitelistExceptIdleApp(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public boolean registerMaintenanceActivityListener(IMaintenanceActivityListener iMaintenanceActivityListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMaintenanceActivityListener != null ? iMaintenanceActivityListener.asBinder() : null);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public void removePowerSaveWhitelistApp(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IDeviceIdleController
            public void unregisterMaintenanceActivityListener(IMaintenanceActivityListener iMaintenanceActivityListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMaintenanceActivityListener != null ? iMaintenanceActivityListener.asBinder() : null);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
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

        public static IDeviceIdleController asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDeviceIdleController)) ? new Proxy(iBinder) : (IDeviceIdleController) iInterfaceQueryLocalInterface;
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
                    addPowerSaveWhitelistApp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    removePowerSaveWhitelistApp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] systemPowerWhitelistExceptIdle = getSystemPowerWhitelistExceptIdle();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(systemPowerWhitelistExceptIdle);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] systemPowerWhitelist = getSystemPowerWhitelist();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(systemPowerWhitelist);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] userPowerWhitelist = getUserPowerWhitelist();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(userPowerWhitelist);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] fullPowerWhitelistExceptIdle = getFullPowerWhitelistExceptIdle();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(fullPowerWhitelistExceptIdle);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] fullPowerWhitelist = getFullPowerWhitelist();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(fullPowerWhitelist);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] appIdWhitelistExceptIdle = getAppIdWhitelistExceptIdle();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(appIdWhitelistExceptIdle);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] appIdWhitelist = getAppIdWhitelist();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(appIdWhitelist);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] appIdUserWhitelist = getAppIdUserWhitelist();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(appIdUserWhitelist);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] appIdTempWhitelist = getAppIdTempWhitelist();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(appIdTempWhitelist);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPowerSaveWhitelistExceptIdleApp = isPowerSaveWhitelistExceptIdleApp(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPowerSaveWhitelistExceptIdleApp ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPowerSaveWhitelistApp = isPowerSaveWhitelistApp(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPowerSaveWhitelistApp ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPowerSaveTempWhitelistApp(parcel.readString(), parcel.readLong(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    long jAddPowerSaveTempWhitelistAppForMms = addPowerSaveTempWhitelistAppForMms(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(jAddPowerSaveTempWhitelistAppForMms);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    long jAddPowerSaveTempWhitelistAppForSms = addPowerSaveTempWhitelistAppForSms(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(jAddPowerSaveTempWhitelistAppForSms);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    exitIdle(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterMaintenanceActivityListener = registerMaintenanceActivityListener(IMaintenanceActivityListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterMaintenanceActivityListener ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMaintenanceActivityListener(IMaintenanceActivityListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addPowerSaveTempWhitelistApp(String str, long j2, int i2, String str2);

    long addPowerSaveTempWhitelistAppForMms(String str, int i2, String str2);

    long addPowerSaveTempWhitelistAppForSms(String str, int i2, String str2);

    void addPowerSaveWhitelistApp(String str);

    void exitIdle(String str);

    int[] getAppIdTempWhitelist();

    int[] getAppIdUserWhitelist();

    int[] getAppIdWhitelist();

    int[] getAppIdWhitelistExceptIdle();

    String[] getFullPowerWhitelist();

    String[] getFullPowerWhitelistExceptIdle();

    String[] getSystemPowerWhitelist();

    String[] getSystemPowerWhitelistExceptIdle();

    String[] getUserPowerWhitelist();

    boolean isPowerSaveWhitelistApp(String str);

    boolean isPowerSaveWhitelistExceptIdleApp(String str);

    boolean registerMaintenanceActivityListener(IMaintenanceActivityListener iMaintenanceActivityListener);

    void removePowerSaveWhitelistApp(String str);

    void unregisterMaintenanceActivityListener(IMaintenanceActivityListener iMaintenanceActivityListener);
}
