package android.database;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
final class BulkCursorProxy implements IBulkCursor {
    private Bundle mExtras = null;
    private IBinder mRemote;

    public BulkCursorProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.database.IBulkCursor
    public void close() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IBulkCursor.descriptor);
            this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
            DatabaseUtils.readExceptionFromParcel(parcelObtain2);
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.database.IBulkCursor
    public void deactivate() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IBulkCursor.descriptor);
            this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
            DatabaseUtils.readExceptionFromParcel(parcelObtain2);
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.database.IBulkCursor
    public Bundle getExtras() {
        if (this.mExtras == null) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken(IBulkCursor.descriptor);
                this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                DatabaseUtils.readExceptionFromParcel(parcelObtain2);
                this.mExtras = parcelObtain2.readBundle();
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
        return this.mExtras;
    }

    @Override // android.database.IBulkCursor
    public CursorWindow getWindow(int i2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IBulkCursor.descriptor);
            parcelObtain.writeInt(i2);
            this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
            DatabaseUtils.readExceptionFromParcel(parcelObtain2);
            return parcelObtain2.readInt() == 1 ? CursorWindow.newFromParcel(parcelObtain2) : null;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.database.IBulkCursor
    public void onMove(int i2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IBulkCursor.descriptor);
            parcelObtain.writeInt(i2);
            this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
            DatabaseUtils.readExceptionFromParcel(parcelObtain2);
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.database.IBulkCursor
    public int requery(IContentObserver iContentObserver) {
        int i2;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IBulkCursor.descriptor);
            parcelObtain.writeStrongInterface(iContentObserver);
            boolean zTransact = this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
            DatabaseUtils.readExceptionFromParcel(parcelObtain2);
            if (zTransact) {
                i2 = parcelObtain2.readInt();
                this.mExtras = parcelObtain2.readBundle();
            } else {
                i2 = -1;
            }
            return i2;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.database.IBulkCursor
    public Bundle respond(Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IBulkCursor.descriptor);
            parcelObtain.writeBundle(bundle);
            this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
            DatabaseUtils.readExceptionFromParcel(parcelObtain2);
            return parcelObtain2.readBundle();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }
}
