package com.android.internal.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import java.util.HashSet;
import o.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class PackageMonitor extends BroadcastReceiver {
    public static final int PACKAGE_PERMANENT_CHANGE = 3;
    public static final int PACKAGE_TEMPORARY_CHANGE = 2;
    public static final int PACKAGE_UNCHANGED = 0;
    public static final int PACKAGE_UPDATING = 1;
    public static final IntentFilter sExternalFilt;
    public static final IntentFilter sNonDataFilt;
    public static final IntentFilter sPackageFilt;
    public String[] mAppearingPackages;
    public int mChangeType;
    public String[] mDisappearingPackages;
    public String[] mModifiedPackages;
    public Context mRegisteredContext;
    public Handler mRegisteredHandler;
    public boolean mSomePackagesChanged;
    public final HashSet<String> mUpdatingPackages = new HashSet<>();
    public int mChangeUserId = -10000;
    public String[] mTempArray = new String[1];

    static {
        IntentFilter intentFilter = new IntentFilter();
        sPackageFilt = intentFilter;
        IntentFilter intentFilter2 = new IntentFilter();
        sNonDataFilt = intentFilter2;
        IntentFilter intentFilter3 = new IntentFilter();
        sExternalFilt = intentFilter3;
        intentFilter.addAction(Intent.ACTION_PACKAGE_ADDED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_REMOVED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_CHANGED);
        intentFilter.addAction(Intent.ACTION_QUERY_PACKAGE_RESTART);
        intentFilter.addAction(Intent.ACTION_PACKAGE_RESTARTED);
        intentFilter.addAction(Intent.ACTION_UID_REMOVED);
        intentFilter.addDataScheme("package");
        intentFilter2.addAction(Intent.ACTION_UID_REMOVED);
        intentFilter2.addAction(Intent.ACTION_USER_STOPPED);
        intentFilter3.addAction(Intent.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE);
        intentFilter3.addAction(Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE);
    }

    public boolean anyPackagesAppearing() {
        return this.mAppearingPackages != null;
    }

    public boolean anyPackagesDisappearing() {
        return this.mDisappearingPackages != null;
    }

    public boolean didSomePackagesChange() {
        return this.mSomePackagesChanged;
    }

    public int getChangingUserId() {
        return this.mChangeUserId;
    }

    public String getPackageName(Intent intent) {
        Uri data = intent.getData();
        if (data != null) {
            return data.getSchemeSpecificPart();
        }
        return null;
    }

    public Handler getRegisteredHandler() {
        return this.mRegisteredHandler;
    }

    public int isPackageAppearing(String str) {
        String[] strArr = this.mAppearingPackages;
        if (strArr == null) {
            return 0;
        }
        for (int length = strArr.length - 1; length >= 0; length--) {
            if (str.equals(this.mAppearingPackages[length])) {
                return this.mChangeType;
            }
        }
        return 0;
    }

    public int isPackageDisappearing(String str) {
        String[] strArr = this.mDisappearingPackages;
        if (strArr == null) {
            return 0;
        }
        for (int length = strArr.length - 1; length >= 0; length--) {
            if (str.equals(this.mDisappearingPackages[length])) {
                return this.mChangeType;
            }
        }
        return 0;
    }

    public boolean isPackageModified(String str) {
        String[] strArr = this.mModifiedPackages;
        if (strArr == null) {
            return false;
        }
        for (int length = strArr.length - 1; length >= 0; length--) {
            if (str.equals(this.mModifiedPackages[length])) {
                return true;
            }
        }
        return false;
    }

    public boolean isPackageUpdating(String str) {
        boolean zContains;
        synchronized (this.mUpdatingPackages) {
            zContains = this.mUpdatingPackages.contains(str);
        }
        return zContains;
    }

    public void onBeginPackageChanges() {
    }

    public void onFinishPackageChanges() {
    }

    public boolean onHandleForceStop(Intent intent, String[] strArr, int i2, boolean z2) {
        return false;
    }

    public void onHandleUserStop(Intent intent, int i2) {
    }

    public void onPackageAdded(String str, int i2) {
    }

    public void onPackageAppeared(String str, int i2) {
    }

    public boolean onPackageChanged(String str, int i2, String[] strArr) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void onPackageDisappeared(String str, int i2) {
    }

    public void onPackageModified(String str) {
    }

    public void onPackageRemoved(String str, int i2) {
    }

    public void onPackageRemovedAllUsers(String str, int i2) {
    }

    public void onPackageUpdateFinished(String str, int i2) {
    }

    public void onPackageUpdateStarted(String str, int i2) {
    }

    public void onPackagesAvailable(String[] strArr) {
    }

    public void onPackagesUnavailable(String[] strArr) {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int intExtra = intent.getIntExtra(Intent.EXTRA_USER_HANDLE, -10000);
        this.mChangeUserId = intExtra;
        if (intExtra == -10000) {
            throw new IllegalArgumentException("Intent broadcast does not contain user handle: " + intent);
        }
        onBeginPackageChanges();
        this.mAppearingPackages = null;
        this.mDisappearingPackages = null;
        int i2 = 0;
        this.mSomePackagesChanged = false;
        String action = intent.getAction();
        if (Intent.ACTION_PACKAGE_ADDED.equals(action)) {
            String packageName = getPackageName(intent);
            int intExtra2 = intent.getIntExtra(Intent.EXTRA_UID, 0);
            this.mSomePackagesChanged = true;
            if (packageName != null) {
                String[] strArr = this.mTempArray;
                this.mAppearingPackages = strArr;
                strArr[0] = packageName;
                if (intent.getBooleanExtra(Intent.EXTRA_REPLACING, false)) {
                    this.mModifiedPackages = this.mTempArray;
                    this.mChangeType = 1;
                    onPackageUpdateFinished(packageName, intExtra2);
                    onPackageModified(packageName);
                } else {
                    this.mChangeType = 3;
                    onPackageAdded(packageName, intExtra2);
                }
                onPackageAppeared(packageName, this.mChangeType);
                if (this.mChangeType == 1) {
                    synchronized (this.mUpdatingPackages) {
                        this.mUpdatingPackages.remove(packageName);
                    }
                }
            }
        } else if (Intent.ACTION_PACKAGE_REMOVED.equals(action)) {
            String packageName2 = getPackageName(intent);
            int intExtra3 = intent.getIntExtra(Intent.EXTRA_UID, 0);
            if (packageName2 != null) {
                String[] strArr2 = this.mTempArray;
                this.mDisappearingPackages = strArr2;
                strArr2[0] = packageName2;
                if (intent.getBooleanExtra(Intent.EXTRA_REPLACING, false)) {
                    this.mChangeType = 1;
                    synchronized (this.mUpdatingPackages) {
                    }
                    onPackageUpdateStarted(packageName2, intExtra3);
                } else {
                    this.mChangeType = 3;
                    this.mSomePackagesChanged = true;
                    onPackageRemoved(packageName2, intExtra3);
                    if (intent.getBooleanExtra(Intent.EXTRA_REMOVED_FOR_ALL_USERS, false)) {
                        onPackageRemovedAllUsers(packageName2, intExtra3);
                    }
                }
                onPackageDisappeared(packageName2, this.mChangeType);
            }
        } else if (Intent.ACTION_PACKAGE_CHANGED.equals(action)) {
            String packageName3 = getPackageName(intent);
            int intExtra4 = intent.getIntExtra(Intent.EXTRA_UID, 0);
            String[] stringArrayExtra = intent.getStringArrayExtra(Intent.EXTRA_CHANGED_COMPONENT_NAME_LIST);
            if (packageName3 != null) {
                String[] strArr3 = this.mTempArray;
                this.mModifiedPackages = strArr3;
                strArr3[0] = packageName3;
                this.mChangeType = 3;
                if (onPackageChanged(packageName3, intExtra4, stringArrayExtra)) {
                    this.mSomePackagesChanged = true;
                }
                onPackageModified(packageName3);
            }
        } else {
            if (Intent.ACTION_QUERY_PACKAGE_RESTART.equals(action)) {
                String[] stringArrayExtra2 = intent.getStringArrayExtra(Intent.EXTRA_PACKAGES);
                this.mDisappearingPackages = stringArrayExtra2;
                this.mChangeType = 2;
                if (onHandleForceStop(intent, stringArrayExtra2, intent.getIntExtra(Intent.EXTRA_UID, 0), false)) {
                    setResultCode(-1);
                }
            } else if (Intent.ACTION_PACKAGE_RESTARTED.equals(action)) {
                String[] strArr4 = {getPackageName(intent)};
                this.mDisappearingPackages = strArr4;
                this.mChangeType = 2;
                onHandleForceStop(intent, strArr4, intent.getIntExtra(Intent.EXTRA_UID, 0), true);
            } else if (Intent.ACTION_UID_REMOVED.equals(action)) {
                onUidRemoved(intent.getIntExtra(Intent.EXTRA_UID, 0));
            } else if (Intent.ACTION_USER_STOPPED.equals(action)) {
                if (intent.hasExtra(Intent.EXTRA_USER_HANDLE)) {
                    onHandleUserStop(intent, intent.getIntExtra(Intent.EXTRA_USER_HANDLE, 0));
                }
            } else if (Intent.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE.equals(action)) {
                String[] stringArrayExtra3 = intent.getStringArrayExtra(Intent.EXTRA_CHANGED_PACKAGE_LIST);
                this.mAppearingPackages = stringArrayExtra3;
                this.mChangeType = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false) ? 1 : 2;
                this.mSomePackagesChanged = true;
                if (stringArrayExtra3 != null) {
                    onPackagesAvailable(stringArrayExtra3);
                    while (i2 < stringArrayExtra3.length) {
                        onPackageAppeared(stringArrayExtra3[i2], this.mChangeType);
                        i2++;
                    }
                }
            } else if (Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE.equals(action)) {
                String[] stringArrayExtra4 = intent.getStringArrayExtra(Intent.EXTRA_CHANGED_PACKAGE_LIST);
                this.mDisappearingPackages = stringArrayExtra4;
                this.mChangeType = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false) ? 1 : 2;
                this.mSomePackagesChanged = true;
                if (stringArrayExtra4 != null) {
                    onPackagesUnavailable(stringArrayExtra4);
                    while (i2 < stringArrayExtra4.length) {
                        onPackageDisappeared(stringArrayExtra4[i2], this.mChangeType);
                        i2++;
                    }
                }
            }
        }
        if (this.mSomePackagesChanged) {
            onSomePackagesChanged();
        }
        onFinishPackageChanges();
        this.mChangeUserId = -10000;
    }

    public void onSomePackagesChanged() {
    }

    public void onUidRemoved(int i2) {
    }

    public void register(Context context, Looper looper, boolean z2) {
        register(context, looper, null, z2);
    }

    public void unregister() {
        Context context = this.mRegisteredContext;
        if (context == null) {
            throw new IllegalStateException("Not registered");
        }
        context.unregisterReceiver(this);
        this.mRegisteredContext = null;
    }

    public void register(Context context, Looper looper, UserHandle userHandle, boolean z2) {
        if (this.mRegisteredContext != null) {
            throw new IllegalStateException("Already registered");
        }
        this.mRegisteredContext = context;
        if (looper == null) {
            this.mRegisteredHandler = a.b();
        } else {
            this.mRegisteredHandler = new Handler(looper);
        }
        if (userHandle != null) {
            context.registerReceiverAsUser(this, userHandle, sPackageFilt, null, this.mRegisteredHandler);
            context.registerReceiverAsUser(this, userHandle, sNonDataFilt, null, this.mRegisteredHandler);
            if (z2) {
                context.registerReceiverAsUser(this, userHandle, sExternalFilt, null, this.mRegisteredHandler);
                return;
            }
            return;
        }
        context.registerReceiver(this, sPackageFilt, null, this.mRegisteredHandler);
        context.registerReceiver(this, sNonDataFilt, null, this.mRegisteredHandler);
        if (z2) {
            context.registerReceiver(this, sExternalFilt, null, this.mRegisteredHandler);
        }
    }
}
