package com.android.internal.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.AppGlobals;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.service.notification.ZenModeConfig;
import android.util.Slog;
import android.view.View;
import android.widget.Toast;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class IntentForwarderActivity extends Activity {
    public static String FORWARD_INTENT_TO_MANAGED_PROFILE = "com.android.internal.app.ForwardIntentToManagedProfile";
    public static String FORWARD_INTENT_TO_PARENT = "com.android.internal.app.ForwardIntentToParent";
    public static String TAG = "IntentForwarderActivity";
    private Injector mInjector;

    public interface Injector {
        IPackageManager getIPackageManager();

        PackageManager getPackageManager();

        UserManager getUserManager();
    }

    public class InjectorImpl implements Injector {
        private InjectorImpl() {
        }

        @Override // com.android.internal.app.IntentForwarderActivity.Injector
        public IPackageManager getIPackageManager() {
            return AppGlobals.getPackageManager();
        }

        @Override // com.android.internal.app.IntentForwarderActivity.Injector
        public PackageManager getPackageManager() {
            return IntentForwarderActivity.this.getPackageManager();
        }

        @Override // com.android.internal.app.IntentForwarderActivity.Injector
        public UserManager getUserManager() {
            return (UserManager) IntentForwarderActivity.this.getSystemService(UserManager.class);
        }
    }

    private int getManagedProfile() {
        for (UserInfo userInfo : this.mInjector.getUserManager().getProfiles(UserHandle.myUserId())) {
            if (userInfo.isManagedProfile()) {
                return userInfo.id;
            }
        }
        Slog.wtf(TAG, FORWARD_INTENT_TO_MANAGED_PROFILE + " has been called, but there is no managed profile");
        return -10000;
    }

    private int getProfileParent() {
        UserInfo profileParent = this.mInjector.getUserManager().getProfileParent(UserHandle.myUserId());
        if (profileParent != null) {
            return profileParent.id;
        }
        Slog.wtf(TAG, FORWARD_INTENT_TO_PARENT + " has been called, but there is no parent");
        return -10000;
    }

    private void sanitizeIntent(Intent intent) {
        intent.setPackage(null);
        intent.setComponent(null);
    }

    public Intent canForward(Intent intent, int i2) {
        Intent selector;
        Intent intent2 = new Intent(intent);
        intent2.addFlags(View.SCROLLBARS_OUTSIDE_INSET);
        sanitizeIntent(intent2);
        if (!Intent.ACTION_CHOOSER.equals(intent2.getAction())) {
            selector = intent2;
        } else {
            if (intent2.hasExtra(Intent.EXTRA_INITIAL_INTENTS)) {
                Slog.wtf(TAG, "An chooser intent with extra initial intents cannot be forwarded to a different user");
                return null;
            }
            if (intent2.hasExtra(Intent.EXTRA_REPLACEMENT_EXTRAS)) {
                Slog.wtf(TAG, "A chooser intent with replacement extras cannot be forwarded to a different user");
                return null;
            }
            selector = (Intent) intent2.getParcelableExtra(Intent.EXTRA_INTENT);
            if (selector == null) {
                Slog.wtf(TAG, "Cannot forward a chooser intent with no extra android.intent.extra.INTENT");
                return null;
            }
        }
        if (intent2.getSelector() != null) {
            selector = intent2.getSelector();
        }
        String strResolveTypeIfNeeded = selector.resolveTypeIfNeeded(getContentResolver());
        sanitizeIntent(selector);
        try {
            if (this.mInjector.getIPackageManager().canForwardTo(selector, strResolveTypeIfNeeded, getUserId(), i2)) {
                return intent2;
            }
            return null;
        } catch (RemoteException unused) {
            Slog.e(TAG, "PackageManagerService is dead?");
        }
    }

    public Injector createInjector() {
        return new InjectorImpl();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        int managedProfile;
        int i2;
        String launchedFromPackage;
        ActivityInfo activityInfo;
        super.onCreate(bundle);
        this.mInjector = createInjector();
        Intent intent = getIntent();
        String className = intent.getComponent().getClassName();
        int launchedFromUid = -1;
        if (className.equals(FORWARD_INTENT_TO_PARENT)) {
            managedProfile = getProfileParent();
            i2 = R.string.forward_intent_to_owner;
        } else if (className.equals(FORWARD_INTENT_TO_MANAGED_PROFILE)) {
            managedProfile = getManagedProfile();
            i2 = R.string.forward_intent_to_work;
        } else {
            Slog.wtf(TAG, IntentForwarderActivity.class.getName().concat(" cannot be called directly"));
            managedProfile = -10000;
            i2 = -1;
        }
        if (managedProfile == -10000) {
            finish();
            return;
        }
        int userId = getUserId();
        Intent intentCanForward = canForward(intent, managedProfile);
        if (intentCanForward != null) {
            if (Intent.ACTION_CHOOSER.equals(intentCanForward.getAction())) {
                ((Intent) intentCanForward.getParcelableExtra(Intent.EXTRA_INTENT)).prepareToLeaveUser(userId);
            } else {
                intentCanForward.prepareToLeaveUser(userId);
            }
            ResolveInfo resolveInfoResolveActivityAsUser = this.mInjector.getPackageManager().resolveActivityAsUser(intentCanForward, 65536, managedProfile);
            boolean z2 = resolveInfoResolveActivityAsUser == null || (activityInfo = resolveInfoResolveActivityAsUser.activityInfo) == null || !ZenModeConfig.SYSTEM_AUTHORITY.equals(activityInfo.packageName) || !(ResolverActivity.class.getName().equals(resolveInfoResolveActivityAsUser.activityInfo.name) || ChooserActivity.class.getName().equals(resolveInfoResolveActivityAsUser.activityInfo.name));
            try {
                startActivityAsCaller(intentCanForward, null, false, managedProfile);
            } catch (RuntimeException e2) {
                try {
                    launchedFromUid = ActivityManager.getService().getLaunchedFromUid(getActivityToken());
                    launchedFromPackage = ActivityManager.getService().getLaunchedFromPackage(getActivityToken());
                } catch (RemoteException unused) {
                    launchedFromPackage = "?";
                }
                Slog.wtf(TAG, "Unable to launch as UID " + launchedFromUid + " package " + launchedFromPackage + ", while running in " + ActivityThread.currentProcessName(), e2);
            }
            if (z2) {
                Toast.makeText(this, getString(i2), 1).show();
            }
        } else {
            Slog.wtf(TAG, "the intent: " + intent + " cannot be forwarded from user " + userId + " to user " + managedProfile);
        }
        finish();
    }
}
