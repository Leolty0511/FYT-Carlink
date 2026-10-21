package android.app;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Binder;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import com.android.internal.content.ReferrerIntent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class LocalActivityManager {
    static final int CREATED = 2;
    static final int DESTROYED = 5;
    static final int INITIALIZING = 1;
    static final int RESTORED = 0;
    static final int RESUMED = 4;
    static final int STARTED = 3;
    private static final String TAG = "LocalActivityManager";
    private static final boolean localLOGV = false;
    private boolean mFinishing;
    private final Activity mParent;
    private LocalActivityRecord mResumed;
    private boolean mSingleMode;
    private final Map<String, LocalActivityRecord> mActivities = new HashMap();
    private final ArrayList<LocalActivityRecord> mActivityArray = new ArrayList<>();
    private int mCurState = 1;
    private final ActivityThread mActivityThread = ActivityThread.currentActivityThread();

    public static class LocalActivityRecord extends Binder {
        Activity activity;
        ActivityInfo activityInfo;
        int curState = 0;
        final String id;
        Bundle instanceState;
        Intent intent;
        Window window;

        public LocalActivityRecord(String str, Intent intent) {
            this.id = str;
            this.intent = intent;
        }
    }

    public LocalActivityManager(Activity activity, boolean z2) {
        this.mParent = activity;
        this.mSingleMode = z2;
    }

    private void moveToState(LocalActivityRecord localActivityRecord, int i2) {
        Activity.NonConfigurationInstances nonConfigurationInstances;
        int i3 = localActivityRecord.curState;
        if (i3 == 0 || i3 == 5) {
            return;
        }
        if (i3 == 1) {
            HashMap<String, Object> lastNonConfigurationChildInstances = this.mParent.getLastNonConfigurationChildInstances();
            Object obj = lastNonConfigurationChildInstances != null ? lastNonConfigurationChildInstances.get(localActivityRecord.id) : null;
            if (obj != null) {
                Activity.NonConfigurationInstances nonConfigurationInstances2 = new Activity.NonConfigurationInstances();
                nonConfigurationInstances2.activity = obj;
                nonConfigurationInstances = nonConfigurationInstances2;
            } else {
                nonConfigurationInstances = null;
            }
            if (localActivityRecord.activityInfo == null) {
                localActivityRecord.activityInfo = this.mActivityThread.resolveActivityInfo(localActivityRecord.intent);
            }
            Activity activityStartActivityNow = this.mActivityThread.startActivityNow(this.mParent, localActivityRecord.id, localActivityRecord.intent, localActivityRecord.activityInfo, localActivityRecord, localActivityRecord.instanceState, nonConfigurationInstances);
            localActivityRecord.activity = activityStartActivityNow;
            if (activityStartActivityNow == null) {
                return;
            }
            localActivityRecord.window = activityStartActivityNow.getWindow();
            localActivityRecord.instanceState = null;
            localActivityRecord.curState = 3;
            if (i2 == 4) {
                this.mActivityThread.performResumeActivity(localActivityRecord, true, "moveToState-INITIALIZING");
                localActivityRecord.curState = 4;
                return;
            }
            return;
        }
        if (i3 == 2) {
            if (i2 == 3) {
                this.mActivityThread.performRestartActivity(localActivityRecord);
                localActivityRecord.curState = 3;
            }
            if (i2 == 4) {
                this.mActivityThread.performRestartActivity(localActivityRecord);
                this.mActivityThread.performResumeActivity(localActivityRecord, true, "moveToState-CREATED");
                localActivityRecord.curState = 4;
                return;
            }
            return;
        }
        if (i3 == 3) {
            if (i2 == 4) {
                this.mActivityThread.performResumeActivity(localActivityRecord, true, "moveToState-STARTED");
                localActivityRecord.instanceState = null;
                localActivityRecord.curState = 4;
            }
            if (i2 == 2) {
                this.mActivityThread.performStopActivity(localActivityRecord, false, "moveToState-STARTED");
                localActivityRecord.curState = 2;
                return;
            }
            return;
        }
        if (i3 != 4) {
            return;
        }
        if (i2 == 3) {
            performPause(localActivityRecord, this.mFinishing);
            localActivityRecord.curState = 3;
        }
        if (i2 == 2) {
            performPause(localActivityRecord, this.mFinishing);
            this.mActivityThread.performStopActivity(localActivityRecord, false, "moveToState-RESUMED");
            localActivityRecord.curState = 2;
        }
    }

    private Window performDestroy(LocalActivityRecord localActivityRecord, boolean z2) {
        Window window = localActivityRecord.window;
        if (localActivityRecord.curState == 4 && !z2) {
            performPause(localActivityRecord, z2);
        }
        this.mActivityThread.performDestroyActivity(localActivityRecord, z2);
        localActivityRecord.activity = null;
        localActivityRecord.window = null;
        if (z2) {
            localActivityRecord.instanceState = null;
        }
        localActivityRecord.curState = 5;
        return window;
    }

    private void performPause(LocalActivityRecord localActivityRecord, boolean z2) {
        boolean z3 = localActivityRecord.instanceState == null;
        Bundle bundlePerformPauseActivity = this.mActivityThread.performPauseActivity(localActivityRecord, z2, z3, "performPause");
        if (z3) {
            localActivityRecord.instanceState = bundlePerformPauseActivity;
        }
    }

    public Window destroyActivity(String str, boolean z2) {
        LocalActivityRecord localActivityRecord = this.mActivities.get(str);
        if (localActivityRecord == null) {
            return null;
        }
        Window windowPerformDestroy = performDestroy(localActivityRecord, z2);
        if (!z2) {
            return windowPerformDestroy;
        }
        this.mActivities.remove(str);
        this.mActivityArray.remove(localActivityRecord);
        return windowPerformDestroy;
    }

    public void dispatchCreate(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                try {
                    Bundle bundle2 = bundle.getBundle(str);
                    LocalActivityRecord localActivityRecord = this.mActivities.get(str);
                    if (localActivityRecord != null) {
                        localActivityRecord.instanceState = bundle2;
                    } else {
                        LocalActivityRecord localActivityRecord2 = new LocalActivityRecord(str, null);
                        localActivityRecord2.instanceState = bundle2;
                        this.mActivities.put(str, localActivityRecord2);
                        this.mActivityArray.add(localActivityRecord2);
                    }
                } catch (Exception e2) {
                    Log.e(TAG, "Exception thrown when restoring LocalActivityManager state", e2);
                }
            }
        }
        this.mCurState = 2;
    }

    public void dispatchDestroy(boolean z2) {
        int size = this.mActivityArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mActivityThread.performDestroyActivity(this.mActivityArray.get(i2), z2);
        }
        this.mActivities.clear();
        this.mActivityArray.clear();
    }

    public void dispatchPause(boolean z2) {
        if (z2) {
            this.mFinishing = true;
        }
        this.mCurState = 3;
        if (this.mSingleMode) {
            LocalActivityRecord localActivityRecord = this.mResumed;
            if (localActivityRecord != null) {
                moveToState(localActivityRecord, 3);
                return;
            }
            return;
        }
        int size = this.mActivityArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            LocalActivityRecord localActivityRecord2 = this.mActivityArray.get(i2);
            if (localActivityRecord2.curState == 4) {
                moveToState(localActivityRecord2, 3);
            }
        }
    }

    public void dispatchResume() {
        this.mCurState = 4;
        if (this.mSingleMode) {
            LocalActivityRecord localActivityRecord = this.mResumed;
            if (localActivityRecord != null) {
                moveToState(localActivityRecord, 4);
                return;
            }
            return;
        }
        int size = this.mActivityArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            moveToState(this.mActivityArray.get(i2), 4);
        }
    }

    public HashMap<String, Object> dispatchRetainNonConfigurationInstance() {
        Activity activity;
        Object objOnRetainNonConfigurationInstance;
        int size = this.mActivityArray.size();
        HashMap<String, Object> map = null;
        for (int i2 = 0; i2 < size; i2++) {
            LocalActivityRecord localActivityRecord = this.mActivityArray.get(i2);
            if (localActivityRecord != null && (activity = localActivityRecord.activity) != null && (objOnRetainNonConfigurationInstance = activity.onRetainNonConfigurationInstance()) != null) {
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put(localActivityRecord.id, objOnRetainNonConfigurationInstance);
            }
        }
        return map;
    }

    public void dispatchStop() {
        this.mCurState = 2;
        int size = this.mActivityArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            moveToState(this.mActivityArray.get(i2), 2);
        }
    }

    public Activity getActivity(String str) {
        LocalActivityRecord localActivityRecord = this.mActivities.get(str);
        if (localActivityRecord != null) {
            return localActivityRecord.activity;
        }
        return null;
    }

    public Activity getCurrentActivity() {
        LocalActivityRecord localActivityRecord = this.mResumed;
        if (localActivityRecord != null) {
            return localActivityRecord.activity;
        }
        return null;
    }

    public String getCurrentId() {
        LocalActivityRecord localActivityRecord = this.mResumed;
        if (localActivityRecord != null) {
            return localActivityRecord.id;
        }
        return null;
    }

    public void removeAllActivities() {
        dispatchDestroy(true);
    }

    public Bundle saveInstanceState() {
        int size = this.mActivityArray.size();
        Bundle bundle = null;
        for (int i2 = 0; i2 < size; i2++) {
            LocalActivityRecord localActivityRecord = this.mActivityArray.get(i2);
            if (bundle == null) {
                bundle = new Bundle();
            }
            if ((localActivityRecord.instanceState != null || localActivityRecord.curState == 4) && localActivityRecord.activity != null) {
                Bundle bundle2 = new Bundle();
                localActivityRecord.activity.performSaveInstanceState(bundle2);
                localActivityRecord.instanceState = bundle2;
            }
            Bundle bundle3 = localActivityRecord.instanceState;
            if (bundle3 != null) {
                bundle.putBundle(localActivityRecord.id, bundle3);
            }
        }
        return bundle;
    }

    public Window startActivity(String str, Intent intent) {
        boolean zFilterEquals;
        boolean z2;
        LocalActivityRecord localActivityRecord;
        if (this.mCurState == 1) {
            throw new IllegalStateException("Activities can't be added until the containing group has been created.");
        }
        LocalActivityRecord localActivityRecord2 = this.mActivities.get(str);
        ActivityInfo activityInfoResolveActivityInfo = null;
        if (localActivityRecord2 == null) {
            localActivityRecord2 = new LocalActivityRecord(str, intent);
            z2 = true;
            zFilterEquals = false;
        } else {
            Intent intent2 = localActivityRecord2.intent;
            if (intent2 != null) {
                zFilterEquals = intent2.filterEquals(intent);
                activityInfoResolveActivityInfo = zFilterEquals ? localActivityRecord2.activityInfo : null;
                z2 = false;
            } else {
                zFilterEquals = false;
                z2 = false;
            }
        }
        if (activityInfoResolveActivityInfo == null) {
            activityInfoResolveActivityInfo = this.mActivityThread.resolveActivityInfo(intent);
        }
        if (this.mSingleMode && (localActivityRecord = this.mResumed) != null && localActivityRecord != localActivityRecord2 && this.mCurState == 4) {
            moveToState(localActivityRecord, 3);
        }
        if (z2) {
            this.mActivities.put(str, localActivityRecord2);
            this.mActivityArray.add(localActivityRecord2);
        } else {
            ActivityInfo activityInfo = localActivityRecord2.activityInfo;
            if (activityInfo != null) {
                if (activityInfoResolveActivityInfo == activityInfo || (activityInfoResolveActivityInfo.name.equals(activityInfo.name) && activityInfoResolveActivityInfo.packageName.equals(localActivityRecord2.activityInfo.packageName))) {
                    if (activityInfoResolveActivityInfo.launchMode != 0 || (intent.getFlags() & 536870912) != 0) {
                        ArrayList arrayList = new ArrayList(1);
                        arrayList.add(new ReferrerIntent(intent, this.mParent.getPackageName()));
                        this.mActivityThread.performNewIntents(localActivityRecord2, arrayList, false);
                        localActivityRecord2.intent = intent;
                        moveToState(localActivityRecord2, this.mCurState);
                        if (this.mSingleMode) {
                            this.mResumed = localActivityRecord2;
                        }
                        return localActivityRecord2.window;
                    }
                    if (zFilterEquals && (intent.getFlags() & 67108864) == 0) {
                        localActivityRecord2.intent = intent;
                        moveToState(localActivityRecord2, this.mCurState);
                        if (this.mSingleMode) {
                            this.mResumed = localActivityRecord2;
                        }
                        return localActivityRecord2.window;
                    }
                }
                performDestroy(localActivityRecord2, true);
            }
        }
        localActivityRecord2.intent = intent;
        localActivityRecord2.curState = 1;
        localActivityRecord2.activityInfo = activityInfoResolveActivityInfo;
        moveToState(localActivityRecord2, this.mCurState);
        if (this.mSingleMode) {
            this.mResumed = localActivityRecord2;
        }
        return localActivityRecord2.window;
    }
}
