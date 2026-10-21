package android.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes.dex */
public final class AuxiliaryResolveInfo extends IntentFilter {
    public final Intent failureIntent;
    public final ComponentName installFailureActivity;
    public final boolean needsPhaseTwo;
    public final String packageName;
    public final InstantAppResolveInfo resolveInfo;
    public final String splitName;
    public final String token;
    public final int versionCode;

    public AuxiliaryResolveInfo(InstantAppResolveInfo instantAppResolveInfo, IntentFilter intentFilter, String str, String str2, boolean z2, Intent intent) {
        super(intentFilter);
        this.resolveInfo = instantAppResolveInfo;
        this.packageName = instantAppResolveInfo.getPackageName();
        this.splitName = str;
        this.token = str2;
        this.needsPhaseTwo = z2;
        this.versionCode = instantAppResolveInfo.getVersionCode();
        this.failureIntent = intent;
        this.installFailureActivity = null;
    }

    public AuxiliaryResolveInfo(String str, String str2, ComponentName componentName, int i2, Intent intent) {
        this.packageName = str;
        this.installFailureActivity = componentName;
        this.splitName = str2;
        this.versionCode = i2;
        this.resolveInfo = null;
        this.token = null;
        this.needsPhaseTwo = false;
        this.failureIntent = intent;
    }
}
