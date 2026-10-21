package android.app;

import android.content.Context;
import android.content.Intent;
import android.os.ServiceManager;

/* JADX INFO: loaded from: classes.dex */
public class PerformanceManagerInternal {
    private static PerformanceManagerInternal sInstance;
    private static IPerformanceManagerInternal sPerformanceManagerService;
    private Context mContext;

    public PerformanceManagerInternal(Context context) {
        this.mContext = context;
        if (sPerformanceManagerService == null) {
            sPerformanceManagerService = IPerformanceManagerInternal.Stub.asInterface(ServiceManager.getService("performance_fw"));
        }
    }

    public static PerformanceManagerInternal getDefault() {
        PerformanceManagerInternal performanceManagerInternal = sInstance;
        if (performanceManagerInternal != null) {
            return performanceManagerInternal;
        }
        PerformanceManagerInternal performanceManagerInternal2 = new PerformanceManagerInternal(ActivityThread.currentApplication());
        sInstance = performanceManagerInternal2;
        return performanceManagerInternal2;
    }

    public IPerformanceManagerInternal getService() {
        IPerformanceManagerInternal iPerformanceManagerInternal = sPerformanceManagerService;
        if (iPerformanceManagerInternal != null) {
            return iPerformanceManagerInternal;
        }
        return null;
    }

    public TaskThumbnail getTaskThumbnail(Intent intent) {
        IPerformanceManagerInternal iPerformanceManagerInternal = sPerformanceManagerService;
        if (iPerformanceManagerInternal != null) {
            try {
                return iPerformanceManagerInternal.getTaskThumbnail(intent);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public boolean pkgSupportRecentThumbnail(String str) {
        IPerformanceManagerInternal iPerformanceManagerInternal = sPerformanceManagerService;
        if (iPerformanceManagerInternal != null) {
            try {
                return iPerformanceManagerInternal.pkgSupportRecentThumbnail(str);
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void removeApplcationSnapShot(String str) {
        IPerformanceManagerInternal iPerformanceManagerInternal = sPerformanceManagerService;
        if (iPerformanceManagerInternal != null) {
            try {
                iPerformanceManagerInternal.removeApplcationSnapShot(str);
            } catch (Exception unused) {
            }
        }
    }

    public void removePendingUpdateThumbTask() {
        IPerformanceManagerInternal iPerformanceManagerInternal = sPerformanceManagerService;
        if (iPerformanceManagerInternal != null) {
            try {
                iPerformanceManagerInternal.removePendingUpdateThumbTask();
            } catch (Exception unused) {
            }
        }
    }

    public void windowReallyDrawnDone(String str) {
        IPerformanceManagerInternal iPerformanceManagerInternal = sPerformanceManagerService;
        if (iPerformanceManagerInternal != null) {
            try {
                iPerformanceManagerInternal.windowReallyDrawnDone(str);
            } catch (Exception unused) {
            }
        }
    }
}
