package android.os.health;

import android.content.Context;
import android.os.BatteryStats;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.internal.app.IBatteryStats;

/* JADX INFO: loaded from: classes.dex */
public class SystemHealthManager {
    private final IBatteryStats mBatteryStats;

    public SystemHealthManager() {
        this(IBatteryStats.Stub.asInterface(ServiceManager.getService(BatteryStats.SERVICE_NAME)));
    }

    public static SystemHealthManager from(Context context) {
        return (SystemHealthManager) context.getSystemService(Context.SYSTEM_HEALTH_SERVICE);
    }

    public HealthStats takeMyUidSnapshot() {
        return takeUidSnapshot(Process.myUid());
    }

    public HealthStats takeUidSnapshot(int i2) {
        try {
            return this.mBatteryStats.takeUidSnapshot(i2).getHealthStats();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public HealthStats[] takeUidSnapshots(int[] iArr) {
        try {
            HealthStatsParceler[] healthStatsParcelerArrTakeUidSnapshots = this.mBatteryStats.takeUidSnapshots(iArr);
            HealthStats[] healthStatsArr = new HealthStats[iArr.length];
            int length = iArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                healthStatsArr[i2] = healthStatsParcelerArrTakeUidSnapshots[i2].getHealthStats();
            }
            return healthStatsArr;
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public SystemHealthManager(IBatteryStats iBatteryStats) {
        this.mBatteryStats = iBatteryStats;
    }
}
