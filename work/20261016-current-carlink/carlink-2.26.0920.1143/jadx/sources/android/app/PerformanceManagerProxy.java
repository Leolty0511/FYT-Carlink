package android.app;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class PerformanceManagerProxy implements IPerformanceManager {
    private IBinder mRemote;

    public PerformanceManagerProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.app.IPerformanceManager
    public void enableBoostKill(int i2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IPerformanceManager.descriptor);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
        parcelObtain.recycle();
        parcelObtain2.recycle();
    }

    @Override // android.app.IPerformanceManager
    public String readProcFile(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IPerformanceManager.descriptor);
        parcelObtain.writeString(str);
        this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
        String string = parcelObtain2.readString();
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return string;
    }

    @Override // android.app.IPerformanceManager
    public String reclaimProcess(int i2, String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IPerformanceManager.descriptor);
        parcelObtain.writeInt(i2);
        parcelObtain.writeString(str);
        this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
        String string = parcelObtain2.readString();
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return string;
    }

    @Override // android.app.IPerformanceManager
    public boolean reclaimProcessEnabled() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IPerformanceManager.descriptor);
        this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
        boolean z2 = parcelObtain2.readInt() == 1;
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return z2;
    }

    @Override // android.app.IPerformanceManager
    public void writeProcFile(String str, String str2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IPerformanceManager.descriptor);
        parcelObtain.writeString(str);
        parcelObtain.writeString(str2);
        this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
        parcelObtain.recycle();
        parcelObtain2.recycle();
    }
}
