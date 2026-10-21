package android.os.storage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IMountService extends IInterface {
    public static final int ENCRYPTION_STATE_ERROR_INCOMPLETE = -2;
    public static final int ENCRYPTION_STATE_ERROR_UNKNOWN = -1;
    public static final int ENCRYPTION_STATE_NONE = 1;
    public static final int ENCRYPTION_STATE_OK = 0;

    public static abstract class Stub extends Binder implements IMountService {
        private static final String DESCRIPTOR = "IMountService";
        public static final int TRANSACTION_changeEncryptionPassword = 29;
        public static final int TRANSACTION_createSecureContainer = 11;
        public static final int TRANSACTION_decryptStorage = 27;
        public static final int TRANSACTION_destroySecureContainer = 13;
        public static final int TRANSACTION_encryptStorage = 28;
        public static final int TRANSACTION_finalizeSecureContainer = 12;
        public static final int TRANSACTION_finishMediaUpdate = 21;
        public static final int TRANSACTION_fixPermissionsSecureContainer = 34;
        public static final int TRANSACTION_formatVolume = 8;
        public static final int TRANSACTION_getEncryptionState = 32;
        public static final int TRANSACTION_getMountedObbPath = 25;
        public static final int TRANSACTION_getSecureContainerFilesystemPath = 31;
        public static final int TRANSACTION_getSecureContainerList = 19;
        public static final int TRANSACTION_getSecureContainerPath = 18;
        public static final int TRANSACTION_getStorageUsers = 9;
        public static final int TRANSACTION_getUmsRecoverying = 36;
        public static final int TRANSACTION_getVolumeList = 30;
        public static final int TRANSACTION_getVolumeState = 10;
        public static final int TRANSACTION_isExternalStorageEmulated = 26;
        public static final int TRANSACTION_isObbMounted = 24;
        public static final int TRANSACTION_isSecureContainerMounted = 16;
        public static final int TRANSACTION_isUsbMassStorageConnected = 3;
        public static final int TRANSACTION_isUsbMassStorageEnabled = 5;
        public static final int TRANSACTION_mkdirs = 35;
        public static final int TRANSACTION_mountObb = 22;
        public static final int TRANSACTION_mountSecureContainer = 14;
        public static final int TRANSACTION_mountVolume = 6;
        public static final int TRANSACTION_registerListener = 1;
        public static final int TRANSACTION_renameSecureContainer = 17;
        public static final int TRANSACTION_setUsbMassStorageEnabled = 4;
        public static final int TRANSACTION_shutdown = 20;
        public static final int TRANSACTION_unmountObb = 23;
        public static final int TRANSACTION_unmountSecureContainer = 15;
        public static final int TRANSACTION_unmountVolume = 7;
        public static final int TRANSACTION_unregisterListener = 2;
        public static final int TRANSACTION_verifyEncryptionPassword = 33;

        public static class Proxy implements IMountService {
            private final IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.os.storage.IMountService
            public int changeEncryptionPassword(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int createSecureContainer(String str, int i2, String str2, String str3, int i3, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int decryptStorage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int destroySecureContainer(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int encryptStorage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int finalizeSecureContainer(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public void finishMediaUpdate() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int fixPermissionsSecureContainer(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int formatVolume(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int getEncryptionState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
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

            @Override // android.os.storage.IMountService
            public String getMountedObbPath(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public String getSecureContainerFilesystemPath(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public String[] getSecureContainerList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public String getSecureContainerPath(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int[] getStorageUsers(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public boolean getUmsRecoverying() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public StorageVolume[] getVolumeList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (StorageVolume[]) parcelObtain2.createTypedArray(StorageVolume.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public String getVolumeState(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public boolean isExternalStorageEmulated() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public boolean isObbMounted(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public boolean isSecureContainerMounted(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public boolean isUsbMassStorageConnected() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public boolean isUsbMassStorageEnabled() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int mkdirs(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public void mountObb(String str, String str2, String str3, IObbActionListener iObbActionListener, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeStrongBinder(iObbActionListener != null ? iObbActionListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int mountSecureContainer(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int mountVolume(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public void registerListener(IMountServiceListener iMountServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMountServiceListener != null ? iMountServiceListener.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int renameSecureContainer(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public void setUsbMassStorageEnabled(boolean z2) {
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

            @Override // android.os.storage.IMountService
            public void shutdown(IMountShutdownObserver iMountShutdownObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMountShutdownObserver != null ? iMountShutdownObserver.asBinder() : null);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public void unmountObb(String str, boolean z2, IObbActionListener iObbActionListener, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iObbActionListener != null ? iObbActionListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int unmountSecureContainer(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public void unmountVolume(String str, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    int i2 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public void unregisterListener(IMountServiceListener iMountServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMountServiceListener != null ? iMountServiceListener.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.storage.IMountService
            public int verifyEncryptionPassword(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
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

        public static IMountService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMountService)) ? new Proxy(iBinder) : (IMountService) iInterfaceQueryLocalInterface;
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
                    registerListener(IMountServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterListener(IMountServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUsbMassStorageConnected = isUsbMassStorageConnected();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUsbMassStorageConnected ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUsbMassStorageEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUsbMassStorageEnabled = isUsbMassStorageEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUsbMassStorageEnabled ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMountVolume = mountVolume(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iMountVolume);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    unmountVolume(parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int volume = formatVolume(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(volume);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] storageUsers = getStorageUsers(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(storageUsers);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String volumeState = getVolumeState(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(volumeState);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCreateSecureContainer = createSecureContainer(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCreateSecureContainer);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iFinalizeSecureContainer = finalizeSecureContainer(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iFinalizeSecureContainer);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDestroySecureContainer = destroySecureContainer(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iDestroySecureContainer);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMountSecureContainer = mountSecureContainer(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iMountSecureContainer);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUnmountSecureContainer = unmountSecureContainer(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iUnmountSecureContainer);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSecureContainerMounted = isSecureContainerMounted(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSecureContainerMounted ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRenameSecureContainer = renameSecureContainer(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRenameSecureContainer);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    String secureContainerPath = getSecureContainerPath(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(secureContainerPath);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] secureContainerList = getSecureContainerList();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(secureContainerList);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    shutdown(IMountShutdownObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishMediaUpdate();
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    mountObb(parcel.readString(), parcel.readString(), parcel.readString(), IObbActionListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    unmountObb(parcel.readString(), parcel.readInt() != 0, IObbActionListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsObbMounted = isObbMounted(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsObbMounted ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    String mountedObbPath = getMountedObbPath(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(mountedObbPath);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsExternalStorageEmulated = isExternalStorageEmulated();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsExternalStorageEmulated ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDecryptStorage = decryptStorage(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iDecryptStorage);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iEncryptStorage = encryptStorage(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iEncryptStorage);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iChangeEncryptionPassword = changeEncryptionPassword(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iChangeEncryptionPassword);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    StorageVolume[] volumeList = getVolumeList();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(volumeList, 1);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    String secureContainerFilesystemPath = getSecureContainerFilesystemPath(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(secureContainerFilesystemPath);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    int encryptionState = getEncryptionState();
                    parcel2.writeNoException();
                    parcel2.writeInt(encryptionState);
                    return true;
                default:
                    switch (i2) {
                        case 34:
                            parcel.enforceInterface(DESCRIPTOR);
                            int iFixPermissionsSecureContainer = fixPermissionsSecureContainer(parcel.readString(), parcel.readInt(), parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(iFixPermissionsSecureContainer);
                            return true;
                        case 35:
                            parcel.enforceInterface(DESCRIPTOR);
                            int iMkdirs = mkdirs(parcel.readString(), parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(iMkdirs);
                            return true;
                        case 36:
                            parcel.enforceInterface(DESCRIPTOR);
                            boolean umsRecoverying = getUmsRecoverying();
                            parcel2.writeNoException();
                            parcel2.writeInt(umsRecoverying ? 1 : 0);
                            return true;
                        default:
                            return super.onTransact(i2, parcel, parcel2, i3);
                    }
            }
        }
    }

    int changeEncryptionPassword(String str);

    int createSecureContainer(String str, int i2, String str2, String str3, int i3, boolean z2);

    int decryptStorage(String str);

    int destroySecureContainer(String str, boolean z2);

    int encryptStorage(String str);

    int finalizeSecureContainer(String str);

    void finishMediaUpdate();

    int fixPermissionsSecureContainer(String str, int i2, String str2);

    int formatVolume(String str);

    int getEncryptionState();

    String getMountedObbPath(String str);

    String getSecureContainerFilesystemPath(String str);

    String[] getSecureContainerList();

    String getSecureContainerPath(String str);

    int[] getStorageUsers(String str);

    boolean getUmsRecoverying();

    StorageVolume[] getVolumeList();

    String getVolumeState(String str);

    boolean isExternalStorageEmulated();

    boolean isObbMounted(String str);

    boolean isSecureContainerMounted(String str);

    boolean isUsbMassStorageConnected();

    boolean isUsbMassStorageEnabled();

    int mkdirs(String str, String str2);

    void mountObb(String str, String str2, String str3, IObbActionListener iObbActionListener, int i2);

    int mountSecureContainer(String str, String str2, int i2);

    int mountVolume(String str);

    void registerListener(IMountServiceListener iMountServiceListener);

    int renameSecureContainer(String str, String str2);

    void setUsbMassStorageEnabled(boolean z2);

    void shutdown(IMountShutdownObserver iMountShutdownObserver);

    void unmountObb(String str, boolean z2, IObbActionListener iObbActionListener, int i2);

    int unmountSecureContainer(String str, boolean z2);

    void unmountVolume(String str, boolean z2, boolean z3);

    void unregisterListener(IMountServiceListener iMountServiceListener);

    int verifyEncryptionPassword(String str);
}
