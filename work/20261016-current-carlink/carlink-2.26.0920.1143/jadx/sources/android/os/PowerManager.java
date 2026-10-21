package android.os;

import android.content.Context;
import android.util.Log;
import android.util.TimedRemoteCaller;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class PowerManager {
    public static final int ACQUIRE_CAUSES_WAKEUP = 268435456;
    public static final String ACTION_DEVICE_IDLE_MODE_CHANGED = "android.os.action.DEVICE_IDLE_MODE_CHANGED";
    public static final String ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED";
    public static final String ACTION_POWER_SAVE_MODE_CHANGED = "android.os.action.POWER_SAVE_MODE_CHANGED";
    public static final String ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL = "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL";
    public static final String ACTION_POWER_SAVE_MODE_CHANGING = "android.os.action.POWER_SAVE_MODE_CHANGING";
    public static final String ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED";
    public static final String ACTION_POWER_SAVE_WHITELIST_CHANGED = "android.os.action.POWER_SAVE_WHITELIST_CHANGED";

    @Deprecated
    public static final String ACTION_SCREEN_BRIGHTNESS_BOOST_CHANGED = "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED";
    public static final int BRIGHTNESS_DEFAULT = -1;
    public static final int BRIGHTNESS_OFF = 0;
    public static final int BRIGHTNESS_ON = 255;
    public static final int DOZE_WAKE_LOCK = 64;
    public static final int DRAW_WAKE_LOCK = 128;
    public static final String EXTRA_POWER_SAVE_MODE = "mode";

    @Deprecated
    public static final int FULL_WAKE_LOCK = 26;
    public static final int GO_TO_SLEEP_FLAG_NO_DOZE = 1;
    public static final int GO_TO_SLEEP_REASON_APPLICATION = 0;
    public static final int GO_TO_SLEEP_REASON_DEVICE_ADMIN = 1;
    public static final int GO_TO_SLEEP_REASON_HDMI = 5;
    public static final int GO_TO_SLEEP_REASON_LID_SWITCH = 3;
    public static final int GO_TO_SLEEP_REASON_POWER_BUTTON = 4;
    public static final int GO_TO_SLEEP_REASON_SLEEP_BUTTON = 6;
    public static final int GO_TO_SLEEP_REASON_TIMEOUT = 2;
    public static final int ON_AFTER_RELEASE = 536870912;
    public static final int PARTIAL_WAKE_LOCK = 1;
    public static final int POWER_HINT_VENDOR_TIMEOUT_MAX = 5000;
    public static final int POWER_HINT_VENDOR_TIMEOUT_MIN = 500;
    public static final int PROXIMITY_SCREEN_OFF_WAKE_LOCK = 32;
    public static final String REBOOT_QUIESCENT = "quiescent";
    public static final String REBOOT_RECOVERY = "recovery";
    public static final String REBOOT_RECOVERY_UPDATE = "recovery-update";
    public static final String REBOOT_REQUESTED_BY_DEVICE_OWNER = "deviceowner";
    public static final String REBOOT_SAFE_MODE = "safemode";
    public static final int RELEASE_FLAG_TIMEOUT = 65536;
    public static final int RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY = 1;

    @Deprecated
    public static final int SCREEN_BRIGHT_WAKE_LOCK = 10;

    @Deprecated
    public static final int SCREEN_DIM_WAKE_LOCK = 6;
    public static final int SHUTDOWN_REASON_REBOOT = 2;
    public static final int SHUTDOWN_REASON_SHUTDOWN = 1;
    public static final int SHUTDOWN_REASON_THERMAL_SHUTDOWN = 4;
    public static final int SHUTDOWN_REASON_UNKNOWN = 0;
    public static final int SHUTDOWN_REASON_USER_REQUESTED = 3;
    public static final String SHUTDOWN_USER_REQUESTED = "userrequested";
    private static final String TAG = "PowerManager";
    public static final int UNIMPORTANT_FOR_LOGGING = 1073741824;
    public static final int USER_ACTIVITY_EVENT_ACCESSIBILITY = 3;
    public static final int USER_ACTIVITY_EVENT_BUTTON = 1;
    public static final int USER_ACTIVITY_EVENT_OTHER = 0;
    public static final int USER_ACTIVITY_EVENT_TOUCH = 2;
    public static final int USER_ACTIVITY_FLAG_INDIRECT = 2;
    public static final int USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS = 1;
    public static final int WAKE_LOCK_LEVEL_MASK = 65535;
    final Context mContext;
    final Handler mHandler;
    IDeviceIdleController mIDeviceIdleController;
    final IPowerManager mService;

    public final class PrfmLock {
        private int mCount;
        private int mHintId;
        private final String mPackageName;
        private final Runnable mReleaser;
        private String mTag;
        private final IBinder mToken;

        private void acquireLocked() {
            int i2 = this.mCount;
            this.mCount = i2 + 1;
            if (i2 == 0) {
                PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
                try {
                    PowerManager.this.mService.acquirePrfmLock(this.mToken, this.mTag, this.mPackageName, this.mHintId);
                } catch (RemoteException unused) {
                }
            }
        }

        public void acquire() {
            synchronized (this.mToken) {
                acquireLocked();
            }
        }

        public void finalize() {
            synchronized (this.mToken) {
                if (this.mCount > 0) {
                    try {
                        PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
                        PowerManager.this.mService.releasePrfmLock(this.mToken);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }

        public void release() {
            synchronized (this.mToken) {
                int i2 = this.mCount - 1;
                this.mCount = i2;
                if (i2 == 0) {
                    PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
                    try {
                        PowerManager.this.mService.releasePrfmLock(this.mToken);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }

        private PrfmLock(String str, String str2, int i2) {
            this.mReleaser = new Runnable() { // from class: android.os.PowerManager.PrfmLock.1
                @Override // java.lang.Runnable
                public void run() {
                    PrfmLock.this.release();
                }
            };
            this.mTag = str;
            this.mPackageName = str2;
            this.mToken = new Binder();
            this.mCount = 0;
            this.mHintId = i2;
        }

        public void acquire(long j2) {
            synchronized (this.mToken) {
                acquireLocked();
                long j3 = 500;
                if (j2 < 500) {
                    j2 = j3;
                } else {
                    j3 = TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS;
                    if (j2 > TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS) {
                        j2 = j3;
                    }
                }
                PowerManager.this.mHandler.postDelayed(this.mReleaser, j2);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ShutdownReason {
    }

    public final class WakeLock {
        private int mExternalCount;
        private int mFlags;
        private boolean mHeld;
        private String mHistoryTag;
        private int mInternalCount;
        private final String mPackageName;
        private String mTag;
        private final String mTraceName;
        private WorkSource mWorkSource;
        private boolean mRefCounted = true;
        private final Runnable mReleaser = new Runnable() { // from class: android.os.PowerManager.WakeLock.1
            @Override // java.lang.Runnable
            public void run() {
                WakeLock.this.release(65536);
            }
        };
        private final IBinder mToken = new Binder();

        public WakeLock(int i2, String str, String str2) {
            this.mFlags = i2;
            this.mTag = str;
            this.mPackageName = str2;
            this.mTraceName = android.accessibilityservice.c.n(new StringBuilder("WakeLock ("), this.mTag, ")");
        }

        private void acquireLocked() {
            int i2 = this.mInternalCount + 1;
            this.mInternalCount = i2;
            this.mExternalCount++;
            if (!this.mRefCounted || i2 == 1) {
                PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
                Trace.asyncTraceBegin(131072L, this.mTraceName, 0);
                try {
                    PowerManager.this.mService.acquireWakeLock(this.mToken, this.mFlags, this.mTag, this.mPackageName, this.mWorkSource, this.mHistoryTag);
                    this.mHeld = true;
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$wrap$0(Runnable runnable) {
            try {
                runnable.run();
            } finally {
                release();
            }
        }

        public void acquire() {
            synchronized (this.mToken) {
                acquireLocked();
            }
        }

        public void finalize() {
            synchronized (this.mToken) {
                if (this.mHeld) {
                    Log.wtf(PowerManager.TAG, "WakeLock finalized while still held: " + this.mTag);
                    Trace.asyncTraceEnd(131072L, this.mTraceName, 0);
                    try {
                        PowerManager.this.mService.releaseWakeLock(this.mToken, 0);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }

        public String getTag() {
            return this.mTag;
        }

        public boolean isHeld() {
            boolean z2;
            synchronized (this.mToken) {
                z2 = this.mHeld;
            }
            return z2;
        }

        public void release() {
            release(0);
        }

        public void setHistoryTag(String str) {
            this.mHistoryTag = str;
        }

        public void setReferenceCounted(boolean z2) {
            synchronized (this.mToken) {
                this.mRefCounted = z2;
            }
        }

        public void setTag(String str) {
            this.mTag = str;
        }

        public void setUnimportantForLogging(boolean z2) {
            if (z2) {
                this.mFlags |= 1073741824;
            } else {
                this.mFlags &= -1073741825;
            }
        }

        public void setWorkSource(WorkSource workSource) {
            synchronized (this.mToken) {
                if (workSource != null) {
                    try {
                        if (workSource.size() == 0) {
                            workSource = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                boolean zDiff = true;
                if (workSource == null) {
                    if (this.mWorkSource == null) {
                        zDiff = false;
                    }
                    this.mWorkSource = null;
                } else {
                    WorkSource workSource2 = this.mWorkSource;
                    if (workSource2 == null) {
                        this.mWorkSource = new WorkSource(workSource);
                    } else {
                        zDiff = workSource2.diff(workSource);
                        if (zDiff) {
                            this.mWorkSource.set(workSource);
                        }
                    }
                }
                if (zDiff && this.mHeld) {
                    try {
                        PowerManager.this.mService.updateWakeLockWorkSource(this.mToken, this.mWorkSource, this.mHistoryTag);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }

        public String toString() {
            String str;
            synchronized (this.mToken) {
                str = "WakeLock{" + Integer.toHexString(System.identityHashCode(this)) + " held=" + this.mHeld + ", refCount=" + this.mInternalCount + "}";
            }
            return str;
        }

        public Runnable wrap(Runnable runnable) {
            acquire();
            return new android.accessibilityservice.a(this, runnable, 1);
        }

        public void release(int i2) {
            synchronized (this.mToken) {
                int i3 = this.mInternalCount - 1;
                this.mInternalCount = i3;
                if ((65536 & i2) == 0) {
                    this.mExternalCount--;
                }
                if (!this.mRefCounted || i3 == 0) {
                    PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
                    if (this.mHeld) {
                        Trace.asyncTraceEnd(131072L, this.mTraceName, 0);
                        try {
                            PowerManager.this.mService.releaseWakeLock(this.mToken, i2);
                            this.mHeld = false;
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                }
                if (this.mRefCounted && this.mExternalCount < 0) {
                    throw new RuntimeException("WakeLock under-locked " + this.mTag);
                }
            }
        }

        public void acquire(long j2) {
            synchronized (this.mToken) {
                acquireLocked();
                PowerManager.this.mHandler.postDelayed(this.mReleaser, j2);
            }
        }
    }

    public PowerManager(Context context, IPowerManager iPowerManager, Handler handler) {
        this.mContext = context;
        this.mService = iPowerManager;
        this.mHandler = handler;
    }

    public static void validateWakeLockParameters(int i2, String str) {
        int i3 = i2 & 65535;
        if (i3 != 1 && i3 != 6 && i3 != 10 && i3 != 26 && i3 != 32 && i3 != 64 && i3 != 128) {
            throw new IllegalArgumentException("Must specify a valid wake lock level.");
        }
        if (str == null) {
            throw new IllegalArgumentException("The tag must not be null.");
        }
    }

    public void boostScreenBrightness(long j2) {
        try {
            this.mService.boostScreenBrightness(j2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getDefaultScreenBrightnessForVrSetting() {
        return this.mContext.getResources().getInteger(R.integer.config_screenBrightnessForVrSettingDefault);
    }

    public int getDefaultScreenBrightnessSetting() {
        return this.mContext.getResources().getInteger(R.integer.config_screenBrightnessSettingDefault);
    }

    public int getLastShutdownReason() {
        try {
            return this.mService.getLastShutdownReason();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getMaximumScreenBrightnessForVrSetting() {
        return this.mContext.getResources().getInteger(R.integer.config_screenBrightnessForVrSettingMaximum);
    }

    public int getMaximumScreenBrightnessSetting() {
        return this.mContext.getResources().getInteger(R.integer.config_screenBrightnessSettingMaximum);
    }

    public int getMinimumScreenBrightnessForVrSetting() {
        return this.mContext.getResources().getInteger(R.integer.config_screenBrightnessForVrSettingMinimum);
    }

    public int getMinimumScreenBrightnessSetting() {
        return this.mContext.getResources().getInteger(R.integer.config_screenBrightnessSettingMinimum);
    }

    public PowerSaveState getPowerSaveState(int i2) {
        try {
            return this.mService.getPowerSaveState(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void goToSleep(long j2) {
        goToSleep(j2, 0, 0);
    }

    public boolean isDeviceIdleMode() {
        try {
            return this.mService.isDeviceIdleMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isIgnoringBatteryOptimizations(String str) {
        synchronized (this) {
            if (this.mIDeviceIdleController == null) {
                this.mIDeviceIdleController = IDeviceIdleController.Stub.asInterface(ServiceManager.getService(Context.DEVICE_IDLE_CONTROLLER));
            }
        }
        try {
            return this.mIDeviceIdleController.isPowerSaveWhitelistApp(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isInteractive() {
        try {
            return this.mService.isInteractive();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isLightDeviceIdleMode() {
        try {
            return this.mService.isLightDeviceIdleMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isPowerSaveMode() {
        try {
            return this.mService.isPowerSaveMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean isScreenBrightnessBoosted() {
        return false;
    }

    @Deprecated
    public boolean isScreenOn() {
        return isInteractive();
    }

    public boolean isSustainedPerformanceModeSupported() {
        return this.mContext.getResources().getBoolean(R.bool.config_sustainedPerformanceModeSupported);
    }

    public boolean isWakeLockLevelSupported(int i2) {
        try {
            return this.mService.isWakeLockLevelSupported(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void nap(long j2) {
        try {
            this.mService.nap(j2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PrfmLock newPrfmLock(String str, int i2) {
        return new PrfmLock(str, this.mContext.getOpPackageName(), i2);
    }

    public WakeLock newWakeLock(int i2, String str) {
        validateWakeLockParameters(i2, str);
        return new WakeLock(i2, str, this.mContext.getOpPackageName());
    }

    public void reboot(String str) {
        try {
            this.mService.reboot(false, str, true);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void rebootSafeMode() {
        try {
            this.mService.rebootSafeMode(false, true);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setBacklightBrightness(int i2) {
        try {
            this.mService.setTemporaryScreenBrightnessSettingOverride(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean setPowerSaveMode(boolean z2) {
        try {
            return this.mService.setPowerSaveMode(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void shutdown(boolean z2, String str, boolean z3) {
        try {
            this.mService.shutdown(z2, str, z3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void userActivity(long j2, boolean z2) {
        userActivity(j2, 0, z2 ? 1 : 0);
    }

    public void wakeUp(long j2) {
        try {
            this.mService.wakeUp(j2, "wakeUp", this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void goToSleep(long j2, int i2, int i3) {
        try {
            this.mService.goToSleep(j2, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void userActivity(long j2, int i2, int i3) {
        try {
            this.mService.userActivity(j2, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void wakeUp(long j2, String str) {
        try {
            this.mService.wakeUp(j2, str, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
