package com.android.internal.app;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public class ResolverListController {
    private static final boolean DEBUG = false;
    private static final String TAG = "ResolverListController";
    private boolean isComputed;
    private final Context mContext;
    private final int mLaunchedFromUid;
    Object mLock;
    private final String mReferrerPackage;

    @GuardedBy("mLock")
    private ResolverComparator mResolverComparator;
    private final Intent mTargetIntent;
    private final PackageManager mpm;

    public class ComputeCallback implements ResolverComparator.AfterCompute {
        private CountDownLatch mFinishComputeSignal;

        public ComputeCallback(CountDownLatch countDownLatch) {
            this.mFinishComputeSignal = countDownLatch;
        }

        @Override // com.android.internal.app.ResolverComparator.AfterCompute
        public void afterCompute() {
            this.mFinishComputeSignal.countDown();
        }
    }

    public ResolverListController(Context context, PackageManager packageManager, Intent intent, String str, int i2) {
        Object obj = new Object();
        this.mLock = obj;
        this.isComputed = false;
        this.mContext = context;
        this.mpm = packageManager;
        this.mLaunchedFromUid = i2;
        this.mTargetIntent = intent;
        this.mReferrerPackage = str;
        synchronized (obj) {
            this.mResolverComparator = new ResolverComparator(context, intent, str, null);
        }
    }

    private static boolean isSameResolvedComponent(ResolveInfo resolveInfo, ResolverActivity.ResolvedComponentInfo resolvedComponentInfo) {
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        return activityInfo.packageName.equals(resolvedComponentInfo.name.getPackageName()) && activityInfo.name.equals(resolvedComponentInfo.name.getClassName());
    }

    public void addResolveListDedupe(List<ResolverActivity.ResolvedComponentInfo> list, Intent intent, List<ResolveInfo> list2) {
        boolean z2;
        int size = list2.size();
        int size2 = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ResolveInfo resolveInfo = list2.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    z2 = false;
                    break;
                }
                ResolverActivity.ResolvedComponentInfo resolvedComponentInfo = list.get(i3);
                if (isSameResolvedComponent(resolveInfo, resolvedComponentInfo)) {
                    resolvedComponentInfo.add(intent, resolveInfo);
                    z2 = true;
                    break;
                }
                i3++;
            }
            if (!z2) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                ResolverActivity.ResolvedComponentInfo resolvedComponentInfo2 = new ResolverActivity.ResolvedComponentInfo(componentName, intent, resolveInfo);
                resolvedComponentInfo2.setPinned(isComponentPinned(componentName));
                list.add(resolvedComponentInfo2);
            }
        }
    }

    public void destroy() {
        synchronized (this.mLock) {
            ResolverComparator resolverComparator = this.mResolverComparator;
            if (resolverComparator != null) {
                resolverComparator.destroy();
            }
            this.mResolverComparator = null;
        }
    }

    public ArrayList<ResolverActivity.ResolvedComponentInfo> filterIneligibleActivities(List<ResolverActivity.ResolvedComponentInfo> list, boolean z2) {
        ArrayList<ResolverActivity.ResolvedComponentInfo> arrayList = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            ActivityInfo activityInfo = list.get(size).getResolveInfoAt(0).activityInfo;
            int iCheckComponentPermission = ActivityManager.checkComponentPermission(activityInfo.permission, this.mLaunchedFromUid, activityInfo.applicationInfo.uid, activityInfo.exported);
            boolean z3 = (activityInfo.applicationInfo.flags & 1073741824) != 0;
            if (iCheckComponentPermission != 0 || z3 || isComponentFiltered(activityInfo.getComponentName())) {
                if (z2 && arrayList == null) {
                    arrayList = new ArrayList<>(list);
                }
                list.remove(size);
            }
        }
        return arrayList;
    }

    public ArrayList<ResolverActivity.ResolvedComponentInfo> filterLowPriority(List<ResolverActivity.ResolvedComponentInfo> list, boolean z2) {
        ResolveInfo resolveInfoAt = list.get(0).getResolveInfoAt(0);
        int size = list.size();
        ArrayList<ResolverActivity.ResolvedComponentInfo> arrayList = null;
        for (int i2 = 1; i2 < size; i2++) {
            ResolveInfo resolveInfoAt2 = list.get(i2).getResolveInfoAt(0);
            if (resolveInfoAt.priority != resolveInfoAt2.priority || resolveInfoAt.isDefault != resolveInfoAt2.isDefault) {
                while (i2 < size) {
                    if (z2 && arrayList == null) {
                        arrayList = new ArrayList<>(list);
                    }
                    list.remove(i2);
                    size--;
                }
            }
        }
        return arrayList;
    }

    public ResolveInfo getLastChosen() {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        Intent intent = this.mTargetIntent;
        return packageManager.getLastChosenActivity(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 65536);
    }

    public List<ResolverActivity.ResolvedComponentInfo> getResolversForIntent(boolean z2, boolean z3, List<Intent> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            Intent intent = list.get(i2);
            if (intent != null && (intent.getFlags() & Integer.MIN_VALUE) != 0) {
                intent.setFlags(intent.getFlags() & Integer.MAX_VALUE);
                Log.d(TAG, "Clear flag Intent.FLAG_FOR_APPCLONE ");
            }
            List<ResolveInfo> listQueryIntentActivities = this.mpm.queryIntentActivities(intent, (z2 ? 64 : 0) | 65536 | (z3 ? 128 : 0) | 8388608);
            for (int size2 = listQueryIntentActivities.size() - 1; size2 >= 0; size2--) {
                ActivityInfo activityInfo = listQueryIntentActivities.get(size2).activityInfo;
                if (activityInfo != null && !activityInfo.exported) {
                    listQueryIntentActivities.remove(size2);
                }
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            addResolveListDedupe(arrayList, intent, listQueryIntentActivities);
        }
        return arrayList;
    }

    public float getScore(ResolverActivity.DisplayResolveInfo displayResolveInfo) {
        synchronized (this.mLock) {
            ResolverComparator resolverComparator = this.mResolverComparator;
            if (resolverComparator == null) {
                return 0.0f;
            }
            return resolverComparator.getScore(displayResolveInfo.getResolvedComponentName());
        }
    }

    public boolean isComponentFiltered(ComponentName componentName) {
        return false;
    }

    public boolean isComponentPinned(ComponentName componentName) {
        return false;
    }

    public void setLastChosen(Intent intent, IntentFilter intentFilter, int i2) {
        AppGlobals.getPackageManager().setLastChosenActivity(intent, intent.resolveType(this.mContext.getContentResolver()), 65536, intentFilter, i2, intent.getComponent());
    }

    public void sort(List<ResolverActivity.ResolvedComponentInfo> list) {
        synchronized (this.mLock) {
            if (this.mResolverComparator == null) {
                Log.d(TAG, "Comparator has already been destroyed; skipped.");
                return;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.mResolverComparator.setCallBack(new ComputeCallback(countDownLatch));
            try {
                System.currentTimeMillis();
                if (!this.isComputed) {
                    this.mResolverComparator.compute(list);
                    countDownLatch.await();
                    this.isComputed = true;
                }
                Collections.sort(list, this.mResolverComparator);
                System.currentTimeMillis();
            } catch (InterruptedException e2) {
                Log.e(TAG, "Compute & Sort was interrupted: " + e2);
            }
        }
    }

    public void updateChooserCounts(String str, int i2, String str2) {
        synchronized (this.mLock) {
            ResolverComparator resolverComparator = this.mResolverComparator;
            if (resolverComparator != null) {
                resolverComparator.updateChooserCounts(str, i2, str2);
            }
        }
    }

    public void updateModel(ComponentName componentName) {
        synchronized (this.mLock) {
            ResolverComparator resolverComparator = this.mResolverComparator;
            if (resolverComparator != null) {
                resolverComparator.updateModel(componentName);
            }
        }
    }
}
