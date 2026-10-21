package android.app;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.hardware.input.InputManager;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.PerformanceCollector;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.InputDevice;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Instrumentation {
    public static final String REPORT_KEY_IDENTIFIER = "id";
    public static final String REPORT_KEY_STREAMRESULT = "stream";
    private static final String TAG = "Instrumentation";
    private List<ActivityMonitor> mActivityMonitors;
    private Context mAppContext;
    private ComponentName mComponent;
    private Context mInstrContext;
    private PerformanceCollector mPerformanceCollector;
    private Thread mRunner;
    private UiAutomation mUiAutomation;
    private IUiAutomationConnection mUiAutomationConnection;
    private List<ActivityWaiter> mWaitingActivities;
    private IInstrumentationWatcher mWatcher;
    private final Object mSync = new Object();
    private ActivityThread mThread = null;
    private MessageQueue mMessageQueue = null;
    private boolean mAutomaticPerformanceSnapshots = false;
    private Bundle mPerfMetrics = new Bundle();

    /* JADX INFO: renamed from: android.app.Instrumentation$1ContextMenuRunnable, reason: invalid class name */
    public class C1ContextMenuRunnable implements Runnable {
        private final Activity activity;
        private final int flags;
        private final int identifier;
        public boolean returnValue;

        public C1ContextMenuRunnable(Activity activity, int i2, int i3) {
            this.activity = activity;
            this.identifier = i2;
            this.flags = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.returnValue = this.activity.getWindow().performContextMenuIdentifierAction(this.identifier, this.flags);
        }
    }

    /* JADX INFO: renamed from: android.app.Instrumentation$1MenuRunnable, reason: invalid class name */
    public class C1MenuRunnable implements Runnable {
        private final Activity activity;
        private final int flags;
        private final int identifier;
        public boolean returnValue;

        public C1MenuRunnable(Activity activity, int i2, int i3) {
            this.activity = activity;
            this.identifier = i2;
            this.flags = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.returnValue = this.activity.getWindow().performPanelIdentifierAction(0, this.identifier, this.flags);
        }
    }

    public final class ActivityGoing implements MessageQueue.IdleHandler {
        private final ActivityWaiter mWaiter;

        public ActivityGoing(ActivityWaiter activityWaiter) {
            this.mWaiter = activityWaiter;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            synchronized (Instrumentation.this.mSync) {
                Instrumentation.this.mWaitingActivities.remove(this.mWaiter);
                Instrumentation.this.mSync.notifyAll();
            }
            return false;
        }
    }

    public static final class ActivityResult {
        private final int mResultCode;
        private final Intent mResultData;

        public ActivityResult(int i2, Intent intent) {
            this.mResultCode = i2;
            this.mResultData = intent;
        }

        public int getResultCode() {
            return this.mResultCode;
        }

        public Intent getResultData() {
            return this.mResultData;
        }
    }

    public static final class ActivityWaiter {
        public Activity activity;
        public final Intent intent;

        public ActivityWaiter(Intent intent) {
            this.intent = intent;
        }
    }

    public static final class EmptyRunnable implements Runnable {
        private EmptyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public static final class Idler implements MessageQueue.IdleHandler {
        private final Runnable mCallback;
        private boolean mIdle = false;

        public Idler(Runnable runnable) {
            this.mCallback = runnable;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            Runnable runnable = this.mCallback;
            if (runnable != null) {
                runnable.run();
            }
            synchronized (this) {
                this.mIdle = true;
                notifyAll();
            }
            return false;
        }

        public void waitForIdle() {
            synchronized (this) {
                while (!this.mIdle) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    public final class InstrumentationThread extends Thread {
        public InstrumentationThread(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(-8);
            } catch (RuntimeException e2) {
                Log.w(Instrumentation.TAG, "Exception setting priority of instrumentation thread " + Process.myTid(), e2);
            }
            if (Instrumentation.this.mAutomaticPerformanceSnapshots) {
                Instrumentation.this.startPerformanceSnapshot();
            }
            Instrumentation.this.onStart();
        }
    }

    public static final class SyncRunnable implements Runnable {
        private boolean mComplete;
        private final Runnable mTarget;

        public SyncRunnable(Runnable runnable) {
            this.mTarget = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mTarget.run();
            synchronized (this) {
                this.mComplete = true;
                notifyAll();
            }
        }

        public void waitForComplete() {
            synchronized (this) {
                while (!this.mComplete) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    private void addValue(String str, int i2, Bundle bundle) {
        if (!bundle.containsKey(str)) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            arrayList.add(Integer.valueOf(i2));
            bundle.putIntegerArrayList(str, arrayList);
        } else {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
            if (integerArrayList != null) {
                integerArrayList.add(Integer.valueOf(i2));
            }
        }
    }

    public static void checkStartActivityResult(int i2, Object obj) {
        if (i2 >= 0) {
            return;
        }
        if (i2 == -5) {
            throw new IllegalArgumentException("PendingIntent is not an activity");
        }
        if (i2 == -4) {
            throw new SecurityException("Not allowed to start activity " + obj);
        }
        if (i2 == -3) {
            throw new AndroidRuntimeException("FORWARD_RESULT_FLAG used while also requesting a result");
        }
        if (i2 != -2 && i2 != -1) {
            throw new AndroidRuntimeException("Unknown error code " + i2 + " when starting " + obj);
        }
        if (obj instanceof Intent) {
            Intent intent = (Intent) obj;
            if (intent.getComponent() != null) {
                throw new ActivityNotFoundException("Unable to find explicit activity class " + intent.getComponent().toShortString() + "; have you declared this activity in your AndroidManifest.xml?");
            }
        }
        throw new ActivityNotFoundException("No Activity found to handle " + obj);
    }

    private final void validateNotAppThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new RuntimeException("This method can not be called from the main application thread");
        }
    }

    public void addMonitor(ActivityMonitor activityMonitor) {
        synchronized (this.mSync) {
            if (this.mActivityMonitors == null) {
                this.mActivityMonitors = new ArrayList();
            }
            this.mActivityMonitors.add(activityMonitor);
        }
    }

    public void callActivityOnCreate(Activity activity, Bundle bundle) {
        if (this.mWaitingActivities != null) {
            synchronized (this.mSync) {
                int size = this.mWaitingActivities.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ActivityWaiter activityWaiter = this.mWaitingActivities.get(i2);
                    if (activityWaiter.intent.filterEquals(activity.getIntent())) {
                        activityWaiter.activity = activity;
                        this.mMessageQueue.addIdleHandler(new ActivityGoing(activityWaiter));
                    }
                }
            }
        }
        activity.performCreate(bundle);
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int size2 = this.mActivityMonitors.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    this.mActivityMonitors.get(i3).match(activity, activity, activity.getIntent());
                }
            }
        }
    }

    public void callActivityOnDestroy(Activity activity) {
        activity.performDestroy();
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int size = this.mActivityMonitors.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.mActivityMonitors.get(i2).match(activity, activity, activity.getIntent());
                }
            }
        }
    }

    public void callActivityOnNewIntent(Activity activity, Intent intent) {
        activity.onNewIntent(intent);
    }

    public void callActivityOnPause(Activity activity) {
        activity.performPause();
    }

    public void callActivityOnPostCreate(Activity activity, Bundle bundle) {
        activity.onPostCreate(bundle);
    }

    public void callActivityOnRestart(Activity activity) {
        activity.onRestart();
    }

    public void callActivityOnRestoreInstanceState(Activity activity, Bundle bundle) {
        activity.performRestoreInstanceState(bundle);
    }

    public void callActivityOnResume(Activity activity) {
        activity.mResumed = true;
        activity.onResume();
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int size = this.mActivityMonitors.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.mActivityMonitors.get(i2).match(activity, activity, activity.getIntent());
                }
            }
        }
    }

    public void callActivityOnSaveInstanceState(Activity activity, Bundle bundle) {
        activity.performSaveInstanceState(bundle);
    }

    public void callActivityOnStart(Activity activity) {
        activity.onStart();
    }

    public void callActivityOnStop(Activity activity) {
        activity.onStop();
    }

    public void callActivityOnUserLeaving(Activity activity) {
        activity.performUserLeaving();
    }

    public void callApplicationOnCreate(Application application) {
        application.onCreate();
    }

    public boolean checkMonitorHit(ActivityMonitor activityMonitor, int i2) {
        waitForIdleSync();
        synchronized (this.mSync) {
            if (activityMonitor.getHits() < i2) {
                return false;
            }
            this.mActivityMonitors.remove(activityMonitor);
            return true;
        }
    }

    public void endPerformanceSnapshot() {
        if (isProfiling()) {
            return;
        }
        this.mPerfMetrics = this.mPerformanceCollector.endSnapshot();
    }

    public void execStartActivities(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent[] intentArr, Bundle bundle) {
        execStartActivitiesAsUser(context, iBinder, iBinder2, activity, intentArr, bundle, UserHandle.myUserId());
    }

    public void execStartActivitiesAsUser(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent[] intentArr, Bundle bundle, int i2) {
        IApplicationThread iApplicationThread = (IApplicationThread) iBinder;
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int size = this.mActivityMonitors.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ActivityMonitor activityMonitor = this.mActivityMonitors.get(i3);
                    if (activityMonitor.match(context, null, intentArr[0])) {
                        activityMonitor.mHits++;
                        if (!activityMonitor.isBlocking()) {
                            break;
                        } else {
                            return;
                        }
                    }
                }
            }
        }
        try {
            String[] strArr = new String[intentArr.length];
            for (int i4 = 0; i4 < intentArr.length; i4++) {
                intentArr[i4].migrateExtraStreamToClipData();
                intentArr[i4].prepareToLeaveProcess();
                strArr[i4] = intentArr[i4].resolveTypeIfNeeded(context.getContentResolver());
            }
            checkStartActivityResult(ActivityManagerNative.getDefault().startActivities(iApplicationThread, context.getBasePackageName(), intentArr, strArr, iBinder2, bundle, i2), intentArr[0]);
        } catch (RemoteException unused) {
        }
    }

    public ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2, Bundle bundle) {
        IApplicationThread iApplicationThread = (IApplicationThread) iBinder;
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int size = this.mActivityMonitors.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ActivityMonitor activityMonitor = this.mActivityMonitors.get(i3);
                    if (activityMonitor.match(context, null, intent)) {
                        activityMonitor.mHits++;
                        if (!activityMonitor.isBlocking()) {
                            break;
                        }
                        return i2 >= 0 ? activityMonitor.getResult() : null;
                    }
                }
            }
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess();
            checkStartActivityResult(ActivityManagerNative.getDefault().startActivity(iApplicationThread, context.getBasePackageName(), intent, intent.resolveTypeIfNeeded(context.getContentResolver()), iBinder2, activity != null ? activity.mEmbeddedID : null, i2, 0, null, null, bundle), intent);
        } catch (RemoteException unused) {
        }
        return null;
    }

    public void finish(int i2, Bundle bundle) {
        if (this.mAutomaticPerformanceSnapshots) {
            endPerformanceSnapshot();
        }
        Bundle bundle2 = this.mPerfMetrics;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        UiAutomation uiAutomation = this.mUiAutomation;
        if (uiAutomation != null) {
            uiAutomation.disconnect();
            this.mUiAutomation = null;
        }
        this.mThread.finishInstrumentation(i2, bundle);
    }

    public Bundle getAllocCounts() {
        Bundle bundle = new Bundle();
        bundle.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_ALLOC_COUNT, Debug.getGlobalAllocCount());
        bundle.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_ALLOC_SIZE, Debug.getGlobalAllocSize());
        bundle.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_FREED_COUNT, Debug.getGlobalFreedCount());
        bundle.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_FREED_SIZE, Debug.getGlobalFreedSize());
        bundle.putLong(PerformanceCollector.METRIC_KEY_GC_INVOCATION_COUNT, Debug.getGlobalGcInvocationCount());
        return bundle;
    }

    public Bundle getBinderCounts() {
        Bundle bundle = new Bundle();
        bundle.putLong(PerformanceCollector.METRIC_KEY_SENT_TRANSACTIONS, Debug.getBinderSentTransactions());
        bundle.putLong(PerformanceCollector.METRIC_KEY_RECEIVED_TRANSACTIONS, Debug.getBinderReceivedTransactions());
        return bundle;
    }

    public ComponentName getComponentName() {
        return this.mComponent;
    }

    public Context getContext() {
        return this.mInstrContext;
    }

    public Context getTargetContext() {
        return this.mAppContext;
    }

    public UiAutomation getUiAutomation() {
        if (this.mUiAutomationConnection == null) {
            return null;
        }
        if (this.mUiAutomation == null) {
            UiAutomation uiAutomation = new UiAutomation(getTargetContext().getMainLooper(), this.mUiAutomationConnection);
            this.mUiAutomation = uiAutomation;
            uiAutomation.connect();
        }
        return this.mUiAutomation;
    }

    public final void init(ActivityThread activityThread, Context context, Context context2, ComponentName componentName, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection) {
        this.mThread = activityThread;
        activityThread.getLooper();
        this.mMessageQueue = Looper.myQueue();
        this.mInstrContext = context;
        this.mAppContext = context2;
        this.mComponent = componentName;
        this.mWatcher = iInstrumentationWatcher;
        this.mUiAutomationConnection = iUiAutomationConnection;
    }

    public boolean invokeContextMenuAction(Activity activity, int i2, int i3) {
        validateNotAppThread();
        sendKeySync(new KeyEvent(0, 23));
        waitForIdleSync();
        try {
            Thread.sleep(ViewConfiguration.getLongPressTimeout());
            sendKeySync(new KeyEvent(1, 23));
            waitForIdleSync();
            C1ContextMenuRunnable c1ContextMenuRunnable = new C1ContextMenuRunnable(activity, i2, i3);
            runOnMainSync(c1ContextMenuRunnable);
            return c1ContextMenuRunnable.returnValue;
        } catch (InterruptedException e2) {
            Log.e(TAG, "Could not sleep for long press timeout", e2);
            return false;
        }
    }

    public boolean invokeMenuActionSync(Activity activity, int i2, int i3) {
        C1MenuRunnable c1MenuRunnable = new C1MenuRunnable(activity, i2, i3);
        runOnMainSync(c1MenuRunnable);
        return c1MenuRunnable.returnValue;
    }

    public boolean isProfiling() {
        return this.mThread.isProfiling();
    }

    public Activity newActivity(Class<?> cls, Context context, IBinder iBinder, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, Object obj) {
        Activity activity2 = (Activity) cls.newInstance();
        activity2.attach(context, null, this, iBinder, application, intent, activityInfo, charSequence, activity, str, (Activity.NonConfigurationInstances) obj, new Configuration());
        return activity2;
    }

    public Application newApplication(ClassLoader classLoader, String str, Context context) {
        return newApplication(classLoader.loadClass(str), context);
    }

    public void onCreate(Bundle bundle) {
    }

    public void onDestroy() {
    }

    public boolean onException(Object obj, Throwable th) {
        return false;
    }

    public void onStart() {
    }

    public void removeMonitor(ActivityMonitor activityMonitor) {
        synchronized (this.mSync) {
            this.mActivityMonitors.remove(activityMonitor);
        }
    }

    public void runOnMainSync(Runnable runnable) {
        validateNotAppThread();
        SyncRunnable syncRunnable = new SyncRunnable(runnable);
        this.mThread.getHandler().post(syncRunnable);
        syncRunnable.waitForComplete();
    }

    public void sendCharacterSync(int i2) {
        sendKeySync(new KeyEvent(0, i2));
        sendKeySync(new KeyEvent(1, i2));
    }

    public void sendKeyDownUpSync(int i2) {
        sendKeySync(new KeyEvent(0, i2));
        sendKeySync(new KeyEvent(1, i2));
    }

    public void sendKeySync(KeyEvent keyEvent) {
        validateNotAppThread();
        long downTime = keyEvent.getDownTime();
        long eventTime = keyEvent.getEventTime();
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        int repeatCount = keyEvent.getRepeatCount();
        int metaState = keyEvent.getMetaState();
        int deviceId = keyEvent.getDeviceId();
        int scanCode = keyEvent.getScanCode();
        int source = keyEvent.getSource();
        int flags = keyEvent.getFlags();
        if (source == 0) {
            source = 257;
        }
        int i2 = source;
        if (eventTime == 0) {
            eventTime = SystemClock.uptimeMillis();
        }
        if (downTime == 0) {
            downTime = eventTime;
        }
        InputManager.getInstance().injectInputEvent(new KeyEvent(downTime, eventTime, action, keyCode, repeatCount, metaState, deviceId, scanCode, flags | 8, i2), 2);
    }

    public void sendPointerSync(MotionEvent motionEvent) {
        validateNotAppThread();
        if ((motionEvent.getSource() & 2) == 0) {
            motionEvent.setSource(InputDevice.SOURCE_TOUCHSCREEN);
        }
        InputManager.getInstance().injectInputEvent(motionEvent, 2);
    }

    public void sendStatus(int i2, Bundle bundle) {
        IInstrumentationWatcher iInstrumentationWatcher = this.mWatcher;
        if (iInstrumentationWatcher != null) {
            try {
                iInstrumentationWatcher.instrumentationStatus(this.mComponent, i2, bundle);
            } catch (RemoteException unused) {
                this.mWatcher = null;
            }
        }
    }

    public void sendStringSync(String str) {
        KeyEvent[] events;
        if (str == null || (events = KeyCharacterMap.load(-1).getEvents(str.toCharArray())) == null) {
            return;
        }
        for (KeyEvent keyEvent : events) {
            sendKeySync(KeyEvent.changeTimeRepeat(keyEvent, SystemClock.uptimeMillis(), 0));
        }
    }

    public void sendTrackballEventSync(MotionEvent motionEvent) {
        validateNotAppThread();
        if ((motionEvent.getSource() & 4) == 0) {
            motionEvent.setSource(InputDevice.SOURCE_TRACKBALL);
        }
        InputManager.getInstance().injectInputEvent(motionEvent, 2);
    }

    public void setAutomaticPerformanceSnapshots() {
        this.mAutomaticPerformanceSnapshots = true;
        this.mPerformanceCollector = new PerformanceCollector();
    }

    public void setInTouchMode(boolean z2) {
        try {
            IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE)).setInTouchMode(z2);
        } catch (RemoteException unused) {
        }
    }

    public void start() {
        if (this.mRunner != null) {
            throw new RuntimeException("Instrumentation already started");
        }
        InstrumentationThread instrumentationThread = new InstrumentationThread("Instr: " + getClass().getName());
        this.mRunner = instrumentationThread;
        instrumentationThread.start();
    }

    public Activity startActivitySync(Intent intent) {
        Activity activity;
        validateNotAppThread();
        synchronized (this.mSync) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfoResolveActivityInfo = intent2.resolveActivityInfo(getTargetContext().getPackageManager(), 0);
            if (activityInfoResolveActivityInfo == null) {
                throw new RuntimeException("Unable to resolve activity for: " + intent2);
            }
            String processName = this.mThread.getProcessName();
            if (!activityInfoResolveActivityInfo.processName.equals(processName)) {
                throw new RuntimeException("Intent in process " + processName + " resolved to different process " + activityInfoResolveActivityInfo.processName + ": " + intent2);
            }
            intent2.setComponent(new ComponentName(activityInfoResolveActivityInfo.applicationInfo.packageName, activityInfoResolveActivityInfo.name));
            ActivityWaiter activityWaiter = new ActivityWaiter(intent2);
            if (this.mWaitingActivities == null) {
                this.mWaitingActivities = new ArrayList();
            }
            this.mWaitingActivities.add(activityWaiter);
            getTargetContext().startActivity(intent2);
            do {
                try {
                    this.mSync.wait();
                } catch (InterruptedException unused) {
                }
            } while (this.mWaitingActivities.contains(activityWaiter));
            activity = activityWaiter.activity;
        }
        return activity;
    }

    public void startAllocCounting() {
        Runtime.getRuntime().gc();
        Runtime.getRuntime().runFinalization();
        Runtime.getRuntime().gc();
        Debug.resetAllCounts();
        Debug.startAllocCounting();
    }

    public void startPerformanceSnapshot() {
        if (isProfiling()) {
            return;
        }
        this.mPerformanceCollector.beginSnapshot(null);
    }

    public void startProfiling() {
        if (this.mThread.isProfiling()) {
            File file = new File(this.mThread.getProfileFilePath());
            file.getParentFile().mkdirs();
            Debug.startMethodTracing(file.toString(), 8388608);
        }
    }

    public void stopAllocCounting() {
        Runtime.getRuntime().gc();
        Runtime.getRuntime().runFinalization();
        Runtime.getRuntime().gc();
        Debug.stopAllocCounting();
    }

    public void stopProfiling() {
        if (this.mThread.isProfiling()) {
            Debug.stopMethodTracing();
        }
    }

    public void waitForIdle(Runnable runnable) {
        this.mMessageQueue.addIdleHandler(new Idler(runnable));
        this.mThread.getHandler().post(new EmptyRunnable());
    }

    public void waitForIdleSync() {
        validateNotAppThread();
        Idler idler = new Idler(null);
        this.mMessageQueue.addIdleHandler(idler);
        this.mThread.getHandler().post(new EmptyRunnable());
        idler.waitForIdle();
    }

    public Activity waitForMonitor(ActivityMonitor activityMonitor) {
        Activity activityWaitForActivity = activityMonitor.waitForActivity();
        synchronized (this.mSync) {
            this.mActivityMonitors.remove(activityMonitor);
        }
        return activityWaitForActivity;
    }

    public Activity waitForMonitorWithTimeout(ActivityMonitor activityMonitor, long j2) {
        Activity activityWaitForActivityWithTimeout = activityMonitor.waitForActivityWithTimeout(j2);
        synchronized (this.mSync) {
            this.mActivityMonitors.remove(activityMonitor);
        }
        return activityWaitForActivityWithTimeout;
    }

    public static Application newApplication(Class<?> cls, Context context) {
        Application application = (Application) cls.newInstance();
        application.attach(context);
        return application;
    }

    public Activity newActivity(ClassLoader classLoader, String str, Intent intent) {
        return (Activity) classLoader.loadClass(str).newInstance();
    }

    public ActivityMonitor addMonitor(IntentFilter intentFilter, ActivityResult activityResult, boolean z2) {
        ActivityMonitor activityMonitor = new ActivityMonitor(intentFilter, activityResult, z2);
        addMonitor(activityMonitor);
        return activityMonitor;
    }

    public static class ActivityMonitor {
        private final boolean mBlock;
        private final String mClass;
        public int mHits;
        public Activity mLastActivity;
        private final ActivityResult mResult;
        private final IntentFilter mWhich;

        public ActivityMonitor(IntentFilter intentFilter, ActivityResult activityResult, boolean z2) {
            this.mHits = 0;
            this.mLastActivity = null;
            this.mWhich = intentFilter;
            this.mClass = null;
            this.mResult = activityResult;
            this.mBlock = z2;
        }

        public final IntentFilter getFilter() {
            return this.mWhich;
        }

        public final int getHits() {
            return this.mHits;
        }

        public final Activity getLastActivity() {
            return this.mLastActivity;
        }

        public final ActivityResult getResult() {
            return this.mResult;
        }

        public final boolean isBlocking() {
            return this.mBlock;
        }

        public final boolean match(Context context, Activity activity, Intent intent) {
            synchronized (this) {
                IntentFilter intentFilter = this.mWhich;
                if (intentFilter != null && intentFilter.match(context.getContentResolver(), intent, true, Instrumentation.TAG) < 0) {
                    return false;
                }
                if (this.mClass != null) {
                    String className = null;
                    if (activity != null) {
                        className = activity.getClass().getName();
                    } else if (intent.getComponent() != null) {
                        className = intent.getComponent().getClassName();
                    }
                    if (className == null || !this.mClass.equals(className)) {
                        return false;
                    }
                }
                if (activity != null) {
                    this.mLastActivity = activity;
                    notifyAll();
                }
                return true;
            }
        }

        public final Activity waitForActivity() {
            Activity activity;
            synchronized (this) {
                while (true) {
                    activity = this.mLastActivity;
                    if (activity == null) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    } else {
                        this.mLastActivity = null;
                    }
                }
            }
            return activity;
        }

        public final Activity waitForActivityWithTimeout(long j2) {
            synchronized (this) {
                if (this.mLastActivity == null) {
                    try {
                        wait(j2);
                    } catch (InterruptedException unused) {
                    }
                }
                Activity activity = this.mLastActivity;
                if (activity == null) {
                    return null;
                }
                this.mLastActivity = null;
                return activity;
            }
        }

        public ActivityMonitor(String str, ActivityResult activityResult, boolean z2) {
            this.mHits = 0;
            this.mLastActivity = null;
            this.mWhich = null;
            this.mClass = str;
            this.mResult = activityResult;
            this.mBlock = z2;
        }
    }

    public ActivityMonitor addMonitor(String str, ActivityResult activityResult, boolean z2) {
        ActivityMonitor activityMonitor = new ActivityMonitor(str, activityResult, z2);
        addMonitor(activityMonitor);
        return activityMonitor;
    }

    public ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i2, Bundle bundle) {
        IApplicationThread iApplicationThread = (IApplicationThread) iBinder;
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int size = this.mActivityMonitors.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ActivityMonitor activityMonitor = this.mActivityMonitors.get(i3);
                    if (activityMonitor.match(context, null, intent)) {
                        activityMonitor.mHits++;
                        if (!activityMonitor.isBlocking()) {
                            break;
                        }
                        return i2 >= 0 ? activityMonitor.getResult() : null;
                    }
                }
            }
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess();
            checkStartActivityResult(ActivityManagerNative.getDefault().startActivity(iApplicationThread, context.getBasePackageName(), intent, intent.resolveTypeIfNeeded(context.getContentResolver()), iBinder2, fragment != null ? fragment.mWho : null, i2, 0, null, null, bundle), intent);
        } catch (RemoteException unused) {
        }
        return null;
    }

    public ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2, Bundle bundle, UserHandle userHandle) {
        IApplicationThread iApplicationThread = (IApplicationThread) iBinder;
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int size = this.mActivityMonitors.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ActivityMonitor activityMonitor = this.mActivityMonitors.get(i3);
                    if (activityMonitor.match(context, null, intent)) {
                        activityMonitor.mHits++;
                        if (!activityMonitor.isBlocking()) {
                            break;
                        }
                        return i2 >= 0 ? activityMonitor.getResult() : null;
                    }
                }
            }
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess();
            try {
                checkStartActivityResult(ActivityManagerNative.getDefault().startActivityAsUser(iApplicationThread, context.getBasePackageName(), intent, intent.resolveTypeIfNeeded(context.getContentResolver()), iBinder2, activity != null ? activity.mEmbeddedID : null, i2, 0, null, null, bundle, userHandle.getIdentifier()), intent);
                return null;
            } catch (RemoteException unused) {
                return null;
            }
        } catch (RemoteException unused2) {
            return null;
        }
    }
}
