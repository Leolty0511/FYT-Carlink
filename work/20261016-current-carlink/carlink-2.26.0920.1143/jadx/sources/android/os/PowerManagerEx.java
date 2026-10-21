package android.os;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class PowerManagerEx extends AbsPowerManager {
    public static final String ACTION_POWEREX_SAVE_MODE_CHANGED = "android.os.action.POWEREX_SAVE_MODE_CHANGED";
    public static final String EXTRA_POWEREX_SAVE_MODE = "mode";
    public static final String EXTRA_POWEREX_SAVE_PREMODE = "pre-mode";
    public static final int MODE_INVALID = -1;
    public static final int MODE_LOWPOWER = 3;
    public static final int MODE_PERFORMANCE = 0;
    public static final int MODE_POWERSAVING = 2;
    public static final int MODE_SMART = 1;
    public static final int MODE_ULTRASAVING = 4;
    public static final String POWER_CONTROLLER_ENABLE = "persist.sys.pwctl.enable";
    private static final String TAG = "PowerManagerEx";
    private static final boolean mPowerControllerEnabled;
    private Context mContext;
    private final IPowerManagerEx mPowerMan = IPowerManagerEx.Stub.asInterface(ServiceManager.getService("power_ex"));

    static {
        mPowerControllerEnabled = 1 == SystemProperties.getInt(POWER_CONTROLLER_ENABLE, 1);
    }

    public PowerManagerEx(Context context) {
        this.mContext = context;
    }

    private IPowerManagerEx getPowerManagerEx() {
        return IPowerManagerEx.Stub.asInterface(ServiceManager.getService("power_ex"));
    }

    public static boolean isPowerControllerEnabled() {
        return mPowerControllerEnabled;
    }

    public boolean forcePowerSaveMode(boolean z2) {
        try {
            return this.mPowerMan.forcePowerSaveMode(z2);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.os.AbsPowerManager
    public void rebootAnimation() {
        try {
            getPowerManagerEx().rebootAnimation();
        } catch (RemoteException unused) {
            Log.i(TAG, "rebootAnimation could not get remote service");
        }
    }

    @Override // android.os.AbsPowerManager
    public void scheduleButtonLightTimeout(long j2) {
        try {
            getPowerManagerEx().scheduleButtonLightTimeout(j2);
        } catch (RemoteException unused) {
            Log.i(TAG, "scheduleButtonLightTimeout could not get remote service");
        }
    }

    @Override // android.os.AbsPowerManager
    public void setEventUserActivityNeeded(boolean z2) {
        try {
            getPowerManagerEx().setEventUserActivityNeeded(z2);
        } catch (RemoteException unused) {
            Log.i(TAG, "setEventUserActivityNeeded could not get remote service");
        }
    }

    @Override // android.os.AbsPowerManager
    public void shutdownForAlarm() {
        try {
            getPowerManagerEx().shutdownForAlarm(false, true);
        } catch (RemoteException unused) {
            Log.i(TAG, "shutdownForAlarm could not get remote service");
        }
    }
}
