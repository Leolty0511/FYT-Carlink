package com.android.internal.app;

import android.app.SearchManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.util.Log;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class AssistUtils {
    private static final String TAG = "AssistUtils";
    private final Context mContext;
    private final IVoiceInteractionManagerService mVoiceInteractionManagerService = IVoiceInteractionManagerService.Stub.asInterface(ServiceManager.getService(Context.VOICE_INTERACTION_MANAGER_SERVICE));

    public AssistUtils(Context context) {
        this.mContext = context;
    }

    public static boolean allowDisablingAssistDisclosure(Context context) {
        return context.getResources().getBoolean(R.bool.config_allowDisablingAssistDisclosure);
    }

    private static boolean isDisclosureEnabled(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), Settings.Secure.ASSIST_DISCLOSURE_ENABLED, 0) != 0;
    }

    public static boolean isPreinstalledAssistant(Context context, ComponentName componentName) {
        if (componentName == null) {
            return false;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(componentName.getPackageName(), 0);
            return applicationInfo.isSystemApp() || applicationInfo.isUpdatedSystemApp();
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean shouldDisclose(Context context, ComponentName componentName) {
        return (allowDisablingAssistDisclosure(context) && !isDisclosureEnabled(context) && isPreinstalledAssistant(context, componentName)) ? false : true;
    }

    public boolean activeServiceSupportsAssistGesture() {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            return iVoiceInteractionManagerService != null && iVoiceInteractionManagerService.activeServiceSupportsAssist();
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call activeServiceSupportsAssistGesture", e2);
            return false;
        }
    }

    public boolean activeServiceSupportsLaunchFromKeyguard() {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            return iVoiceInteractionManagerService != null && iVoiceInteractionManagerService.activeServiceSupportsLaunchFromKeyguard();
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call activeServiceSupportsLaunchFromKeyguard", e2);
            return false;
        }
    }

    public ComponentName getActiveServiceComponentName() {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            if (iVoiceInteractionManagerService != null) {
                return iVoiceInteractionManagerService.getActiveServiceComponentName();
            }
            return null;
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call getActiveServiceComponentName", e2);
            return null;
        }
    }

    public ComponentName getAssistComponentForUser(int i2) {
        String stringForUser = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), Settings.Secure.ASSISTANT, i2);
        if (stringForUser != null) {
            return ComponentName.unflattenFromString(stringForUser);
        }
        if (activeServiceSupportsAssistGesture()) {
            return getActiveServiceComponentName();
        }
        ResolveInfo resolveInfoResolveActivityAsUser = this.mContext.getPackageManager().resolveActivityAsUser(((SearchManager) this.mContext.getSystemService("search")).getAssistIntent(false), 65536, i2);
        if (resolveInfoResolveActivityAsUser == null) {
            return null;
        }
        ActivityInfo activityInfo = resolveInfoResolveActivityAsUser.activityInfo;
        return new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
    }

    public void hideCurrentSession() {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            if (iVoiceInteractionManagerService != null) {
                iVoiceInteractionManagerService.hideCurrentSession();
            }
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call hideCurrentSession", e2);
        }
    }

    public boolean isSessionRunning() {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            return iVoiceInteractionManagerService != null && iVoiceInteractionManagerService.isSessionRunning();
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call isSessionRunning", e2);
            return false;
        }
    }

    public void launchVoiceAssistFromKeyguard() {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            if (iVoiceInteractionManagerService != null) {
                iVoiceInteractionManagerService.launchVoiceAssistFromKeyguard();
            }
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call launchVoiceAssistFromKeyguard", e2);
        }
    }

    public void onLockscreenShown() {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            if (iVoiceInteractionManagerService != null) {
                iVoiceInteractionManagerService.onLockscreenShown();
            }
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call onLockscreenShown", e2);
        }
    }

    public void registerVoiceInteractionSessionListener(IVoiceInteractionSessionListener iVoiceInteractionSessionListener) {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            if (iVoiceInteractionManagerService != null) {
                iVoiceInteractionManagerService.registerVoiceInteractionSessionListener(iVoiceInteractionSessionListener);
            }
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to register voice interaction listener", e2);
        }
    }

    public boolean showSessionForActiveService(Bundle bundle, int i2, IVoiceInteractionSessionShowCallback iVoiceInteractionSessionShowCallback, IBinder iBinder) {
        try {
            IVoiceInteractionManagerService iVoiceInteractionManagerService = this.mVoiceInteractionManagerService;
            if (iVoiceInteractionManagerService != null) {
                return iVoiceInteractionManagerService.showSessionForActiveService(bundle, i2, iVoiceInteractionSessionShowCallback, iBinder);
            }
            return false;
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to call showSessionForActiveService", e2);
            return false;
        }
    }
}
