package android.app.usage;

import android.content.ComponentName;
import android.content.res.Configuration;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class UsageStatsManagerInternal {

    public static abstract class AppIdleStateChangeListener {
        public abstract void onAppIdleStateChanged(String str, int i2, boolean z2);

        public abstract void onParoleStateChanged(boolean z2);
    }

    public static abstract class AppStateEventChangeListener {
        public abstract void onAppStateEventChanged(String str, int i2, int i3);
    }

    public abstract void addAppIdleStateChangeListener(AppIdleStateChangeListener appIdleStateChangeListener);

    public abstract void addAppStateEventChangeListener(AppStateEventChangeListener appStateEventChangeListener);

    public abstract void applyRestoredPayload(int i2, String str, byte[] bArr);

    public abstract byte[] getBackupPayload(int i2, String str);

    public abstract int[] getIdleUidsForUser(int i2);

    public abstract boolean isAppIdle(String str, int i2, int i3);

    public abstract boolean isAppIdleParoleOn();

    public abstract void prepareShutdown();

    public abstract List<UsageStats> queryUsageStatsForUser(int i2, int i3, long j2, long j3, boolean z2);

    public abstract void removeAppIdleStateChangeListener(AppIdleStateChangeListener appIdleStateChangeListener);

    public abstract void removeAppStateEventChangeListener(AppStateEventChangeListener appStateEventChangeListener);

    public abstract void reportConfigurationChange(Configuration configuration, int i2);

    public abstract void reportContentProviderUsage(String str, String str2, int i2);

    public abstract void reportEvent(ComponentName componentName, int i2, int i3);

    public abstract void reportEvent(String str, int i2, int i3);

    public abstract void reportShortcutUsage(String str, String str2, int i2);

    public abstract void setAppIdleEnabled(boolean z2);

    public abstract void setAppInactive(String str, boolean z2, int i2);
}
