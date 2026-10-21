package android.app.backup;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IFullBackupRestoreObserver extends IInterface {

    public static abstract class Stub extends Binder implements IFullBackupRestoreObserver {
        private static final String DESCRIPTOR = "android.app.backup.IFullBackupRestoreObserver";
        public static final int TRANSACTION_onBackupPackage = 2;
        public static final int TRANSACTION_onEndBackup = 3;
        public static final int TRANSACTION_onEndRestore = 6;
        public static final int TRANSACTION_onRestorePackage = 5;
        public static final int TRANSACTION_onStartBackup = 1;
        public static final int TRANSACTION_onStartRestore = 4;
        public static final int TRANSACTION_onTimeout = 7;

        public static class Proxy implements IFullBackupRestoreObserver {
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

            @Override // android.app.backup.IFullBackupRestoreObserver
            public void onBackupPackage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IFullBackupRestoreObserver
            public void onEndBackup() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IFullBackupRestoreObserver
            public void onEndRestore() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IFullBackupRestoreObserver
            public void onRestorePackage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IFullBackupRestoreObserver
            public void onStartBackup() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IFullBackupRestoreObserver
            public void onStartRestore() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IFullBackupRestoreObserver
            public void onTimeout() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IFullBackupRestoreObserver asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IFullBackupRestoreObserver)) ? new Proxy(iBinder) : (IFullBackupRestoreObserver) iInterfaceQueryLocalInterface;
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
                    onStartBackup();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBackupPackage(parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEndBackup();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStartRestore();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRestorePackage(parcel.readString());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEndRestore();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTimeout();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void onBackupPackage(String str);

    void onEndBackup();

    void onEndRestore();

    void onRestorePackage(String str);

    void onStartBackup();

    void onStartRestore();

    void onTimeout();
}
