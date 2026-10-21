package android.app.backup;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IRestoreSession extends IInterface {

    public static abstract class Stub extends Binder implements IRestoreSession {
        private static final String DESCRIPTOR = "android.app.backup.IRestoreSession";
        public static final int TRANSACTION_endRestoreSession = 5;
        public static final int TRANSACTION_getAvailableRestoreSets = 1;
        public static final int TRANSACTION_restoreAll = 2;
        public static final int TRANSACTION_restorePackage = 4;
        public static final int TRANSACTION_restoreSome = 3;

        public static class Proxy implements IRestoreSession {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.app.backup.IRestoreSession
            public void endRestoreSession() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IRestoreSession
            public int getAvailableRestoreSets(IRestoreObserver iRestoreObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRestoreObserver != null ? iRestoreObserver.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
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

            @Override // android.app.backup.IRestoreSession
            public int restoreAll(long j2, IRestoreObserver iRestoreObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeStrongBinder(iRestoreObserver != null ? iRestoreObserver.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IRestoreSession
            public int restorePackage(String str, IRestoreObserver iRestoreObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iRestoreObserver != null ? iRestoreObserver.asBinder() : null);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.backup.IRestoreSession
            public int restoreSome(long j2, IRestoreObserver iRestoreObserver, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeStrongBinder(iRestoreObserver != null ? iRestoreObserver.asBinder() : null);
                    parcelObtain.writeStringArray(strArr);
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

        public static IRestoreSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRestoreSession)) ? new Proxy(iBinder) : (IRestoreSession) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                int availableRestoreSets = getAvailableRestoreSets(IRestoreObserver.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(availableRestoreSets);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int iRestoreAll = restoreAll(parcel.readLong(), IRestoreObserver.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(iRestoreAll);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                int iRestoreSome = restoreSome(parcel.readLong(), IRestoreObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.createStringArray());
                parcel2.writeNoException();
                parcel2.writeInt(iRestoreSome);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                int iRestorePackage = restorePackage(parcel.readString(), IRestoreObserver.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(iRestorePackage);
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            endRestoreSession();
            parcel2.writeNoException();
            return true;
        }
    }

    void endRestoreSession();

    int getAvailableRestoreSets(IRestoreObserver iRestoreObserver);

    int restoreAll(long j2, IRestoreObserver iRestoreObserver);

    int restorePackage(String str, IRestoreObserver iRestoreObserver);

    int restoreSome(long j2, IRestoreObserver iRestoreObserver, String[] strArr);
}
