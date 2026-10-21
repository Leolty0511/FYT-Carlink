package com.android.internal.os;

import android.util.ArrayMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class RpmStats {
    public Map<String, PowerStatePlatformSleepState> mPlatformLowPowerStats = new ArrayMap();
    public Map<String, PowerStateSubsystem> mSubsystemLowPowerStats = new ArrayMap();

    public static class PowerStateElement {
        public int mCount;
        public long mTimeMs;

        private PowerStateElement(long j2, int i2) {
            this.mTimeMs = j2;
            this.mCount = i2;
        }
    }

    public static class PowerStatePlatformSleepState {
        public int mCount;
        public long mTimeMs;
        public Map<String, PowerStateElement> mVoters = new ArrayMap();

        public void putVoter(String str, long j2, int i2) {
            PowerStateElement powerStateElement = this.mVoters.get(str);
            if (powerStateElement == null) {
                this.mVoters.put(str, new PowerStateElement(j2, i2));
            } else {
                powerStateElement.mTimeMs = j2;
                powerStateElement.mCount = i2;
            }
        }
    }

    public static class PowerStateSubsystem {
        public Map<String, PowerStateElement> mStates = new ArrayMap();

        public void putState(String str, long j2, int i2) {
            PowerStateElement powerStateElement = this.mStates.get(str);
            if (powerStateElement == null) {
                this.mStates.put(str, new PowerStateElement(j2, i2));
            } else {
                powerStateElement.mTimeMs = j2;
                powerStateElement.mCount = i2;
            }
        }
    }

    public PowerStatePlatformSleepState getAndUpdatePlatformState(String str, long j2, int i2) {
        PowerStatePlatformSleepState powerStatePlatformSleepState = this.mPlatformLowPowerStats.get(str);
        if (powerStatePlatformSleepState == null) {
            powerStatePlatformSleepState = new PowerStatePlatformSleepState();
            this.mPlatformLowPowerStats.put(str, powerStatePlatformSleepState);
        }
        powerStatePlatformSleepState.mTimeMs = j2;
        powerStatePlatformSleepState.mCount = i2;
        return powerStatePlatformSleepState;
    }

    public PowerStateSubsystem getSubsystem(String str) {
        PowerStateSubsystem powerStateSubsystem = this.mSubsystemLowPowerStats.get(str);
        if (powerStateSubsystem != null) {
            return powerStateSubsystem;
        }
        PowerStateSubsystem powerStateSubsystem2 = new PowerStateSubsystem();
        this.mSubsystemLowPowerStats.put(str, powerStateSubsystem2);
        return powerStateSubsystem2;
    }
}
