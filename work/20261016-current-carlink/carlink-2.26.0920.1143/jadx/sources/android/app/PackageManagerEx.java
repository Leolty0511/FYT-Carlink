package android.app;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class PackageManagerEx extends PackageManager {
    public static final int BACKUPAPP_FAILED_UNKNOWN = -1;
    public static final int BACKUPAPP_FILE_NOTFOUND = -2;
    public static final int BACKUPAPP_PKG_DONINSTALL = -3;
    public static final int BACKUPAPP_SUCCEED = 0;
    protected final ContextImpl mContext;
    protected final IPackageManager mPM;

    public PackageManagerEx(ContextImpl contextImpl, IPackageManager iPackageManager) {
        this.mContext = contextImpl;
        this.mPM = iPackageManager;
    }

    public int backupAppData(String str, String str2) {
        try {
            return this.mPM.backupAppData(str, str2);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public VolumeInfo getPrimaryEmulatedStorageCurrentVolume() {
        StorageManager storageManager = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        return storageManager.findVolumeByQualifiedUuid(storageManager.getPrimaryEmulatedStorageUuid());
    }

    public int movePrimaryEmulatedStorage(VolumeInfo volumeInfo) {
        String str;
        try {
            if (VolumeInfo.ID_PRIVATE_INTERNAL.equals(volumeInfo.id)) {
                str = StorageManager.UUID_PRIVATE_INTERNAL;
            } else {
                str = volumeInfo.isPrimaryPhysical() ? StorageManager.UUID_PRIMARY_PHYSICAL : (String) Preconditions.checkNotNull(volumeInfo.fsUuid);
            }
            return this.mPM.movePrimaryEmulatedStorage(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int restoreAppData(String str, String str2) {
        try {
            return this.mPM.restoreAppData(str, str2);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public void setComponentEnabledSettingForSetupMenu(ComponentName componentName, int i2, Intent intent) {
        try {
            this.mPM.setComponentEnabledSettingForSetupMenu(componentName, i2, this.mContext.getUserId(), intent);
        } catch (RemoteException unused) {
        }
    }

    public void setComponentEnabledSettingForSpecific(ComponentName componentName, int i2, int i3, Intent intent) {
        try {
            this.mPM.setComponentEnabledSettingForSpecific(componentName, i2, i3, this.mContext.getUserId(), intent);
        } catch (RemoteException unused) {
        }
    }
}
