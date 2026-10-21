package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.WorkSource;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IPowerGuru extends IInterface {

    public static abstract class Stub extends Binder implements IPowerGuru {
        private static final String DESCRIPTOR = "android.app.IPowerGuru";
        static final int TRANSACTION_addConstrainedListAppBySystem = 9;
        static final int TRANSACTION_addWhiteAppfromList = 8;
        static final int TRANSACTION_delWhiteAppfromList = 6;
        static final int TRANSACTION_getBeatList = 4;
        static final int TRANSACTION_getOrignalAlignInterval = 11;
        static final int TRANSACTION_getWakeupAlarmCount = 15;
        static final int TRANSACTION_getWhiteCandicateList = 7;
        static final int TRANSACTION_getWhiteList = 5;
        static final int TRANSACTION_noteWakeupAlarm = 14;
        static final int TRANSACTION_notifyAlarm = 3;
        static final int TRANSACTION_notifyDozeStateChanged = 13;
        static final int TRANSACTION_notifyPowerguruAlarm = 2;
        static final int TRANSACTION_removeConstrainedListAppBySystem = 10;
        static final int TRANSACTION_setAlignInterval = 12;
        static final int TRANSACTION_testHello = 1;

        public static class Proxy implements IPowerGuru {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.app.IPowerGuru
            public boolean addConstrainedListAppBySystem(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public boolean addWhiteAppfromList(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
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

            @Override // android.app.IPowerGuru
            public boolean delWhiteAppfromList(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public List<PowerGuruAlarmInfo> getBeatList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PowerGuruAlarmInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.app.IPowerGuru
            public int getOrignalAlignInterval() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public int getWakeupAlarmCount(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public List<String> getWhiteCandicateList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public List<String> getWhiteList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public void noteWakeupAlarm(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public boolean notifyAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent, int i3, WorkSource workSource, AlarmManager.AlarmClockInfo alarmClockInfo, int i4, String str) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    parcelObtain.writeLong(j4);
                    parcelObtain.writeLong(j5);
                    parcelObtain.writeLong(j6);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    if (workSource != null) {
                        parcelObtain.writeInt(1);
                        workSource.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (alarmClockInfo != null) {
                        parcelObtain.writeInt(1);
                        alarmClockInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    try {
                        this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        boolean z2 = parcelObtain2.readInt() != 0;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return z2;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // android.app.IPowerGuru
            public void notifyDozeStateChanged() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public boolean notifyPowerguruAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    parcelObtain.writeLong(j4);
                    parcelObtain.writeLong(j5);
                    parcelObtain.writeLong(j6);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public boolean removeConstrainedListAppBySystem(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public boolean setAlignInterval(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IPowerGuru
            public void testHello() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
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

        public static IPowerGuru asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPowerGuru)) ? new Proxy(iBinder) : (IPowerGuru) iInterfaceQueryLocalInterface;
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
                    testHello();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNotifyPowerguruAlarm = notifyPowerguruAlarm(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zNotifyPowerguruAlarm ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNotifyAlarm = notifyAlarm(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0 ? WorkSource.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? AlarmManager.AlarmClockInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zNotifyAlarm ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<PowerGuruAlarmInfo> beatList = getBeatList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(beatList);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> whiteList = getWhiteList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(whiteList);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDelWhiteAppfromList = delWhiteAppfromList(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDelWhiteAppfromList ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> whiteCandicateList = getWhiteCandicateList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(whiteCandicateList);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddWhiteAppfromList = addWhiteAppfromList(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddWhiteAppfromList ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddConstrainedListAppBySystem = addConstrainedListAppBySystem(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddConstrainedListAppBySystem ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveConstrainedListAppBySystem = removeConstrainedListAppBySystem(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveConstrainedListAppBySystem ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int orignalAlignInterval = getOrignalAlignInterval();
                    parcel2.writeNoException();
                    parcel2.writeInt(orignalAlignInterval);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean alignInterval = setAlignInterval(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(alignInterval ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDozeStateChanged();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    noteWakeupAlarm(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int wakeupAlarmCount = getWakeupAlarmCount(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(wakeupAlarmCount);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    boolean addConstrainedListAppBySystem(String str);

    boolean addWhiteAppfromList(String str);

    boolean delWhiteAppfromList(String str);

    List<PowerGuruAlarmInfo> getBeatList();

    int getOrignalAlignInterval();

    int getWakeupAlarmCount(String str);

    List<String> getWhiteCandicateList();

    List<String> getWhiteList();

    void noteWakeupAlarm(String str, int i2);

    boolean notifyAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent, int i3, WorkSource workSource, AlarmManager.AlarmClockInfo alarmClockInfo, int i4, String str);

    void notifyDozeStateChanged();

    boolean notifyPowerguruAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent);

    boolean removeConstrainedListAppBySystem(String str);

    boolean setAlignInterval(int i2);

    void testHello();
}
