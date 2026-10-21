package android.app;

import android.content.ComponentName;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.service.voice.IVoiceInteractionSession;
import android.util.SparseIntArray;
import com.android.internal.app.IVoiceInteractor;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityManagerInternal {
    public static final int APP_TRANSITION_SAVED_SURFACE = 0;
    public static final int APP_TRANSITION_SNAPSHOT = 4;
    public static final int APP_TRANSITION_SPLASH_SCREEN = 1;
    public static final int APP_TRANSITION_TIMEOUT = 3;
    public static final int APP_TRANSITION_WINDOWS_DRAWN = 2;

    public static abstract class SleepToken {
        public abstract void release();
    }

    public abstract SleepToken acquireSleepToken(String str, int i2);

    public abstract String checkContentProviderAccess(String str, int i2);

    public abstract void clearSavedANRState();

    public abstract ComponentName getHomeActivityForUser(int i2);

    public abstract List<IBinder> getTopVisibleActivities();

    public abstract int getUidProcessState(int i2);

    public abstract void grantUriPermissionFromIntent(int i2, String str, Intent intent, int i3);

    public abstract boolean isSystemReady();

    public abstract void killForegroundAppsForUser(int i2);

    public abstract void notifyAppTransitionCancelled();

    public abstract void notifyAppTransitionFinished();

    public abstract void notifyAppTransitionStarting(SparseIntArray sparseIntArray, long j2);

    public abstract void notifyDockedStackMinimizedChanged(boolean z2);

    public abstract void notifyKeyguardFlagsChanged(Runnable runnable);

    public abstract void notifyKeyguardTrustedChanged();

    public abstract void notifyNetworkPolicyRulesUpdated(int i2, long j2);

    public abstract void onLocalVoiceInteractionStarted(IBinder iBinder, IVoiceInteractionSession iVoiceInteractionSession, IVoiceInteractor iVoiceInteractor);

    public abstract void onUserRemoved(int i2);

    public abstract void onWakefulnessChanged(int i2);

    public abstract void saveANRState(String str);

    public abstract void setDeviceIdleWhitelist(int[] iArr);

    public abstract void setFocusedActivity(IBinder iBinder);

    public abstract void setHasOverlayUi(int i2, boolean z2);

    public abstract void setPendingIntentWhitelistDuration(IIntentSender iIntentSender, IBinder iBinder, long j2);

    public abstract void setVr2dDisplayId(int i2);

    public abstract int startActivitiesAsPackage(String str, int i2, Intent[] intentArr, Bundle bundle);

    public abstract int startIsolatedProcess(String str, String[] strArr, String str2, String str3, int i2, Runnable runnable);

    public abstract void updateDeviceIdleTempWhitelist(int[] iArr, int i2, boolean z2);

    public abstract void updatePersistentConfigurationForUser(Configuration configuration, int i2);
}
