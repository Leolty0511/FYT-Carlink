package android.app.usage;

import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class UsageStatsManager {
    public static final int INTERVAL_BEST = 4;
    public static final int INTERVAL_COUNT = 4;
    public static final int INTERVAL_DAILY = 0;
    public static final int INTERVAL_MONTHLY = 2;
    public static final int INTERVAL_WEEKLY = 1;
    public static final int INTERVAL_YEARLY = 3;
    private static final UsageEvents sEmptyResults = new UsageEvents();
    private final Context mContext;
    private final IUsageStatsManager mService;

    public UsageStatsManager(Context context, IUsageStatsManager iUsageStatsManager) {
        this.mContext = context;
        this.mService = iUsageStatsManager;
    }

    public boolean isAppInactive(String str) {
        try {
            return this.mService.isAppInactive(str, UserHandle.myUserId());
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void onCarrierPrivilegedAppsChanged() {
        try {
            this.mService.onCarrierPrivilegedAppsChanged();
        } catch (RemoteException unused) {
        }
    }

    public Map<String, UsageStats> queryAndAggregateUsageStats(long j2, long j3) {
        List<UsageStats> listQueryUsageStats = queryUsageStats(4, j2, j3);
        if (listQueryUsageStats.isEmpty()) {
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap();
        int size = listQueryUsageStats.size();
        for (int i2 = 0; i2 < size; i2++) {
            UsageStats usageStats = listQueryUsageStats.get(i2);
            UsageStats usageStats2 = (UsageStats) arrayMap.get(usageStats.getPackageName());
            if (usageStats2 == null) {
                arrayMap.put(usageStats.mPackageName, usageStats);
            } else {
                usageStats2.add(usageStats);
            }
        }
        return arrayMap;
    }

    public List<ConfigurationStats> queryConfigurations(int i2, long j2, long j3) {
        try {
            ParceledListSlice parceledListSliceQueryConfigurationStats = this.mService.queryConfigurationStats(i2, j2, j3, this.mContext.getOpPackageName());
            if (parceledListSliceQueryConfigurationStats != null) {
                return parceledListSliceQueryConfigurationStats.getList();
            }
        } catch (RemoteException unused) {
        }
        return Collections.emptyList();
    }

    public UsageEvents queryEvents(long j2, long j3) {
        try {
            UsageEvents usageEventsQueryEvents = this.mService.queryEvents(j2, j3, this.mContext.getOpPackageName());
            if (usageEventsQueryEvents != null) {
                return usageEventsQueryEvents;
            }
        } catch (RemoteException unused) {
        }
        return sEmptyResults;
    }

    public List<UsageStats> queryUsageStats(int i2, long j2, long j3) {
        try {
            ParceledListSlice parceledListSliceQueryUsageStats = this.mService.queryUsageStats(i2, j2, j3, this.mContext.getOpPackageName());
            if (parceledListSliceQueryUsageStats != null) {
                return parceledListSliceQueryUsageStats.getList();
            }
        } catch (RemoteException unused) {
        }
        return Collections.emptyList();
    }

    public void reportChooserSelection(String str, int i2, String str2, String[] strArr, String str3) {
        try {
            this.mService.reportChooserSelection(str, i2, str2, strArr, str3);
        } catch (RemoteException unused) {
        }
    }

    public void setAppInactive(String str, boolean z2) {
        try {
            this.mService.setAppInactive(str, z2, UserHandle.myUserId());
        } catch (RemoteException unused) {
        }
    }

    public void whitelistAppTemporarily(String str, long j2, UserHandle userHandle) {
        try {
            this.mService.whitelistAppTemporarily(str, j2, userHandle.getIdentifier());
        } catch (RemoteException unused) {
        }
    }
}
