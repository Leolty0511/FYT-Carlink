package android.app.usage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.ParcelableException;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import com.android.internal.util.Preconditions;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class StorageStatsManager {
    private final Context mContext;
    private final IStorageStatsManager mService;

    public StorageStatsManager(Context context, IStorageStatsManager iStorageStatsManager) {
        this.mContext = (Context) Preconditions.checkNotNull(context);
        this.mService = (IStorageStatsManager) Preconditions.checkNotNull(iStorageStatsManager);
    }

    public long getCacheBytes(UUID uuid) throws Throwable {
        try {
            return this.mService.getCacheBytes(StorageManager.convert(uuid), this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public long getCacheQuotaBytes(String str, int i2) {
        try {
            return this.mService.getCacheQuotaBytes(str, i2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public long getFreeBytes(UUID uuid) throws Throwable {
        try {
            return this.mService.getFreeBytes(StorageManager.convert(uuid), this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public long getTotalBytes(UUID uuid) throws Throwable {
        try {
            return this.mService.getTotalBytes(StorageManager.convert(uuid), this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public boolean isQuotaSupported(UUID uuid) {
        try {
            return this.mService.isQuotaSupported(StorageManager.convert(uuid), this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ExternalStorageStats queryExternalStatsForUser(UUID uuid, UserHandle userHandle) throws Throwable {
        try {
            return this.mService.queryExternalStatsForUser(StorageManager.convert(uuid), userHandle.getIdentifier(), this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public StorageStats queryStatsForPackage(UUID uuid, String str, UserHandle userHandle) throws Throwable {
        try {
            return this.mService.queryStatsForPackage(StorageManager.convert(uuid), str, userHandle.getIdentifier(), this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(PackageManager.NameNotFoundException.class);
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public StorageStats queryStatsForUid(UUID uuid, int i2) throws Throwable {
        try {
            return this.mService.queryStatsForUid(StorageManager.convert(uuid), i2, this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public StorageStats queryStatsForUser(UUID uuid, UserHandle userHandle) throws Throwable {
        try {
            return this.mService.queryStatsForUser(StorageManager.convert(uuid), userHandle.getIdentifier(), this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean isQuotaSupported(String str) {
        return isQuotaSupported(StorageManager.convert(str));
    }

    @Deprecated
    public long getCacheBytes(String str) {
        return getCacheBytes(StorageManager.convert(str));
    }

    @Deprecated
    public long getFreeBytes(String str) {
        return getFreeBytes(StorageManager.convert(str));
    }

    @Deprecated
    public long getTotalBytes(String str) {
        return getTotalBytes(StorageManager.convert(str));
    }

    @Deprecated
    public ExternalStorageStats queryExternalStatsForUser(String str, UserHandle userHandle) {
        return queryExternalStatsForUser(StorageManager.convert(str), userHandle);
    }

    @Deprecated
    public StorageStats queryStatsForUid(String str, int i2) {
        return queryStatsForUid(StorageManager.convert(str), i2);
    }

    @Deprecated
    public StorageStats queryStatsForUser(String str, UserHandle userHandle) {
        return queryStatsForUser(StorageManager.convert(str), userHandle);
    }

    @Deprecated
    public StorageStats queryStatsForPackage(String str, String str2, UserHandle userHandle) {
        return queryStatsForPackage(StorageManager.convert(str), str2, userHandle);
    }
}
