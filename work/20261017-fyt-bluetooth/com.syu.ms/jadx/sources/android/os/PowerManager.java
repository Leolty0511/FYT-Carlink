package android.os;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class PowerManager {
    public static final int ACQUIRE_CAUSES_WAKEUP = 268435456;
    public static final int BRIGHTNESS_OFF = 0;
    public static final int BRIGHTNESS_ON = 255;

    @Deprecated
    public static final int FULL_WAKE_LOCK = 26;
    public static final int GO_TO_SLEEP_REASON_DEVICE_ADMIN = 1;
    public static final int GO_TO_SLEEP_REASON_TIMEOUT = 2;
    public static final int GO_TO_SLEEP_REASON_USER = 0;
    public static final int ON_AFTER_RELEASE = 536870912;
    public static final int PARTIAL_WAKE_LOCK = 1;
    public static final int PROXIMITY_SCREEN_OFF_WAKE_LOCK = 32;

    @Deprecated
    public static final int SCREEN_BRIGHT_WAKE_LOCK = 10;

    @Deprecated
    public static final int SCREEN_DIM_WAKE_LOCK = 6;
    private static final String TAG = "PowerManager";
    public static final int USER_ACTIVITY_EVENT_BUTTON = 1;
    public static final int USER_ACTIVITY_EVENT_OTHER = 0;
    public static final int USER_ACTIVITY_EVENT_TOUCH = 2;
    public static final int USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS = 1;
    public static final int WAIT_FOR_PROXIMITY_NEGATIVE = 1;
    public static final int WAKE_LOCK_LEVEL_MASK = 65535;
    public final Context mContext;
    public final Handler mHandler;
    public final IPowerManager mService;

    public final class WakeLock {
        private int mCount;
        private final int mFlags;
        private boolean mHeld;
        private final String mPackageName;
        private final String mTag;
        private WorkSource mWorkSource;
        private boolean mRefCounted = true;
        private final Runnable mReleaser = new Runnable() { // from class: android.os.PowerManager.WakeLock.1
            @Override // java.lang.Runnable
            public void run() {
                WakeLock.this.release();
            }
        };
        private final IBinder mToken = new Binder();

        public WakeLock(int i2, String str, String str2) {
            this.mFlags = i2;
            this.mTag = str;
            this.mPackageName = str2;
        }

        private void acquireLocked() {
            if (this.mRefCounted) {
                int i2 = this.mCount;
                this.mCount = i2 + 1;
                if (i2 != 0) {
                    return;
                }
            }
            PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
            try {
                PowerManager.this.mService.acquireWakeLock(this.mToken, this.mFlags, this.mTag, this.mPackageName, this.mWorkSource);
            } catch (RemoteException unused) {
            }
            this.mHeld = true;
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
                    try {
                        PowerManager.this.mService.releaseWakeLock(this.mToken, 0);
                    } catch (RemoteException unused) {
                    }
                }
            }
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

        public void setReferenceCounted(boolean z2) {
            synchronized (this.mToken) {
                this.mRefCounted = z2;
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
                        PowerManager.this.mService.updateWakeLockWorkSource(this.mToken, this.mWorkSource);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }

        public String toString() {
            String str;
            synchronized (this.mToken) {
                str = "WakeLock{" + Integer.toHexString(System.identityHashCode(this)) + " held=" + this.mHeld + ", refCount=" + this.mCount + "}";
            }
            return str;
        }

        /* JADX WARN: Code duplicated, block: B:24:0x001c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:8:0x000f A[Catch: all -> 0x0047, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:13:0x0028, B:15:0x002c, B:17:0x002e, B:18:0x0046, B:8:0x000f, B:10:0x001c, B:12:0x0026), top: B:23:0x0003 }] */
        public void release(int i2) {
            synchronized (this.mToken) {
                if (this.mRefCounted) {
                    int i3 = this.mCount - 1;
                    this.mCount = i3;
                    if (i3 == 0) {
                        PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
                        if (this.mHeld) {
                            try {
                                PowerManager.this.mService.releaseWakeLock(this.mToken, i2);
                            } catch (RemoteException unused) {
                            }
                            this.mHeld = false;
                        }
                    }
                } else {
                    PowerManager.this.mHandler.removeCallbacks(this.mReleaser);
                    if (this.mHeld) {
                        PowerManager.this.mService.releaseWakeLock(this.mToken, i2);
                        this.mHeld = false;
                    }
                }
                if (this.mCount < 0) {
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

    public static boolean useScreenAutoBrightnessAdjustmentFeature() {
        return SystemProperties.getBoolean("persist.power.useautobrightadj", false);
    }

    public static boolean useTwilightAdjustmentFeature() {
        return SystemProperties.getBoolean("persist.power.usetwilightadj", false);
    }

    public static void validateWakeLockParameters(int i2, String str) {
        int i3 = i2 & 65535;
        if (i3 != 1 && i3 != 6 && i3 != 10 && i3 != 26 && i3 != 32) {
            throw new IllegalArgumentException("Must specify a valid wake lock level.");
        }
        if (str == null) {
            throw new IllegalArgumentException("The tag must not be null.");
        }
    }

    public int getDefaultScreenBrightnessSetting() {
        return this.mContext.getResources().getInteger(17694764);
    }

    public int getMaximumScreenBrightnessSetting() {
        return this.mContext.getResources().getInteger(17694763);
    }

    public int getMinimumScreenBrightnessSetting() {
        return this.mContext.getResources().getInteger(17694762);
    }

    public void goToSleep(long j2) {
        try {
            this.mService.goToSleep(j2, 0);
        } catch (RemoteException unused) {
        }
    }

    public boolean isScreenOn() {
        try {
            return this.mService.isScreenOn();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isWakeLockLevelSupported(int i2) {
        try {
            return this.mService.isWakeLockLevelSupported(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void nap(long j2) {
        try {
            this.mService.nap(j2);
        } catch (RemoteException unused) {
        }
    }

    public WakeLock newWakeLock(int i2, String str) {
        validateWakeLockParameters(i2, str);
        return new WakeLock(i2, str, this.mContext.getOpPackageName());
    }

    public void reboot(String str) {
        try {
            this.mService.reboot(false, str, true);
        } catch (RemoteException unused) {
        }
    }

    public void setBacklightBrightness(int i2) {
        try {
            this.mService.setTemporaryScreenBrightnessSettingOverride(i2);
        } catch (RemoteException unused) {
        }
    }

    public void userActivity(long j2, boolean z2) {
        try {
            this.mService.userActivity(j2, 0, z2 ? 1 : 0);
        } catch (RemoteException unused) {
        }
    }

    public void wakeUp(long j2) {
        try {
            this.mService.wakeUp(j2);
        } catch (RemoteException unused) {
        }
    }
}
