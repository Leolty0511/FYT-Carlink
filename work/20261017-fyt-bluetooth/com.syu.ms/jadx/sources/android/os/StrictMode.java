package android.os;

import android.animation.ValueAnimator;
import android.app.ActivityManagerNative;
import android.app.ActivityThread;
import android.app.ApplicationErrorReport;
import android.app.IActivityManager;
import android.content.Context;
import android.content.Intent;
import android.net.LinkQualityInfo;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Printer;
import android.util.Singleton;
import android.view.IWindowManager;
import com.android.internal.os.RuntimeInit;
import dalvik.system.BlockGuard;
import dalvik.system.CloseGuard;
import dalvik.system.VMDebug;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import u.e;

/* JADX INFO: loaded from: classes.dex */
public final class StrictMode {
    private static final int ALL_THREAD_DETECT_BITS = 15;
    private static final int ALL_VM_DETECT_BITS = 32256;
    public static final int DETECT_CUSTOM = 8;
    public static final int DETECT_DISK_READ = 2;
    public static final int DETECT_DISK_WRITE = 1;
    public static final int DETECT_NETWORK = 4;
    public static final int DETECT_VM_ACTIVITY_LEAKS = 2048;
    public static final int DETECT_VM_CLOSABLE_LEAKS = 1024;
    public static final int DETECT_VM_CURSOR_LEAKS = 512;
    private static final int DETECT_VM_FILE_URI_EXPOSURE = 16384;
    private static final int DETECT_VM_INSTANCE_LEAKS = 4096;
    public static final int DETECT_VM_REGISTRATION_LEAKS = 8192;
    public static final String DISABLE_PROPERTY = "persist.sys.strictmode.disable";
    private static final boolean IS_ENG_BUILD = false;
    private static final boolean IS_USER_BUILD = true;
    private static final int MAX_OFFENSES_PER_LOOP = 10;
    private static final int MAX_SPAN_TAGS = 20;
    private static final long MIN_DIALOG_INTERVAL_MS = 30000;
    private static final long MIN_LOG_INTERVAL_MS = 1000;
    public static final int PENALTY_DEATH = 64;
    public static final int PENALTY_DEATH_ON_NETWORK = 512;
    public static final int PENALTY_DIALOG = 32;
    public static final int PENALTY_DROPBOX = 128;
    public static final int PENALTY_FLASH = 2048;
    public static final int PENALTY_GATHER = 256;
    public static final int PENALTY_LOG = 16;
    private static final int THREAD_PENALTY_MASK = 3056;
    public static final String VISUAL_PROPERTY = "persist.sys.strictmode.visual";
    private static final int VM_PENALTY_MASK = 208;
    private static final String TAG = "StrictMode";
    private static final boolean LOG_V = Log.isLoggable(TAG, 2);
    private static final HashMap<Class, Integer> EMPTY_CLASS_LIMIT_MAP = new HashMap<>();
    private static volatile int sVmPolicyMask = 0;
    private static volatile VmPolicy sVmPolicy = VmPolicy.LAX;
    private static final AtomicInteger sDropboxCallsInFlight = new AtomicInteger(0);
    private static final ThreadLocal<ArrayList<ViolationInfo>> gatheredViolations = new ThreadLocal<ArrayList<ViolationInfo>>() { // from class: android.os.StrictMode.1
        @Override // java.lang.ThreadLocal
        public ArrayList<ViolationInfo> initialValue() {
            return null;
        }
    };
    private static final ThreadLocal<ArrayList<ViolationInfo>> violationsBeingTimed = new ThreadLocal<ArrayList<ViolationInfo>>() { // from class: android.os.StrictMode.2
        @Override // java.lang.ThreadLocal
        public ArrayList<ViolationInfo> initialValue() {
            return new ArrayList<>();
        }
    };
    private static final ThreadLocal<Handler> threadHandler = new ThreadLocal<Handler>() { // from class: android.os.StrictMode.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Handler initialValue() {
            return new Handler();
        }
    };
    private static final ThreadLocal<AndroidBlockGuardPolicy> threadAndroidPolicy = new ThreadLocal<AndroidBlockGuardPolicy>() { // from class: android.os.StrictMode.4
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public AndroidBlockGuardPolicy initialValue() {
            return new AndroidBlockGuardPolicy(0);
        }
    };
    private static long sLastInstanceCountCheckMillis = 0;
    private static boolean sIsIdlerRegistered = false;
    private static final MessageQueue.IdleHandler sProcessIdleHandler = new MessageQueue.IdleHandler() { // from class: android.os.StrictMode.6
        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (jUptimeMillis - StrictMode.sLastInstanceCountCheckMillis <= StrictMode.MIN_DIALOG_INTERVAL_MS) {
                return true;
            }
            long unused = StrictMode.sLastInstanceCountCheckMillis = jUptimeMillis;
            StrictMode.conditionallyCheckInstanceCounts();
            return true;
        }
    };
    private static final HashMap<Integer, Long> sLastVmViolationTime = new HashMap<>();
    private static final Span NO_OP_SPAN = new Span() { // from class: android.os.StrictMode.7
        @Override // android.os.StrictMode.Span
        public void finish() {
        }
    };
    private static final ThreadLocal<ThreadSpanState> sThisThreadSpanState = new ThreadLocal<ThreadSpanState>() { // from class: android.os.StrictMode.8
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public ThreadSpanState initialValue() {
            return new ThreadSpanState();
        }
    };
    private static Singleton<IWindowManager> sWindowManager = new Singleton<IWindowManager>() { // from class: android.os.StrictMode.9
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.util.Singleton
        public IWindowManager create() {
            return IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE));
        }
    };
    private static final HashMap<Class, Integer> sExpectedActivityInstanceCount = new HashMap<>();

    public static class AndroidBlockGuardPolicy implements BlockGuard.Policy {
        private ArrayMap<Integer, Long> mLastViolationTime;
        private int mPolicyMask;

        public AndroidBlockGuardPolicy(int i2) {
            this.mPolicyMask = i2;
        }

        public int getPolicyMask() {
            return this.mPolicyMask;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        /* JADX WARN: Code duplicated, block: B:37:0x00a9  */
        /* JADX WARN: Code duplicated, block: B:38:0x00af  */
        /* JADX WARN: Code duplicated, block: B:45:0x00c2  */
        /* JADX WARN: Code duplicated, block: B:46:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:52:0x010d  */
        /* JADX WARN: Code duplicated, block: B:58:0x0119  */
        /* JADX WARN: Code duplicated, block: B:61:0x012d  */
        /* JADX WARN: Code duplicated, block: B:63:0x0130  */
        /* JADX WARN: Code duplicated, block: B:76:0x0159  */
        /* JADX WARN: Code duplicated, block: B:82:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:45:0x00c2, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:46:0x00e5, please report this as an issue */
        public void handleViolation(ViolationInfo violationInfo) throws BlockGuard.BlockGuardPolicyException {
            ApplicationErrorReport.CrashInfo crashInfo;
            long jLongValue;
            long jUptimeMillis;
            long j2;
            int i2;
            int i3;
            int violationFromMessage;
            int threadPolicyMask;
            if (violationInfo == null || (crashInfo = violationInfo.crashInfo) == null || crashInfo.stackTrace == null) {
                Log.wtf(StrictMode.TAG, "unexpected null stacktrace");
                return;
            }
            if (StrictMode.LOG_V) {
                Log.d(StrictMode.TAG, "handleViolation; policy=" + violationInfo.policy);
            }
            if ((violationInfo.policy & 256) != 0) {
                ArrayList arrayList = (ArrayList) StrictMode.gatheredViolations.get();
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    StrictMode.gatheredViolations.set(arrayList);
                } else if (arrayList.size() >= 5) {
                    return;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (violationInfo.crashInfo.stackTrace.equals(((ViolationInfo) it.next()).crashInfo.stackTrace)) {
                        return;
                    }
                }
                arrayList.add(violationInfo);
                return;
            }
            Integer numValueOf = Integer.valueOf(violationInfo.hashCode());
            ArrayMap<Integer, Long> arrayMap = this.mLastViolationTime;
            if (arrayMap != null) {
                Long l2 = arrayMap.get(numValueOf);
                if (l2 != null) {
                    jLongValue = l2.longValue();
                }
                jUptimeMillis = SystemClock.uptimeMillis();
                this.mLastViolationTime.put(numValueOf, Long.valueOf(jUptimeMillis));
                if (jLongValue == 0) {
                    j2 = LinkQualityInfo.UNKNOWN_LONG;
                } else {
                    j2 = jUptimeMillis - jLongValue;
                }
                if ((violationInfo.policy & 16) != 0 && j2 > 1000) {
                    if (violationInfo.durationMillis != -1) {
                        Log.d(StrictMode.TAG, "StrictMode policy violation; ~duration=" + violationInfo.durationMillis + " ms: " + violationInfo.crashInfo.stackTrace);
                    } else {
                        Log.d(StrictMode.TAG, "StrictMode policy violation: " + violationInfo.crashInfo.stackTrace);
                    }
                }
                i2 = violationInfo.policy;
                if ((i2 & 32) != 0 || j2 <= StrictMode.MIN_DIALOG_INTERVAL_MS) {
                    i3 = 0;
                } else {
                    i3 = 32;
                }
                if ((i2 & 128) != 0 && jLongValue == 0) {
                    i3 |= 128;
                }
                if (i3 != 0) {
                    violationFromMessage = StrictMode.parseViolationFromMessage(violationInfo.crashInfo.exceptionMessage) | i3;
                    threadPolicyMask = StrictMode.getThreadPolicyMask();
                    try {
                        if ((violationInfo.policy & 3056) == 128) {
                            StrictMode.dropboxViolationAsync(violationFromMessage, violationInfo);
                            return;
                        }
                        try {
                            StrictMode.setThreadPolicyMask(0);
                            ActivityManagerNative.getDefault().handleApplicationStrictModeViolation(RuntimeInit.a(), violationFromMessage, violationInfo);
                        } catch (RemoteException e2) {
                            Log.e(StrictMode.TAG, "RemoteException trying to handle StrictMode violation", e2);
                        }
                        StrictMode.setThreadPolicyMask(threadPolicyMask);
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicyMask(threadPolicyMask);
                        throw th;
                    }
                }
                if ((violationInfo.policy & 64) != 0) {
                    StrictMode.executeDeathPenalty(violationInfo);
                }
            }
            this.mLastViolationTime = new ArrayMap<>(1);
            jLongValue = 0;
            jUptimeMillis = SystemClock.uptimeMillis();
            this.mLastViolationTime.put(numValueOf, Long.valueOf(jUptimeMillis));
            if (jLongValue == 0) {
                j2 = LinkQualityInfo.UNKNOWN_LONG;
            } else {
                j2 = jUptimeMillis - jLongValue;
            }
            if ((violationInfo.policy & 16) != 0) {
                if (violationInfo.durationMillis != -1) {
                    Log.d(StrictMode.TAG, "StrictMode policy violation; ~duration=" + violationInfo.durationMillis + " ms: " + violationInfo.crashInfo.stackTrace);
                } else {
                    Log.d(StrictMode.TAG, "StrictMode policy violation: " + violationInfo.crashInfo.stackTrace);
                }
            }
            i2 = violationInfo.policy;
            if ((i2 & 32) != 0) {
                i3 = 0;
            } else {
                i3 = 0;
            }
            if ((i2 & 128) != 0) {
                i3 |= 128;
            }
            if (i3 != 0) {
                violationFromMessage = StrictMode.parseViolationFromMessage(violationInfo.crashInfo.exceptionMessage) | i3;
                threadPolicyMask = StrictMode.getThreadPolicyMask();
                if ((violationInfo.policy & 3056) == 128) {
                    StrictMode.dropboxViolationAsync(violationFromMessage, violationInfo);
                    return;
                } else {
                    StrictMode.setThreadPolicyMask(0);
                    ActivityManagerNative.getDefault().handleApplicationStrictModeViolation(RuntimeInit.a(), violationFromMessage, violationInfo);
                    StrictMode.setThreadPolicyMask(threadPolicyMask);
                }
            }
            if ((violationInfo.policy & 64) != 0) {
                StrictMode.executeDeathPenalty(violationInfo);
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void handleViolationWithTimingAttempt(ViolationInfo violationInfo) throws BlockGuard.BlockGuardPolicyException {
            if (Looper.myLooper() == null || (violationInfo.policy & 3056) == 64) {
                violationInfo.durationMillis = -1;
                handleViolation(violationInfo);
                return;
            }
            final ArrayList arrayList = (ArrayList) StrictMode.violationsBeingTimed.get();
            if (arrayList.size() >= 10) {
                return;
            }
            arrayList.add(violationInfo);
            if (arrayList.size() > 1) {
                return;
            }
            final IWindowManager iWindowManager = (violationInfo.policy & 2048) != 0 ? (IWindowManager) StrictMode.sWindowManager.get() : null;
            if (iWindowManager != null) {
                try {
                    iWindowManager.showStrictModeViolation(true);
                } catch (RemoteException unused) {
                }
            }
            ((Handler) StrictMode.threadHandler.get()).postAtFrontOfQueue(new Runnable() { // from class: android.os.StrictMode.AndroidBlockGuardPolicy.1
                /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
                @Override // java.lang.Runnable
                public void run() throws BlockGuard.BlockGuardPolicyException {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    IWindowManager iWindowManager2 = iWindowManager;
                    int i2 = 0;
                    if (iWindowManager2 != null) {
                        try {
                            iWindowManager2.showStrictModeViolation(false);
                        } catch (RemoteException unused2) {
                        }
                    }
                    while (i2 < arrayList.size()) {
                        ViolationInfo violationInfo2 = (ViolationInfo) arrayList.get(i2);
                        i2++;
                        violationInfo2.violationNumThisLoop = i2;
                        violationInfo2.durationMillis = (int) (jUptimeMillis - violationInfo2.violationUptimeMillis);
                        AndroidBlockGuardPolicy.this.handleViolation(violationInfo2);
                    }
                    arrayList.clear();
                }
            });
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void onCustomSlowCall(String str) throws BlockGuard.BlockGuardPolicyException {
            if ((this.mPolicyMask & 8) == 0 || StrictMode.tooManyViolationsThisLoop()) {
                return;
            }
            StrictModeCustomViolation strictModeCustomViolation = new StrictModeCustomViolation(this.mPolicyMask, str);
            strictModeCustomViolation.fillInStackTrace();
            startHandlingViolationException(strictModeCustomViolation);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void onNetwork() throws BlockGuard.BlockGuardPolicyException {
            int i2 = this.mPolicyMask;
            if ((i2 & 4) == 0) {
                return;
            }
            if ((i2 & 512) != 0) {
                throw new NetworkOnMainThreadException();
            }
            if (StrictMode.tooManyViolationsThisLoop()) {
                return;
            }
            StrictModeNetworkViolation strictModeNetworkViolation = new StrictModeNetworkViolation(this.mPolicyMask);
            strictModeNetworkViolation.fillInStackTrace();
            startHandlingViolationException(strictModeNetworkViolation);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void onReadFromDisk() throws BlockGuard.BlockGuardPolicyException {
            if ((this.mPolicyMask & 2) == 0 || StrictMode.tooManyViolationsThisLoop()) {
                return;
            }
            StrictModeDiskReadViolation strictModeDiskReadViolation = new StrictModeDiskReadViolation(this.mPolicyMask);
            strictModeDiskReadViolation.fillInStackTrace();
            startHandlingViolationException(strictModeDiskReadViolation);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void onWriteToDisk() throws BlockGuard.BlockGuardPolicyException {
            if ((this.mPolicyMask & 1) == 0 || StrictMode.tooManyViolationsThisLoop()) {
                return;
            }
            StrictModeDiskWriteViolation strictModeDiskWriteViolation = new StrictModeDiskWriteViolation(this.mPolicyMask);
            strictModeDiskWriteViolation.fillInStackTrace();
            startHandlingViolationException(strictModeDiskWriteViolation);
        }

        public void setPolicyMask(int i2) {
            this.mPolicyMask = i2;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void startHandlingViolationException(BlockGuard.BlockGuardPolicyException blockGuardPolicyException) throws BlockGuard.BlockGuardPolicyException {
            ViolationInfo violationInfo = new ViolationInfo((Throwable) blockGuardPolicyException, blockGuardPolicyException.getPolicy());
            violationInfo.violationUptimeMillis = SystemClock.uptimeMillis();
            handleViolationWithTimingAttempt(violationInfo);
        }

        public String toString() {
            return "AndroidBlockGuardPolicy; mPolicyMask=" + this.mPolicyMask;
        }
    }

    public static class AndroidCloseGuardReporter implements CloseGuard.Reporter {
        private AndroidCloseGuardReporter() {
        }

        public void report(String str, Throwable th) {
            StrictMode.onVmPolicyViolation(str, th);
        }
    }

    public static class InstanceCountViolation extends Throwable {
        private static final StackTraceElement[] FAKE_STACK = {new StackTraceElement("android.os.StrictMode", "setClassInstanceLimit", "StrictMode.java", 1)};
        public final Class mClass;
        public final long mInstances;
        public final int mLimit;

        public InstanceCountViolation(Class cls, long j2, int i2) {
            super(cls.toString() + "; instances=" + j2 + "; limit=" + i2);
            setStackTrace(FAKE_STACK);
            this.mClass = cls;
            this.mInstances = j2;
            this.mLimit = i2;
        }
    }

    public static final class InstanceTracker {
        private static final HashMap<Class<?>, Integer> sInstanceCounts = new HashMap<>();
        private final Class<?> mKlass;

        public InstanceTracker(Object obj) {
            Class<?> cls = obj.getClass();
            this.mKlass = cls;
            HashMap<Class<?>, Integer> map = sInstanceCounts;
            synchronized (map) {
                Integer num = map.get(cls);
                map.put(cls, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            }
        }

        public static int getInstanceCount(Class<?> cls) {
            int iIntValue;
            HashMap<Class<?>, Integer> map = sInstanceCounts;
            synchronized (map) {
                Integer num = map.get(cls);
                iIntValue = num != null ? num.intValue() : 0;
            }
            return iIntValue;
        }

        public void finalize() throws Throwable {
            try {
                HashMap<Class<?>, Integer> map = sInstanceCounts;
                synchronized (map) {
                    Integer num = map.get(this.mKlass);
                    if (num != null) {
                        int iIntValue = num.intValue() - 1;
                        if (iIntValue > 0) {
                            map.put(this.mKlass, Integer.valueOf(iIntValue));
                        } else {
                            map.remove(this.mKlass);
                        }
                    }
                }
                super.finalize();
            } catch (Throwable th) {
                super.finalize();
                throw th;
            }
        }
    }

    public static class LogStackTrace extends Exception {
        private LogStackTrace() {
        }
    }

    public static class StrictModeCustomViolation extends StrictModeViolation {
        public StrictModeCustomViolation(int i2, String str) {
            super(i2, 8, str);
        }
    }

    public static class StrictModeDiskReadViolation extends StrictModeViolation {
        public StrictModeDiskReadViolation(int i2) {
            super(i2, 2, null);
        }
    }

    public static class StrictModeDiskWriteViolation extends StrictModeViolation {
        public StrictModeDiskWriteViolation(int i2) {
            super(i2, 1, null);
        }
    }

    public static class StrictModeNetworkViolation extends StrictModeViolation {
        public StrictModeNetworkViolation(int i2) {
            super(i2, 4, null);
        }
    }

    public static class StrictModeViolation extends BlockGuard.BlockGuardPolicyException {
        public StrictModeViolation(int i2, int i3, String str) {
            super(i2, i3, str);
        }
    }

    public static final class ThreadPolicy {
        public static final ThreadPolicy LAX = new ThreadPolicy(0);
        public final int mask;

        public String toString() {
            return "[StrictMode.ThreadPolicy; mask=" + this.mask + "]";
        }

        private ThreadPolicy(int i2) {
            this.mask = i2;
        }

        public static final class Builder {
            private int mMask;

            public Builder() {
                this.mMask = 0;
                this.mMask = 0;
            }

            private Builder disable(int i2) {
                this.mMask = (~i2) & this.mMask;
                return this;
            }

            private Builder enable(int i2) {
                this.mMask = i2 | this.mMask;
                return this;
            }

            public ThreadPolicy build() {
                int i2 = this.mMask;
                if (i2 != 0 && (i2 & 240) == 0) {
                    penaltyLog();
                }
                return new ThreadPolicy(this.mMask);
            }

            public Builder detectAll() {
                return enable(15);
            }

            public Builder detectCustomSlowCalls() {
                return enable(8);
            }

            public Builder detectDiskReads() {
                return enable(2);
            }

            public Builder detectDiskWrites() {
                return enable(1);
            }

            public Builder detectNetwork() {
                return enable(4);
            }

            public Builder penaltyDeath() {
                return enable(64);
            }

            public Builder penaltyDeathOnNetwork() {
                return enable(512);
            }

            public Builder penaltyDialog() {
                return enable(32);
            }

            public Builder penaltyDropBox() {
                return enable(128);
            }

            public Builder penaltyFlashScreen() {
                return enable(2048);
            }

            public Builder penaltyLog() {
                return enable(16);
            }

            public Builder permitAll() {
                return disable(15);
            }

            public Builder permitCustomSlowCalls() {
                return disable(8);
            }

            public Builder permitDiskReads() {
                return disable(2);
            }

            public Builder permitDiskWrites() {
                return disable(1);
            }

            public Builder permitNetwork() {
                return disable(4);
            }

            public Builder(ThreadPolicy threadPolicy) {
                this.mMask = 0;
                this.mMask = threadPolicy.mask;
            }
        }
    }

    public static class ThreadSpanState {
        public Span mActiveHead;
        public int mActiveSize;
        public Span mFreeListHead;
        public int mFreeListSize;

        private ThreadSpanState() {
        }
    }

    public static final class VmPolicy {
        public static final VmPolicy LAX = new VmPolicy(0, StrictMode.EMPTY_CLASS_LIMIT_MAP);
        public final HashMap<Class, Integer> classInstanceLimit;
        public final int mask;

        public String toString() {
            return "[StrictMode.VmPolicy; mask=" + this.mask + "]";
        }

        private VmPolicy(int i2, HashMap<Class, Integer> map) {
            Objects.requireNonNull(map, "classInstanceLimit == null");
            this.mask = i2;
            this.classInstanceLimit = map;
        }

        public static final class Builder {
            private HashMap<Class, Integer> mClassInstanceLimit;
            private boolean mClassInstanceLimitNeedCow;
            private int mMask;

            public Builder() {
                this.mClassInstanceLimitNeedCow = false;
                this.mMask = 0;
            }

            private Builder enable(int i2) {
                this.mMask = i2 | this.mMask;
                return this;
            }

            public VmPolicy build() {
                int i2 = this.mMask;
                if (i2 != 0 && (i2 & 240) == 0) {
                    penaltyLog();
                }
                int i3 = this.mMask;
                HashMap<Class, Integer> map = this.mClassInstanceLimit;
                if (map == null) {
                    map = StrictMode.EMPTY_CLASS_LIMIT_MAP;
                }
                return new VmPolicy(i3, map);
            }

            public Builder detectActivityLeaks() {
                return enable(2048);
            }

            public Builder detectAll() {
                return enable(28160);
            }

            public Builder detectFileUriExposure() {
                return enable(16384);
            }

            public Builder detectLeakedClosableObjects() {
                return enable(1024);
            }

            public Builder detectLeakedRegistrationObjects() {
                return enable(8192);
            }

            public Builder detectLeakedSqlLiteObjects() {
                return enable(512);
            }

            public Builder penaltyDeath() {
                return enable(64);
            }

            public Builder penaltyDropBox() {
                return enable(128);
            }

            public Builder penaltyLog() {
                return enable(16);
            }

            public Builder setClassInstanceLimit(Class cls, int i2) {
                Objects.requireNonNull(cls, "klass == null");
                if (this.mClassInstanceLimitNeedCow) {
                    if (this.mClassInstanceLimit.containsKey(cls) && this.mClassInstanceLimit.get(cls).intValue() == i2) {
                        return this;
                    }
                    this.mClassInstanceLimitNeedCow = false;
                    this.mClassInstanceLimit = (HashMap) this.mClassInstanceLimit.clone();
                } else if (this.mClassInstanceLimit == null) {
                    this.mClassInstanceLimit = new HashMap<>();
                }
                this.mMask |= 4096;
                this.mClassInstanceLimit.put(cls, Integer.valueOf(i2));
                return this;
            }

            public Builder(VmPolicy vmPolicy) {
                this.mClassInstanceLimitNeedCow = false;
                this.mMask = vmPolicy.mask;
                this.mClassInstanceLimitNeedCow = true;
                this.mClassInstanceLimit = vmPolicy.classInstanceLimit;
            }
        }
    }

    private StrictMode() {
    }

    public static ThreadPolicy allowThreadDiskReads() {
        int threadPolicyMask = getThreadPolicyMask();
        int i2 = threadPolicyMask & (-3);
        if (i2 != threadPolicyMask) {
            setThreadPolicyMask(i2);
        }
        return new ThreadPolicy(threadPolicyMask);
    }

    public static ThreadPolicy allowThreadDiskWrites() {
        int threadPolicyMask = getThreadPolicyMask();
        int i2 = threadPolicyMask & (-4);
        if (i2 != threadPolicyMask) {
            setThreadPolicyMask(i2);
        }
        return new ThreadPolicy(threadPolicyMask);
    }

    private static boolean amTheSystemServerProcess() {
        if (Process.myUid() != 1000) {
            return false;
        }
        Throwable th = new Throwable();
        th.fillInStackTrace();
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            String className = stackTraceElement.getClassName();
            if (className != null && className.startsWith("com.android.server.")) {
                return true;
            }
        }
        return false;
    }

    public static void clearGatheredViolations() {
        gatheredViolations.set(null);
    }

    public static void conditionallyCheckInstanceCounts() {
        VmPolicy vmPolicy = getVmPolicy();
        if (vmPolicy.classInstanceLimit.size() == 0) {
            return;
        }
        Runtime.getRuntime().gc();
        for (Map.Entry<Class, Integer> entry : vmPolicy.classInstanceLimit.entrySet()) {
            Class key = entry.getKey();
            int iIntValue = entry.getValue().intValue();
            long jCountInstancesOfClass = VMDebug.countInstancesOfClass(key, false);
            if (jCountInstancesOfClass > iIntValue) {
                InstanceCountViolation instanceCountViolation = new InstanceCountViolation(key, jCountInstancesOfClass, iIntValue);
                onVmPolicyViolation(instanceCountViolation.getMessage(), instanceCountViolation);
            }
        }
    }

    public static boolean conditionallyEnableDebugLogging() {
        boolean z2 = SystemProperties.getBoolean(VISUAL_PROPERTY, false) && !amTheSystemServerProcess();
        SystemProperties.getBoolean(DISABLE_PROPERTY, false);
        if (!z2) {
            setCloseGuardEnabled(false);
            return false;
        }
        setThreadPolicyMask(z2 ? 2055 : 7);
        setCloseGuardEnabled(false);
        return true;
    }

    public static void decrementExpectedActivityCount(Class cls) {
        if (cls == null) {
            return;
        }
        synchronized (StrictMode.class) {
            if ((sVmPolicy.mask & 2048) == 0) {
                return;
            }
            HashMap<Class, Integer> map = sExpectedActivityInstanceCount;
            Integer num = map.get(cls);
            int iIntValue = (num == null || num.intValue() == 0) ? 0 : num.intValue() - 1;
            if (iIntValue == 0) {
                map.remove(cls);
            } else {
                map.put(cls, Integer.valueOf(iIntValue));
            }
            int i2 = iIntValue + 1;
            if (InstanceTracker.getInstanceCount(cls) <= i2) {
                return;
            }
            Runtime.getRuntime().gc();
            long jCountInstancesOfClass = VMDebug.countInstancesOfClass(cls, false);
            if (jCountInstancesOfClass > i2) {
                InstanceCountViolation instanceCountViolation = new InstanceCountViolation(cls, jCountInstancesOfClass, i2);
                onVmPolicyViolation(instanceCountViolation.getMessage(), instanceCountViolation);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dropboxViolationAsync(final int i2, final ViolationInfo violationInfo) {
        AtomicInteger atomicInteger = sDropboxCallsInFlight;
        int iIncrementAndGet = atomicInteger.incrementAndGet();
        if (iIncrementAndGet > 20) {
            atomicInteger.decrementAndGet();
            return;
        }
        if (LOG_V) {
            Log.d(TAG, "Dropboxing async; in-flight=" + iIncrementAndGet);
        }
        new Thread("callActivityManagerForStrictModeDropbox") { // from class: android.os.StrictMode.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                try {
                    IActivityManager iActivityManager = ActivityManagerNative.getDefault();
                    if (iActivityManager == null) {
                        Log.d(StrictMode.TAG, "No activity manager; failed to Dropbox violation.");
                    } else {
                        iActivityManager.handleApplicationStrictModeViolation(RuntimeInit.a(), i2, violationInfo);
                    }
                } catch (RemoteException e2) {
                    Log.e(StrictMode.TAG, "RemoteException handling StrictMode violation", e2);
                }
                int iDecrementAndGet = StrictMode.sDropboxCallsInFlight.decrementAndGet();
                if (StrictMode.LOG_V) {
                    Log.d(StrictMode.TAG, "Dropbox complete; in-flight=" + iDecrementAndGet);
                }
            }
        }.start();
    }

    public static void enableDeathOnNetwork() {
        setThreadPolicyMask(getThreadPolicyMask() | 4 | 512);
    }

    public static void enableDefaults() {
        setThreadPolicy(new ThreadPolicy.Builder().detectAll().penaltyLog().build());
        setVmPolicy(new VmPolicy.Builder().detectAll().penaltyLog().build());
    }

    public static Span enterCriticalSpan(String str) {
        return NO_OP_SPAN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    public static void executeDeathPenalty(ViolationInfo violationInfo) throws BlockGuard.BlockGuardPolicyException {
        throw new StrictModeViolation(violationInfo.policy, parseViolationFromMessage(violationInfo.crashInfo.exceptionMessage), null);
    }

    public static ThreadPolicy getThreadPolicy() {
        return new ThreadPolicy(getThreadPolicyMask());
    }

    public static int getThreadPolicyMask() {
        return BlockGuard.getThreadPolicy().getPolicyMask();
    }

    public static VmPolicy getVmPolicy() {
        VmPolicy vmPolicy;
        synchronized (StrictMode.class) {
            vmPolicy = sVmPolicy;
        }
        return vmPolicy;
    }

    public static boolean hasGatheredViolations() {
        return gatheredViolations.get() != null;
    }

    public static void incrementExpectedActivityCount(Class cls) {
        if (cls == null) {
            return;
        }
        synchronized (StrictMode.class) {
            if ((sVmPolicy.mask & 2048) == 0) {
                return;
            }
            HashMap<Class, Integer> map = sExpectedActivityInstanceCount;
            Integer num = map.get(cls);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            map.put(cls, Integer.valueOf(iIntValue));
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    public static void noteDiskRead() throws BlockGuard.BlockGuardPolicyException {
        BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
        if (threadPolicy instanceof AndroidBlockGuardPolicy) {
            ((AndroidBlockGuardPolicy) threadPolicy).onReadFromDisk();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    public static void noteDiskWrite() throws BlockGuard.BlockGuardPolicyException {
        BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
        if (threadPolicy instanceof AndroidBlockGuardPolicy) {
            ((AndroidBlockGuardPolicy) threadPolicy).onWriteToDisk();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    public static void noteSlowCall(String str) throws BlockGuard.BlockGuardPolicyException {
        BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
        if (threadPolicy instanceof AndroidBlockGuardPolicy) {
            ((AndroidBlockGuardPolicy) threadPolicy).onCustomSlowCall(str);
        }
    }

    private static void onBinderStrictModePolicyChange(int i2) {
        setBlockGuardPolicy(i2);
    }

    public static void onFileUriExposed(String str) {
        String str2 = "file:// Uri exposed through " + str;
        onVmPolicyViolation(str2, new Throwable(str2));
    }

    public static void onIntentReceiverLeaked(Throwable th) {
        onVmPolicyViolation(null, th);
    }

    public static void onServiceConnectionLeaked(Throwable th) {
        onVmPolicyViolation(null, th);
    }

    public static void onSqliteObjectLeaked(String str, Throwable th) {
        onVmPolicyViolation(str, th);
    }

    public static void onVmPolicyViolation(String str, Throwable th) {
        long j2;
        boolean z2 = (sVmPolicyMask & 128) != 0;
        boolean z3 = (sVmPolicyMask & 64) != 0;
        boolean z4 = (sVmPolicyMask & 16) != 0;
        ViolationInfo violationInfo = new ViolationInfo(th, sVmPolicyMask);
        violationInfo.numAnimationsRunning = 0;
        violationInfo.tags = null;
        violationInfo.broadcastIntentAction = null;
        Integer numValueOf = Integer.valueOf(violationInfo.hashCode());
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j3 = LinkQualityInfo.UNKNOWN_LONG;
        HashMap<Integer, Long> map = sLastVmViolationTime;
        synchronized (map) {
            if (map.containsKey(numValueOf)) {
                long jLongValue = map.get(numValueOf).longValue();
                j3 = jUptimeMillis - jLongValue;
                j2 = jLongValue;
            } else {
                j2 = 0;
            }
            if (j3 > 1000) {
                map.put(numValueOf, Long.valueOf(jUptimeMillis));
            }
        }
        if (z4 && j3 > 1000) {
            Log.e(TAG, str, th);
        }
        int i2 = (sVmPolicyMask & ALL_VM_DETECT_BITS) | 128;
        if (z2 && !z3) {
            dropboxViolationAsync(i2, violationInfo);
            return;
        }
        if (z2 && j2 == 0) {
            int threadPolicyMask = getThreadPolicyMask();
            try {
                try {
                    setThreadPolicyMask(0);
                    ActivityManagerNative.getDefault().handleApplicationStrictModeViolation(RuntimeInit.a(), i2, violationInfo);
                } catch (RemoteException e2) {
                    Log.e(TAG, "RemoteException trying to handle StrictMode violation", e2);
                }
                setThreadPolicyMask(threadPolicyMask);
            } catch (Throwable th2) {
                setThreadPolicyMask(threadPolicyMask);
                throw th2;
            }
        }
        if (z3) {
            System.err.println("StrictMode VmPolicy violation with POLICY_DEATH; shutting down.");
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    public static void onWebViewMethodCalledOnWrongThread(Throwable th) {
        onVmPolicyViolation(null, th);
    }

    private static int parsePolicyFromMessage(String str) {
        int iIndexOf;
        if (str == null || !str.startsWith("policy=") || (iIndexOf = str.indexOf(32)) == -1) {
            return 0;
        }
        try {
            return Integer.valueOf(str.substring(7, iIndexOf)).intValue();
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int parseViolationFromMessage(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf("violation=")) == -1) {
            return 0;
        }
        int i2 = iIndexOf + 10;
        int iIndexOf2 = str.indexOf(32, i2);
        if (iIndexOf2 == -1) {
            iIndexOf2 = str.length();
        }
        try {
            return Integer.valueOf(str.substring(i2, iIndexOf2)).intValue();
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static void readAndHandleBinderCallViolations(Parcel parcel) {
        StringWriter stringWriter = new StringWriter();
        e eVar = new e((Writer) stringWriter, false, 256);
        new LogStackTrace().printStackTrace(eVar);
        eVar.flush();
        String string = stringWriter.toString();
        boolean z2 = (getThreadPolicyMask() & 256) != 0;
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            if (LOG_V) {
                Log.d(TAG, "strict mode violation stacks read from binder call.  i=" + i3);
            }
            ViolationInfo violationInfo = new ViolationInfo(parcel, !z2);
            StringBuilder sb = new StringBuilder();
            ApplicationErrorReport.CrashInfo crashInfo = violationInfo.crashInfo;
            sb.append(crashInfo.stackTrace);
            sb.append("# via Binder call with stack:\n");
            sb.append(string);
            crashInfo.stackTrace = sb.toString();
            BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
            if (threadPolicy instanceof AndroidBlockGuardPolicy) {
                ((AndroidBlockGuardPolicy) threadPolicy).handleViolationWithTimingAttempt(violationInfo);
            }
        }
    }

    private static void setBlockGuardPolicy(int i2) {
        AndroidBlockGuardPolicy androidBlockGuardPolicy;
        if (i2 == 0) {
            BlockGuard.setThreadPolicy(BlockGuard.LAX_POLICY);
            return;
        }
        BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
        if (threadPolicy instanceof AndroidBlockGuardPolicy) {
            androidBlockGuardPolicy = (AndroidBlockGuardPolicy) threadPolicy;
        } else {
            androidBlockGuardPolicy = threadAndroidPolicy.get();
            BlockGuard.setThreadPolicy(androidBlockGuardPolicy);
        }
        androidBlockGuardPolicy.setPolicyMask(i2);
    }

    private static void setCloseGuardEnabled(boolean z2) {
        if (!(CloseGuard.getReporter() instanceof AndroidCloseGuardReporter)) {
            CloseGuard.setReporter(new AndroidCloseGuardReporter());
        }
        CloseGuard.setEnabled(z2);
    }

    public static void setThreadPolicy(ThreadPolicy threadPolicy) {
        setThreadPolicyMask(threadPolicy.mask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setThreadPolicyMask(int i2) {
        setBlockGuardPolicy(i2);
        Binder.setThreadStrictModePolicy(i2);
    }

    public static void setVmPolicy(VmPolicy vmPolicy) {
        synchronized (StrictMode.class) {
            sVmPolicy = vmPolicy;
            sVmPolicyMask = vmPolicy.mask;
            setCloseGuardEnabled(vmClosableObjectLeaksEnabled());
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                MessageQueue messageQueue = mainLooper.mQueue;
                if (vmPolicy.classInstanceLimit.size() == 0 || (sVmPolicyMask & 208) == 0) {
                    messageQueue.removeIdleHandler(sProcessIdleHandler);
                    sIsIdlerRegistered = false;
                } else if (!sIsIdlerRegistered) {
                    messageQueue.addIdleHandler(sProcessIdleHandler);
                    sIsIdlerRegistered = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tooManyViolationsThisLoop() {
        return violationsBeingTimed.get().size() >= 10;
    }

    public static Object trackActivity(Object obj) {
        return new InstanceTracker(obj);
    }

    public static boolean vmClosableObjectLeaksEnabled() {
        return (sVmPolicyMask & 1024) != 0;
    }

    public static boolean vmFileUriExposureEnabled() {
        return (sVmPolicyMask & 16384) != 0;
    }

    public static boolean vmRegistrationLeaksEnabled() {
        return (sVmPolicyMask & 8192) != 0;
    }

    public static boolean vmSqliteObjectLeaksEnabled() {
        return (sVmPolicyMask & 512) != 0;
    }

    public static void writeGatheredViolationsToParcel(Parcel parcel) {
        ArrayList<ViolationInfo> arrayList = gatheredViolations.get();
        if (arrayList == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(arrayList.size());
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                arrayList.get(i2).writeToParcel(parcel, 0);
            }
            if (LOG_V) {
                Log.d(TAG, "wrote violations to response parcel; num=" + arrayList.size());
            }
            arrayList.clear();
        }
        gatheredViolations.set(null);
    }

    public static class Span {
        private final ThreadSpanState mContainerState;
        private long mCreateMillis;
        private String mName;
        private Span mNext;
        private Span mPrev;

        public Span(ThreadSpanState threadSpanState) {
            this.mContainerState = threadSpanState;
        }

        public void finish() {
            ThreadSpanState threadSpanState = this.mContainerState;
            synchronized (threadSpanState) {
                if (this.mName == null) {
                    return;
                }
                Span span = this.mPrev;
                if (span != null) {
                    span.mNext = this.mNext;
                }
                Span span2 = this.mNext;
                if (span2 != null) {
                    span2.mPrev = span;
                }
                if (threadSpanState.mActiveHead == this) {
                    threadSpanState.mActiveHead = span2;
                }
                threadSpanState.mActiveSize--;
                if (StrictMode.LOG_V) {
                    Log.d(StrictMode.TAG, "Span finished=" + this.mName + "; size=" + threadSpanState.mActiveSize);
                }
                this.mCreateMillis = -1L;
                this.mName = null;
                this.mPrev = null;
                this.mNext = null;
                int i2 = threadSpanState.mFreeListSize;
                if (i2 < 5) {
                    this.mNext = threadSpanState.mFreeListHead;
                    threadSpanState.mFreeListHead = this;
                    threadSpanState.mFreeListSize = i2 + 1;
                }
            }
        }

        public Span() {
            this.mContainerState = null;
        }
    }

    public static class ViolationInfo {
        public String broadcastIntentAction;
        public final ApplicationErrorReport.CrashInfo crashInfo;
        public int durationMillis;
        public int numAnimationsRunning;
        public long numInstances;
        public final int policy;
        public String[] tags;
        public int violationNumThisLoop;
        public long violationUptimeMillis;

        public ViolationInfo() {
            this.durationMillis = -1;
            this.numAnimationsRunning = 0;
            this.numInstances = -1L;
            this.crashInfo = null;
            this.policy = 0;
        }

        public void dump(Printer printer, String str) {
            this.crashInfo.dump(printer, str);
            printer.println(str + "policy: " + this.policy);
            if (this.durationMillis != -1) {
                printer.println(str + "durationMillis: " + this.durationMillis);
            }
            if (this.numInstances != -1) {
                printer.println(str + "numInstances: " + this.numInstances);
            }
            if (this.violationNumThisLoop != 0) {
                printer.println(str + "violationNumThisLoop: " + this.violationNumThisLoop);
            }
            if (this.numAnimationsRunning != 0) {
                printer.println(str + "numAnimationsRunning: " + this.numAnimationsRunning);
            }
            printer.println(str + "violationUptimeMillis: " + this.violationUptimeMillis);
            if (this.broadcastIntentAction != null) {
                printer.println(str + "broadcastIntentAction: " + this.broadcastIntentAction);
            }
            String[] strArr = this.tags;
            if (strArr != null) {
                int length = strArr.length;
                int i2 = 0;
                int i3 = 0;
                while (i2 < length) {
                    printer.println(str + "tag[" + i3 + "]: " + strArr[i2]);
                    i2++;
                    i3++;
                }
            }
        }

        public int hashCode() {
            int iHashCode = 629 + this.crashInfo.stackTrace.hashCode();
            if (this.numAnimationsRunning != 0) {
                iHashCode *= 37;
            }
            String str = this.broadcastIntentAction;
            if (str != null) {
                iHashCode = (iHashCode * 37) + str.hashCode();
            }
            String[] strArr = this.tags;
            if (strArr != null) {
                for (String str2 : strArr) {
                    iHashCode = (iHashCode * 37) + str2.hashCode();
                }
            }
            return iHashCode;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            this.crashInfo.writeToParcel(parcel, i2);
            parcel.writeInt(this.policy);
            parcel.writeInt(this.durationMillis);
            parcel.writeInt(this.violationNumThisLoop);
            parcel.writeInt(this.numAnimationsRunning);
            parcel.writeLong(this.violationUptimeMillis);
            parcel.writeLong(this.numInstances);
            parcel.writeString(this.broadcastIntentAction);
            parcel.writeStringArray(this.tags);
        }

        public ViolationInfo(Throwable th, int i2) {
            this.durationMillis = -1;
            int i3 = 0;
            this.numAnimationsRunning = 0;
            this.numInstances = -1L;
            this.crashInfo = new ApplicationErrorReport.CrashInfo(th);
            this.violationUptimeMillis = SystemClock.uptimeMillis();
            this.policy = i2;
            this.numAnimationsRunning = ValueAnimator.getCurrentAnimationsCount();
            Intent intentBeingBroadcast = ActivityThread.getIntentBeingBroadcast();
            if (intentBeingBroadcast != null) {
                this.broadcastIntentAction = intentBeingBroadcast.getAction();
            }
            ThreadSpanState threadSpanState = (ThreadSpanState) StrictMode.sThisThreadSpanState.get();
            if (th instanceof InstanceCountViolation) {
                this.numInstances = ((InstanceCountViolation) th).mInstances;
            }
            synchronized (threadSpanState) {
                int i4 = threadSpanState.mActiveSize;
                i4 = i4 > 20 ? 20 : i4;
                if (i4 != 0) {
                    this.tags = new String[i4];
                    for (Span span = threadSpanState.mActiveHead; span != null && i3 < i4; span = span.mNext) {
                        this.tags[i3] = span.mName;
                        i3++;
                    }
                }
            }
        }

        public ViolationInfo(Parcel parcel) {
            this(parcel, false);
        }

        public ViolationInfo(Parcel parcel, boolean z2) {
            this.durationMillis = -1;
            this.numAnimationsRunning = 0;
            this.numInstances = -1L;
            this.crashInfo = new ApplicationErrorReport.CrashInfo(parcel);
            int i2 = parcel.readInt();
            if (z2) {
                this.policy = i2 & (-257);
            } else {
                this.policy = i2;
            }
            this.durationMillis = parcel.readInt();
            this.violationNumThisLoop = parcel.readInt();
            this.numAnimationsRunning = parcel.readInt();
            this.violationUptimeMillis = parcel.readLong();
            this.numInstances = parcel.readLong();
            this.broadcastIntentAction = parcel.readString();
            this.tags = parcel.readStringArray();
        }
    }
}
