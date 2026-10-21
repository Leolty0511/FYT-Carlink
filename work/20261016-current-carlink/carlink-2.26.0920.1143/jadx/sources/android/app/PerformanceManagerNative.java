package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ServiceManager;
import android.util.Log;
import android.util.Singleton;

/* JADX INFO: loaded from: classes.dex */
public class PerformanceManagerNative extends Binder implements IPerformanceManager {
    private static final Singleton<IPerformanceManager> gDefault = new Singleton<IPerformanceManager>() { // from class: android.app.PerformanceManagerNative.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.util.Singleton
        public IPerformanceManager create() {
            return PerformanceManagerNative.asInterface(ServiceManager.getService("performancemanager"));
        }
    };

    public PerformanceManagerNative() {
        attachInterface(this, IPerformanceManager.descriptor);
    }

    public static IPerformanceManager asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IPerformanceManager iPerformanceManager = (IPerformanceManager) iBinder.queryLocalInterface(IPerformanceManager.descriptor);
        return iPerformanceManager != null ? iPerformanceManager : new PerformanceManagerProxy(iBinder);
    }

    public static IPerformanceManager getDefault() {
        return gDefault.get();
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.app.IPerformanceManager
    public void enableBoostKill(int i2) {
        Log.d("PerformanceManager", "dummy");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
            return true;
        }
        return super.onTransact(i2, parcel, parcel2, i3);
    }

    @Override // android.app.IPerformanceManager
    public String readProcFile(String str) {
        Log.d("PerformanceManager", "dummy");
        return "";
    }

    @Override // android.app.IPerformanceManager
    public String reclaimProcess(int i2, String str) {
        Log.d("PerformanceManager", "dummy");
        return "";
    }

    @Override // android.app.IPerformanceManager
    public boolean reclaimProcessEnabled() {
        Log.d("PerformanceManager", "dummy");
        return false;
    }

    @Override // android.app.IPerformanceManager
    public void writeProcFile(String str, String str2) {
        Log.d("PerformanceManager", "dummy");
    }
}
