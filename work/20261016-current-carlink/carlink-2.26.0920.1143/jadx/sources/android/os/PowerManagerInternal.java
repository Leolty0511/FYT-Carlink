package android.os;

/* JADX INFO: loaded from: classes.dex */
public abstract class PowerManagerInternal {
    public static final int INTERACTION_DURATION_MASK = 65535;
    public static final int INTERACTION_SUBTYPE_MASK = 16711680;
    public static final int INTERACTION_SUBTYPE_SHIFT = 16;
    public static final int POWER_HINT_FLING_1 = 2147352576;
    public static final int POWER_HINT_SUBTYPE_BUTTON = 262144;
    public static final int POWER_HINT_SUBTYPE_FLING = 196608;
    public static final int POWER_HINT_SUBTYPE_LAUNCH = 131072;
    public static final int POWER_HINT_SUBTYPE_OTHER = 0;
    public static final int POWER_HINT_SUBTYPE_TOUCH = 65536;
    public static final int POWER_HINT_VENDOR = 16;
    public static final int POWER_HINT_VENDOR_CAMERA_HIGH_PERFORMANCE = 12;
    public static final int POWER_HINT_VENDOR_CAMERA_LOW_POWER = 14;
    public static final int POWER_HINT_VENDOR_CAMERA_PERFORMANCE = 9;
    public static final int POWER_HINT_VENDOR_DDR = 1;
    public static final int POWER_HINT_VENDOR_MODE_LOW_POWER = 2147418113;
    public static final int POWER_HINT_VENDOR_MODE_NORMAL = 2147418112;
    public static final int POWER_HINT_VENDOR_MODE_PERFORMANCE = 2147418116;
    public static final int POWER_HINT_VENDOR_MODE_POWER_SAVE = 2147418114;
    public static final int POWER_HINT_VENDOR_MODE_ULTRA_POWER_SAVE = 2147418115;
    public static final int POWER_HINT_VENDOR_MP4_PLAYBACK = 5;
    public static final int POWER_HINT_VENDOR_PERFORMANCE = 13;
    public static final int POWER_HINT_VENDOR_PERFORMANCE_CTS = 11;
    public static final int POWER_HINT_VENDOR_PERFORMANCE_GTS = 10;
    public static final int POWER_HINT_VENDOR_PERFORMANCE_MAX = 18;
    public static final int POWER_HINT_VENDOR_RADIO_CALL = 15;
    public static final int POWER_HINT_VENDOR_SCREENOFF_BT_DOWNLOAD = 16;
    public static final int POWER_HINT_VENDOR_SCREENOF_MP3_PLAYBACK = 7;
    public static final int POWER_HINT_VENDOR_SUBTYPE_MASK = 255;
    public static final int POWER_HINT_VENDOR_SUBTYPE_MAX = 40;
    public static final int POWER_HINT_VENDOR_VEDIO_1080P = 8;
    public static final int POWER_HINT_VENDOR_VIDEO_60FPS = 4;
    public static final int POWER_HINT_VENDOR_VIDEO_SYNC = 3;
    public static final int WAKEFULNESS_ASLEEP = 0;
    public static final int WAKEFULNESS_AWAKE = 1;
    public static final int WAKEFULNESS_DOZING = 3;
    public static final int WAKEFULNESS_DREAMING = 2;

    public interface LowPowerModeListener {
        int getServiceType();

        void onLowPowerModeChanged(PowerSaveState powerSaveState);
    }

    public interface PowerControllerInternalCallback {
        void onConstraintAppAcquireWakeLock(long j2, long j3);

        void onWakeLockAcquired(String str, String str2, int i2, int i3, WorkSource workSource);

        void onWakeLockChanging(String str, String str2, int i2, int i3, WorkSource workSource, String str3, String str4, int i4, int i5, WorkSource workSource2);

        void onWakeLockReleased(String str, String str2, int i2, int i3, WorkSource workSource);
    }

    public static abstract class WakeLockCallback {
        public abstract void onWakeLock(String str, String str2, int i2, long j2);
    }

    public static boolean isInteractive(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public static String wakefulnessToString(int i2) {
        if (i2 == 0) {
            return "Asleep";
        }
        if (i2 == 1) {
            return "Awake";
        }
        if (i2 != 2) {
            return i2 != 3 ? Integer.toString(i2) : "Dozing";
        }
        return "Dreaming";
    }

    public abstract void checkWakeLock(WakeLockCallback wakeLockCallback, long j2);

    public abstract void finishUidChanges();

    public abstract PowerSaveState getLowPowerState(int i2);

    public abstract int getSceneIdByName(String str);

    public abstract void powerHint(int i2, int i3);

    public abstract void registerLowPowerModeObserver(LowPowerModeListener lowPowerModeListener);

    public abstract void registerPowerControllerInternalCallback(PowerControllerInternalCallback powerControllerInternalCallback);

    public abstract boolean setDeviceIdleMode(boolean z2);

    public abstract void setDeviceIdleTempWhitelist(int[] iArr);

    public abstract void setDeviceIdleWhitelist(int[] iArr);

    public abstract void setDozeOverrideFromDreamManager(int i2, int i3);

    public abstract boolean setLightDeviceIdleMode(boolean z2);

    public abstract void setMaximumScreenOffTimeoutFromDeviceAdmin(int i2);

    public abstract void setScreenBrightnessOverrideFromWindowManager(int i2);

    public abstract void setUserActivityTimeoutOverrideFromWindowManager(long j2);

    public abstract void setUserInactiveOverrideFromWindowManager();

    public abstract void startUidChanges();

    public abstract void uidActive(int i2);

    public abstract void uidGone(int i2);

    public abstract void uidIdle(int i2);

    public abstract void updateUidProcState(int i2, int i3);

    public abstract void updateUidProcWakeLockDisabledState(int i2, boolean z2);

    public abstract void updateWakeLockDisabledThreshold(long j2);
}
