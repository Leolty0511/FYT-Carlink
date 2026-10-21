package android.app.usage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IStorageStatsManager extends IInterface {

    public static abstract class Stub extends Binder implements IStorageStatsManager {
        private static final String DESCRIPTOR = "android.app.usage.IStorageStatsManager";
        static final int TRANSACTION_getCacheBytes = 4;
        static final int TRANSACTION_getCacheQuotaBytes = 5;
        static final int TRANSACTION_getFreeBytes = 3;
        static final int TRANSACTION_getTotalBytes = 2;
        static final int TRANSACTION_isQuotaSupported = 1;
        static final int TRANSACTION_queryExternalStatsForUser = 9;
        static final int TRANSACTION_queryStatsForPackage = 6;
        static final int TRANSACTION_queryStatsForUid = 7;
        static final int TRANSACTION_queryStatsForUser = 8;

        public static class Proxy implements IStorageStatsManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.app.usage.IStorageStatsManager
            public long getCacheBytes(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.usage.IStorageStatsManager
            public long getCacheQuotaBytes(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.usage.IStorageStatsManager
            public long getFreeBytes(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.app.usage.IStorageStatsManager
            public long getTotalBytes(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.usage.IStorageStatsManager
            public boolean isQuotaSupported(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.usage.IStorageStatsManager
            public ExternalStorageStats queryExternalStatsForUser(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ExternalStorageStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.usage.IStorageStatsManager
            public StorageStats queryStatsForPackage(String str, String str2, int i2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StorageStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.usage.IStorageStatsManager
            public StorageStats queryStatsForUid(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StorageStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.usage.IStorageStatsManager
            public StorageStats queryStatsForUser(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StorageStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IStorageStatsManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IStorageStatsManager)) ? new Proxy(iBinder) : (IStorageStatsManager) iInterfaceQueryLocalInterface;
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
                    boolean zIsQuotaSupported = isQuotaSupported(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsQuotaSupported ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    long totalBytes = getTotalBytes(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(totalBytes);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    long freeBytes = getFreeBytes(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(freeBytes);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    long cacheBytes = getCacheBytes(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(cacheBytes);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    long cacheQuotaBytes = getCacheQuotaBytes(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(cacheQuotaBytes);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    StorageStats storageStatsQueryStatsForPackage = queryStatsForPackage(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (storageStatsQueryStatsForPackage != null) {
                        parcel2.writeInt(1);
                        storageStatsQueryStatsForPackage.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    StorageStats storageStatsQueryStatsForUid = queryStatsForUid(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (storageStatsQueryStatsForUid != null) {
                        parcel2.writeInt(1);
                        storageStatsQueryStatsForUid.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    StorageStats storageStatsQueryStatsForUser = queryStatsForUser(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (storageStatsQueryStatsForUser != null) {
                        parcel2.writeInt(1);
                        storageStatsQueryStatsForUser.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    ExternalStorageStats externalStorageStatsQueryExternalStatsForUser = queryExternalStatsForUser(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (externalStorageStatsQueryExternalStatsForUser != null) {
                        parcel2.writeInt(1);
                        externalStorageStatsQueryExternalStatsForUser.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    long getCacheBytes(String str, String str2);

    long getCacheQuotaBytes(String str, int i2, String str2);

    long getFreeBytes(String str, String str2);

    long getTotalBytes(String str, String str2);

    boolean isQuotaSupported(String str, String str2);

    ExternalStorageStats queryExternalStatsForUser(String str, int i2, String str2);

    StorageStats queryStatsForPackage(String str, String str2, int i2, String str3);

    StorageStats queryStatsForUid(String str, int i2, String str2);

    StorageStats queryStatsForUser(String str, int i2, String str2);
}
