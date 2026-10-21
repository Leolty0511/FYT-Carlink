package android.os;

import android.net.wifi.WifiEnterpriseConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ServiceManagerProxy implements IServiceManager {
    private IBinder mRemote;

    public ServiceManagerProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IServiceManager
    public void addService(String str, IBinder iBinder, boolean z2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IServiceManager.descriptor);
        parcelObtain.writeString(str);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        if (SystemProperties.get("persist.support.securetest").equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
            try {
                this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
            } catch (SecurityException unused) {
            }
        } else {
            this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
        }
        parcelObtain2.recycle();
        parcelObtain.recycle();
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.os.IServiceManager
    public IBinder checkService(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IServiceManager.descriptor);
        parcelObtain.writeString(str);
        this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
        IBinder strongBinder = parcelObtain2.readStrongBinder();
        parcelObtain2.recycle();
        parcelObtain.recycle();
        return strongBinder;
    }

    @Override // android.os.IServiceManager
    public IBinder getService(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IServiceManager.descriptor);
        parcelObtain.writeString(str);
        this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
        IBinder strongBinder = parcelObtain2.readStrongBinder();
        parcelObtain2.recycle();
        parcelObtain.recycle();
        return strongBinder;
    }

    @Override // android.os.IServiceManager
    public String[] listServices() {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            parcelObtain.writeInterfaceToken(IServiceManager.descriptor);
            parcelObtain.writeInt(i2);
            i2++;
            try {
                if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0)) {
                    break;
                }
                arrayList.add(parcelObtain2.readString());
                parcelObtain2.recycle();
                parcelObtain.recycle();
            } catch (RuntimeException unused) {
            }
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    @Override // android.os.IServiceManager
    public void setPermissionController(IPermissionController iPermissionController) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IServiceManager.descriptor);
        parcelObtain.writeStrongBinder(iPermissionController.asBinder());
        this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
        parcelObtain2.recycle();
        parcelObtain.recycle();
    }
}
