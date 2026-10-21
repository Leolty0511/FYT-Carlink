package android.os;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IPowerManagerEx extends IInterface {

    public static abstract class Stub extends Binder implements IPowerManagerEx {
        private static final String DESCRIPTOR = "android.os.IPowerManagerEx";
        static final int TRANSACTION_addAllowedAppInUltraSavingMode = 31;
        static final int TRANSACTION_delAllowedAppInUltraSavingMode = 32;
        static final int TRANSACTION_forcePowerSaveMode = 8;
        static final int TRANSACTION_getAllowedAppListInUltraSavingMode = 33;
        static final int TRANSACTION_getAppNumWithSpecificConfig = 30;
        static final int TRANSACTION_getAppPowerSaveConfig = 25;
        static final int TRANSACTION_getAppPowerSaveConfigWithType = 26;
        static final int TRANSACTION_getAutoLowPower_BattValue = 13;
        static final int TRANSACTION_getAutoLowPower_Enable = 11;
        static final int TRANSACTION_getAutoLowPower_ExitWithPower = 15;
        static final int TRANSACTION_getAutoLowPower_Mode = 9;
        static final int TRANSACTION_getPowerSaveMode = 5;
        static final int TRANSACTION_getPrePowerSaveMode = 6;
        static final int TRANSACTION_getSchedulePowerMode_EndTime = 23;
        static final int TRANSACTION_getSchedulePowerMode_StartTime = 21;
        static final int TRANSACTION_getSchedule_Enable = 17;
        static final int TRANSACTION_getSchedule_Mode = 19;
        static final int TRANSACTION_rebootAnimation = 2;
        static final int TRANSACTION_scheduleButtonLightTimeout = 3;
        static final int TRANSACTION_setAppPowerSaveConfig = 27;
        static final int TRANSACTION_setAppPowerSaveConfigListWithType = 29;
        static final int TRANSACTION_setAppPowerSaveConfigWithType = 28;
        static final int TRANSACTION_setAutoLowPower_BattValue = 14;
        static final int TRANSACTION_setAutoLowPower_Enable = 12;
        static final int TRANSACTION_setAutoLowPower_ExitWithPower = 16;
        static final int TRANSACTION_setAutoLowPower_Mode = 10;
        static final int TRANSACTION_setEventUserActivityNeeded = 4;
        static final int TRANSACTION_setPowerSaveMode = 7;
        static final int TRANSACTION_setSchedulePowerMode_EndTime = 24;
        static final int TRANSACTION_setSchedulePowerMode_StartTime = 22;
        static final int TRANSACTION_setSchedule_Enable = 18;
        static final int TRANSACTION_setSchedule_Mode = 20;
        static final int TRANSACTION_shutdownForAlarm = 1;

        public static class Proxy implements IPowerManagerEx {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IPowerManagerEx
            public boolean addAllowedAppInUltraSavingMode(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
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

            @Override // android.os.IPowerManagerEx
            public boolean delAllowedAppInUltraSavingMode(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean forcePowerSaveMode(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public List<String> getAllowedAppListInUltraSavingMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getAppNumWithSpecificConfig(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public AppPowerSaveConfig getAppPowerSaveConfig(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AppPowerSaveConfig.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getAppPowerSaveConfigWithType(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getAutoLowPower_BattValue() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean getAutoLowPower_Enable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean getAutoLowPower_ExitWithPower() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getAutoLowPower_Mode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
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

            @Override // android.os.IPowerManagerEx
            public int getPowerSaveMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getPrePowerSaveMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getSchedulePowerMode_EndTime() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getSchedulePowerMode_StartTime() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean getSchedule_Enable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public int getSchedule_Mode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public void rebootAnimation() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public void scheduleButtonLightTimeout(long j2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setAppPowerSaveConfig(String str, AppPowerSaveConfig appPowerSaveConfig) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (appPowerSaveConfig != null) {
                        parcelObtain.writeInt(1);
                        appPowerSaveConfig.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setAppPowerSaveConfigListWithType(List<String> list, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setAppPowerSaveConfigWithType(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setAutoLowPower_BattValue(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setAutoLowPower_Enable(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setAutoLowPower_ExitWithPower(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setAutoLowPower_Mode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public void setEventUserActivityNeeded(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setPowerSaveMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setSchedulePowerMode_EndTime(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setSchedulePowerMode_StartTime(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setSchedule_Enable(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public boolean setSchedule_Mode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IPowerManagerEx
            public void shutdownForAlarm(boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
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

        public static IPowerManagerEx asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPowerManagerEx)) ? new Proxy(iBinder) : (IPowerManagerEx) iInterfaceQueryLocalInterface;
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
                    shutdownForAlarm(parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    rebootAnimation();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    scheduleButtonLightTimeout(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEventUserActivityNeeded(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int powerSaveMode = getPowerSaveMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(powerSaveMode);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int prePowerSaveMode = getPrePowerSaveMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(prePowerSaveMode);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean powerSaveMode2 = setPowerSaveMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(powerSaveMode2 ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zForcePowerSaveMode = forcePowerSaveMode(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zForcePowerSaveMode ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int autoLowPower_Mode = getAutoLowPower_Mode();
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_Mode);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean autoLowPower_Mode2 = setAutoLowPower_Mode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_Mode2 ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean autoLowPower_Enable = getAutoLowPower_Enable();
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_Enable ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean autoLowPower_Enable2 = setAutoLowPower_Enable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_Enable2 ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int autoLowPower_BattValue = getAutoLowPower_BattValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_BattValue);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean autoLowPower_BattValue2 = setAutoLowPower_BattValue(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_BattValue2 ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean autoLowPower_ExitWithPower = getAutoLowPower_ExitWithPower();
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_ExitWithPower ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean autoLowPower_ExitWithPower2 = setAutoLowPower_ExitWithPower(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(autoLowPower_ExitWithPower2 ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean schedule_Enable = getSchedule_Enable();
                    parcel2.writeNoException();
                    parcel2.writeInt(schedule_Enable ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean schedule_Enable2 = setSchedule_Enable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(schedule_Enable2 ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int schedule_Mode = getSchedule_Mode();
                    parcel2.writeNoException();
                    parcel2.writeInt(schedule_Mode);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean schedule_Mode2 = setSchedule_Mode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(schedule_Mode2 ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int schedulePowerMode_StartTime = getSchedulePowerMode_StartTime();
                    parcel2.writeNoException();
                    parcel2.writeInt(schedulePowerMode_StartTime);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean schedulePowerMode_StartTime2 = setSchedulePowerMode_StartTime(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(schedulePowerMode_StartTime2 ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int schedulePowerMode_EndTime = getSchedulePowerMode_EndTime();
                    parcel2.writeNoException();
                    parcel2.writeInt(schedulePowerMode_EndTime);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean schedulePowerMode_EndTime2 = setSchedulePowerMode_EndTime(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(schedulePowerMode_EndTime2 ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    AppPowerSaveConfig appPowerSaveConfig = getAppPowerSaveConfig(parcel.readString());
                    parcel2.writeNoException();
                    if (appPowerSaveConfig != null) {
                        parcel2.writeInt(1);
                        appPowerSaveConfig.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    int appPowerSaveConfigWithType = getAppPowerSaveConfigWithType(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(appPowerSaveConfigWithType);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean appPowerSaveConfig2 = setAppPowerSaveConfig(parcel.readString(), parcel.readInt() != 0 ? AppPowerSaveConfig.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(appPowerSaveConfig2 ? 1 : 0);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean appPowerSaveConfigWithType2 = setAppPowerSaveConfigWithType(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(appPowerSaveConfigWithType2 ? 1 : 0);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean appPowerSaveConfigListWithType = setAppPowerSaveConfigListWithType(parcel.createStringArrayList(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(appPowerSaveConfigListWithType ? 1 : 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    int appNumWithSpecificConfig = getAppNumWithSpecificConfig(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(appNumWithSpecificConfig);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddAllowedAppInUltraSavingMode = addAllowedAppInUltraSavingMode(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddAllowedAppInUltraSavingMode ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDelAllowedAppInUltraSavingMode = delAllowedAppInUltraSavingMode(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDelAllowedAppInUltraSavingMode ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> allowedAppListInUltraSavingMode = getAllowedAppListInUltraSavingMode();
                    parcel2.writeNoException();
                    parcel2.writeStringList(allowedAppListInUltraSavingMode);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    boolean addAllowedAppInUltraSavingMode(String str);

    boolean delAllowedAppInUltraSavingMode(String str);

    boolean forcePowerSaveMode(boolean z2);

    List<String> getAllowedAppListInUltraSavingMode();

    int getAppNumWithSpecificConfig(int i2, int i3);

    AppPowerSaveConfig getAppPowerSaveConfig(String str);

    int getAppPowerSaveConfigWithType(String str, int i2);

    int getAutoLowPower_BattValue();

    boolean getAutoLowPower_Enable();

    boolean getAutoLowPower_ExitWithPower();

    int getAutoLowPower_Mode();

    int getPowerSaveMode();

    int getPrePowerSaveMode();

    int getSchedulePowerMode_EndTime();

    int getSchedulePowerMode_StartTime();

    boolean getSchedule_Enable();

    int getSchedule_Mode();

    void rebootAnimation();

    void scheduleButtonLightTimeout(long j2);

    boolean setAppPowerSaveConfig(String str, AppPowerSaveConfig appPowerSaveConfig);

    boolean setAppPowerSaveConfigListWithType(List<String> list, int i2, int i3);

    boolean setAppPowerSaveConfigWithType(String str, int i2, int i3);

    boolean setAutoLowPower_BattValue(int i2);

    boolean setAutoLowPower_Enable(boolean z2);

    boolean setAutoLowPower_ExitWithPower(boolean z2);

    boolean setAutoLowPower_Mode(int i2);

    void setEventUserActivityNeeded(boolean z2);

    boolean setPowerSaveMode(int i2);

    boolean setSchedulePowerMode_EndTime(int i2, int i3);

    boolean setSchedulePowerMode_StartTime(int i2, int i3);

    boolean setSchedule_Enable(boolean z2);

    boolean setSchedule_Mode(int i2);

    void shutdownForAlarm(boolean z2, boolean z3);
}
