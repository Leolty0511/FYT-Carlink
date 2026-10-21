package android.os;

import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.ApplicationErrorReport;
import android.app.IActivityManager;
import android.app.m;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Printer;
import android.util.Singleton;
import android.view.IWindowManager;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.os.RuntimeInit;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.HexDump;
import dalvik.system.BlockGuard;
import dalvik.system.CloseGuard;
import dalvik.system.VMDebug;
import dalvik.system.VMRuntime;
import java.io.StringWriter;
import java.io.Writer;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class StrictMode {
    private static final int ALL_THREAD_DETECT_BITS = 63;
    private static final int ALL_VM_DETECT_BITS = -2147418368;
    private static final String CLEARTEXT_PROPERTY = "persist.sys.strictmode.clear";
    public static final int DETECT_CUSTOM = 8;
    public static final int DETECT_DISK_READ = 2;
    public static final int DETECT_DISK_WRITE = 1;
    public static final int DETECT_NETWORK = 4;
    public static final int DETECT_RESOURCE_MISMATCH = 16;
    public static final int DETECT_UNBUFFERED_IO = 32;
    public static final int DETECT_VM_ACTIVITY_LEAKS = 1024;
    private static final int DETECT_VM_CLEARTEXT_NETWORK = 16384;
    public static final int DETECT_VM_CLOSABLE_LEAKS = 512;
    private static final int DETECT_VM_CONTENT_URI_WITHOUT_PERMISSION = 32768;
    public static final int DETECT_VM_CURSOR_LEAKS = 256;
    private static final int DETECT_VM_FILE_URI_EXPOSURE = 8192;
    private static final int DETECT_VM_INSTANCE_LEAKS = 2048;
    public static final int DETECT_VM_REGISTRATION_LEAKS = 4096;
    private static final int DETECT_VM_UNTAGGED_SOCKET = Integer.MIN_VALUE;
    public static final String DISABLE_PROPERTY = "persist.sys.strictmode.disable";
    private static final int MAX_OFFENSES_PER_LOOP = 10;
    private static final int MAX_SPAN_TAGS = 20;
    private static final long MIN_DIALOG_INTERVAL_MS = 30000;
    private static final long MIN_LOG_INTERVAL_MS = 1000;
    public static final int NETWORK_POLICY_ACCEPT = 0;
    public static final int NETWORK_POLICY_LOG = 1;
    public static final int NETWORK_POLICY_REJECT = 2;
    public static final int PENALTY_DEATH = 262144;
    public static final int PENALTY_DEATH_ON_CLEARTEXT_NETWORK = 33554432;
    public static final int PENALTY_DEATH_ON_FILE_URI_EXPOSURE = 67108864;
    public static final int PENALTY_DEATH_ON_NETWORK = 16777216;
    public static final int PENALTY_DIALOG = 131072;
    public static final int PENALTY_DROPBOX = 2097152;
    public static final int PENALTY_FLASH = 1048576;
    public static final int PENALTY_GATHER = 4194304;
    public static final int PENALTY_LOG = 65536;
    private static final int THREAD_PENALTY_MASK = 24576000;
    public static final String VISUAL_PROPERTY = "persist.sys.strictmode.visual";
    private static final int VM_PENALTY_MASK = 103088128;
    private static volatile ViolationListener sListener;
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
            if (jUptimeMillis - StrictMode.sLastInstanceCountCheckMillis <= 30000) {
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
        /* JADX WARN: Code duplicated, block: B:34:0x0098  */
        /* JADX WARN: Code duplicated, block: B:35:0x009e  */
        /* JADX WARN: Code duplicated, block: B:47:0x00c8  */
        /* JADX WARN: Code duplicated, block: B:48:0x00e1  */
        /* JADX WARN: Code duplicated, block: B:54:0x00ff  */
        /* JADX WARN: Code duplicated, block: B:60:0x010b  */
        /* JADX WARN: Code duplicated, block: B:63:0x0120  */
        /* JADX WARN: Code duplicated, block: B:65:0x0123  */
        /* JADX WARN: Code duplicated, block: B:81:0x0152  */
        /* JADX WARN: Code duplicated, block: B:87:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:92:? A[RETURN, SYNTHETIC] */
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
                m.t(new StringBuilder("handleViolation; policy="), violationInfo.policy, StrictMode.TAG);
            }
            if ((violationInfo.policy & 4194304) != 0) {
                ArrayList arrayList = (ArrayList) StrictMode.gatheredViolations.get();
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    StrictMode.gatheredViolations.set(arrayList);
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
                    j2 = Long.MAX_VALUE;
                } else {
                    j2 = jUptimeMillis - jLongValue;
                }
                if ((violationInfo.policy & 65536) != 0 && StrictMode.sListener != null) {
                    StrictMode.sListener.onViolation(violationInfo.crashInfo.stackTrace);
                }
                if ((violationInfo.policy & 65536) != 0 && j2 > 1000) {
                    if (violationInfo.durationMillis != -1) {
                        StringBuilder sb = new StringBuilder("StrictMode policy violation; ~duration=");
                        sb.append(violationInfo.durationMillis);
                        sb.append(" ms: ");
                        m.x(sb, violationInfo.crashInfo.stackTrace, StrictMode.TAG);
                    } else {
                        m.x(new StringBuilder("StrictMode policy violation: "), violationInfo.crashInfo.stackTrace, StrictMode.TAG);
                    }
                }
                i2 = violationInfo.policy;
                i3 = ((i2 & 131072) != 0 || j2 <= 30000) ? 0 : 131072;
                if ((i2 & 2097152) != 0 && jLongValue == 0) {
                    i3 |= 2097152;
                }
                if (i3 != 0) {
                    violationFromMessage = StrictMode.parseViolationFromMessage(violationInfo.crashInfo.exceptionMessage) | i3;
                    threadPolicyMask = StrictMode.getThreadPolicyMask();
                    try {
                        if ((violationInfo.policy & StrictMode.THREAD_PENALTY_MASK) == 2097152) {
                            StrictMode.dropboxViolationAsync(violationFromMessage, violationInfo);
                            return;
                        }
                        try {
                            StrictMode.setThreadPolicyMask(0);
                            ActivityManager.getService().handleApplicationStrictModeViolation(RuntimeInit.getApplicationObject(), violationFromMessage, violationInfo);
                        } catch (RemoteException e2) {
                            if (!(e2 instanceof DeadObjectException)) {
                                Log.e(StrictMode.TAG, "RemoteException trying to handle StrictMode violation", e2);
                            }
                        }
                        StrictMode.setThreadPolicyMask(threadPolicyMask);
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicyMask(threadPolicyMask);
                        throw th;
                    }
                }
                if ((violationInfo.policy & 262144) != 0) {
                    StrictMode.executeDeathPenalty(violationInfo);
                }
            }
            this.mLastViolationTime = new ArrayMap<>(1);
            jLongValue = 0;
            jUptimeMillis = SystemClock.uptimeMillis();
            this.mLastViolationTime.put(numValueOf, Long.valueOf(jUptimeMillis));
            if (jLongValue == 0) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = jUptimeMillis - jLongValue;
            }
            if ((violationInfo.policy & 65536) != 0) {
                StrictMode.sListener.onViolation(violationInfo.crashInfo.stackTrace);
            }
            if ((violationInfo.policy & 65536) != 0) {
                if (violationInfo.durationMillis != -1) {
                    StringBuilder sb2 = new StringBuilder("StrictMode policy violation; ~duration=");
                    sb2.append(violationInfo.durationMillis);
                    sb2.append(" ms: ");
                    m.x(sb2, violationInfo.crashInfo.stackTrace, StrictMode.TAG);
                } else {
                    m.x(new StringBuilder("StrictMode policy violation: "), violationInfo.crashInfo.stackTrace, StrictMode.TAG);
                }
            }
            i2 = violationInfo.policy;
            if ((i2 & 131072) != 0) {
            }
            if ((i2 & 2097152) != 0) {
                i3 |= 2097152;
            }
            if (i3 != 0) {
                violationFromMessage = StrictMode.parseViolationFromMessage(violationInfo.crashInfo.exceptionMessage) | i3;
                threadPolicyMask = StrictMode.getThreadPolicyMask();
                if ((violationInfo.policy & StrictMode.THREAD_PENALTY_MASK) == 2097152) {
                    StrictMode.dropboxViolationAsync(violationFromMessage, violationInfo);
                    return;
                } else {
                    StrictMode.setThreadPolicyMask(0);
                    ActivityManager.getService().handleApplicationStrictModeViolation(RuntimeInit.getApplicationObject(), violationFromMessage, violationInfo);
                    StrictMode.setThreadPolicyMask(threadPolicyMask);
                }
            }
            if ((violationInfo.policy & 262144) != 0) {
                StrictMode.executeDeathPenalty(violationInfo);
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void handleViolationWithTimingAttempt(ViolationInfo violationInfo) throws BlockGuard.BlockGuardPolicyException {
            if (Looper.myLooper() == null || (violationInfo.policy & StrictMode.THREAD_PENALTY_MASK) == 262144) {
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
            final IWindowManager iWindowManager = (violationInfo.policy & 1048576) != 0 ? (IWindowManager) StrictMode.sWindowManager.get() : null;
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
            if ((i2 & 16777216) != 0) {
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
        public void onResourceMismatch(Object obj) throws BlockGuard.BlockGuardPolicyException {
            if ((this.mPolicyMask & 16) == 0 || StrictMode.tooManyViolationsThisLoop()) {
                return;
            }
            StrictModeResourceMismatchViolation strictModeResourceMismatchViolation = new StrictModeResourceMismatchViolation(this.mPolicyMask, obj);
            strictModeResourceMismatchViolation.fillInStackTrace();
            startHandlingViolationException(strictModeResourceMismatchViolation);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
        public void onUnbufferedIO() throws BlockGuard.BlockGuardPolicyException {
            if ((this.mPolicyMask & 32) == 0 || StrictMode.tooManyViolationsThisLoop()) {
                return;
            }
            StrictModeUnbufferedIOViolation strictModeUnbufferedIOViolation = new StrictModeUnbufferedIOViolation(this.mPolicyMask);
            strictModeUnbufferedIOViolation.fillInStackTrace();
            startHandlingViolationException(strictModeUnbufferedIOViolation);
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
        final Class mClass;
        final long mInstances;
        final int mLimit;

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

    public static class StrictModeResourceMismatchViolation extends StrictModeViolation {
        public StrictModeResourceMismatchViolation(int i2, Object obj) {
            super(i2, 16, obj != null ? obj.toString() : null);
        }
    }

    public static class StrictModeUnbufferedIOViolation extends StrictModeViolation {
        public StrictModeUnbufferedIOViolation(int i2) {
            super(i2, 32, null);
        }
    }

    public static class StrictModeViolation extends BlockGuard.BlockGuardPolicyException {
        public StrictModeViolation(int i2, int i3, String str) {
            super(i2, i3, str);
        }
    }

    public static final class ThreadPolicy {
        public static final ThreadPolicy LAX = new ThreadPolicy(0);
        final int mask;

        public String toString() {
            return android.accessibilityservice.c.m(new StringBuilder("[StrictMode.ThreadPolicy; mask="), this.mask, "]");
        }

        public static final class Builder {
            private int mMask;

            public Builder() {
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
                if (i2 != 0 && (i2 & 2555904) == 0) {
                    penaltyLog();
                }
                return new ThreadPolicy(this.mMask);
            }

            public Builder detectAll() {
                detectDiskReads();
                detectDiskWrites();
                detectNetwork();
                int targetSdkVersion = VMRuntime.getRuntime().getTargetSdkVersion();
                if (targetSdkVersion >= 11) {
                    detectCustomSlowCalls();
                }
                if (targetSdkVersion >= 23) {
                    detectResourceMismatches();
                }
                if (targetSdkVersion >= 26) {
                    detectUnbufferedIo();
                }
                return this;
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

            public Builder detectResourceMismatches() {
                return enable(16);
            }

            public Builder detectUnbufferedIo() {
                return enable(32);
            }

            public Builder penaltyDeath() {
                return enable(262144);
            }

            public Builder penaltyDeathOnNetwork() {
                return enable(16777216);
            }

            public Builder penaltyDialog() {
                return enable(131072);
            }

            public Builder penaltyDropBox() {
                return enable(2097152);
            }

            public Builder penaltyFlashScreen() {
                return enable(1048576);
            }

            public Builder penaltyLog() {
                return enable(65536);
            }

            public Builder permitAll() {
                return disable(63);
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

            public Builder permitResourceMismatches() {
                return disable(16);
            }

            public Builder permitUnbufferedIo() {
                return disable(32);
            }

            public Builder(ThreadPolicy threadPolicy) {
                this.mMask = 0;
                this.mMask = threadPolicy.mask;
            }
        }

        private ThreadPolicy(int i2) {
            this.mask = i2;
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

    public interface ViolationListener {
        void onViolation(String str);
    }

    public static final class VmPolicy {
        public static final VmPolicy LAX = new VmPolicy(0, StrictMode.EMPTY_CLASS_LIMIT_MAP);
        final HashMap<Class, Integer> classInstanceLimit;
        final int mask;

        public String toString() {
            return android.accessibilityservice.c.m(new StringBuilder("[StrictMode.VmPolicy; mask="), this.mask, "]");
        }

        private VmPolicy(int i2, HashMap<Class, Integer> map) {
            if (map == null) {
                throw new NullPointerException("classInstanceLimit == null");
            }
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

            /* JADX INFO: Access modifiers changed from: private */
            public Builder enable(int i2) {
                this.mMask = i2 | this.mMask;
                return this;
            }

            public VmPolicy build() {
                int i2 = this.mMask;
                if (i2 != 0 && (i2 & 2555904) == 0) {
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
                return enable(1024);
            }

            public Builder detectAll() {
                detectLeakedSqlLiteObjects();
                int targetSdkVersion = VMRuntime.getRuntime().getTargetSdkVersion();
                if (targetSdkVersion >= 11) {
                    detectActivityLeaks();
                    detectLeakedClosableObjects();
                }
                if (targetSdkVersion >= 16) {
                    detectLeakedRegistrationObjects();
                }
                if (targetSdkVersion >= 18) {
                    detectFileUriExposure();
                }
                if (targetSdkVersion >= 23 && SystemProperties.getBoolean(StrictMode.CLEARTEXT_PROPERTY, false)) {
                    detectCleartextNetwork();
                }
                if (targetSdkVersion >= 26) {
                    detectContentUriWithoutPermission();
                    detectUntaggedSockets();
                }
                return this;
            }

            public Builder detectCleartextNetwork() {
                return enable(16384);
            }

            public Builder detectContentUriWithoutPermission() {
                return enable(32768);
            }

            public Builder detectFileUriExposure() {
                return enable(8192);
            }

            public Builder detectLeakedClosableObjects() {
                return enable(512);
            }

            public Builder detectLeakedRegistrationObjects() {
                return enable(4096);
            }

            public Builder detectLeakedSqlLiteObjects() {
                return enable(256);
            }

            public Builder detectUntaggedSockets() {
                return enable(Integer.MIN_VALUE);
            }

            public Builder disable(int i2) {
                this.mMask = (~i2) & this.mMask;
                return this;
            }

            public Builder penaltyDeath() {
                return enable(262144);
            }

            public Builder penaltyDeathOnCleartextNetwork() {
                return enable(33554432);
            }

            public Builder penaltyDeathOnFileUriExposure() {
                return enable(67108864);
            }

            public Builder penaltyDropBox() {
                return enable(2097152);
            }

            public Builder penaltyLog() {
                return enable(65536);
            }

            public Builder setClassInstanceLimit(Class cls, int i2) {
                if (cls == null) {
                    throw new NullPointerException("klass == null");
                }
                if (this.mClassInstanceLimitNeedCow) {
                    if (this.mClassInstanceLimit.containsKey(cls) && this.mClassInstanceLimit.get(cls).intValue() == i2) {
                        return this;
                    }
                    this.mClassInstanceLimitNeedCow = false;
                    this.mClassInstanceLimit = (HashMap) this.mClassInstanceLimit.clone();
                } else if (this.mClassInstanceLimit == null) {
                    this.mClassInstanceLimit = new HashMap<>();
                }
                this.mMask |= 2048;
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
        int size = vmPolicy.classInstanceLimit.size();
        if (size == 0) {
            return;
        }
        System.gc();
        System.runFinalization();
        System.gc();
        Class[] clsArr = (Class[]) vmPolicy.classInstanceLimit.keySet().toArray(new Class[size]);
        long[] jArrCountInstancesOfClasses = VMDebug.countInstancesOfClasses(clsArr, false);
        for (int i2 = 0; i2 < clsArr.length; i2++) {
            Class cls = clsArr[i2];
            int iIntValue = vmPolicy.classInstanceLimit.get(cls).intValue();
            long j2 = jArrCountInstancesOfClasses[i2];
            if (j2 > iIntValue) {
                InstanceCountViolation instanceCountViolation = new InstanceCountViolation(cls, j2, iIntValue);
                onVmPolicyViolation(instanceCountViolation.getMessage(), instanceCountViolation);
            }
        }
    }

    public static boolean conditionallyEnableDebugLogging() {
        boolean z2 = SystemProperties.getBoolean(VISUAL_PROPERTY, false) && !amTheSystemServerProcess();
        boolean z3 = SystemProperties.getBoolean(DISABLE_PROPERTY, false);
        if (!z2 && (Build.IS_USER || z3)) {
            setCloseGuardEnabled(false);
            return false;
        }
        boolean z4 = Build.IS_ENG;
        if (z4) {
            z2 = true;
        }
        boolean z5 = Build.IS_USER;
        int i2 = !z5 ? 2097159 : 7;
        if (z2) {
            i2 |= 1048576;
        }
        setThreadPolicyMask(i2);
        if (z5) {
            setCloseGuardEnabled(false);
        } else {
            VmPolicy.Builder builderDetectAll = new VmPolicy.Builder().detectAll();
            if (!z4) {
                builderDetectAll = builderDetectAll.disable(1024);
            }
            VmPolicy.Builder builderPenaltyDropBox = builderDetectAll.penaltyDropBox();
            if (z4) {
                builderPenaltyDropBox.penaltyLog();
            }
            if (Process.myUid() < 10000) {
                builderPenaltyDropBox.enable(Integer.MIN_VALUE);
            } else {
                builderPenaltyDropBox.disable(Integer.MIN_VALUE);
            }
            setVmPolicy(builderPenaltyDropBox.build());
            setCloseGuardEnabled(vmClosableObjectLeaksEnabled());
        }
        return true;
    }

    public static void decrementExpectedActivityCount(Class cls) {
        if (cls == null) {
            return;
        }
        synchronized (StrictMode.class) {
            if ((sVmPolicy.mask & 1024) == 0) {
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
            System.gc();
            System.runFinalization();
            System.gc();
            long jCountInstancesOfClass = VMDebug.countInstancesOfClass(cls, false);
            if (jCountInstancesOfClass > i2) {
                InstanceCountViolation instanceCountViolation = new InstanceCountViolation(cls, jCountInstancesOfClass, i2);
                onVmPolicyViolation(instanceCountViolation.getMessage(), instanceCountViolation);
            }
        }
    }

    public static void disableDeathOnFileUriExposure() {
        sVmPolicyMask &= -67117057;
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
                    IActivityManager service = ActivityManager.getService();
                    if (service == null) {
                        Log.d(StrictMode.TAG, "No activity manager; failed to Dropbox violation.");
                    } else {
                        service.handleApplicationStrictModeViolation(RuntimeInit.getApplicationObject(), i2, violationInfo);
                    }
                } catch (RemoteException e2) {
                    if (!(e2 instanceof DeadObjectException)) {
                        Log.e(StrictMode.TAG, "RemoteException handling StrictMode violation", e2);
                    }
                }
                int iDecrementAndGet = StrictMode.sDropboxCallsInFlight.decrementAndGet();
                if (StrictMode.LOG_V) {
                    Log.d(StrictMode.TAG, "Dropbox complete; in-flight=" + iDecrementAndGet);
                }
            }
        }.start();
    }

    public static void enableDeathOnFileUriExposure() {
        sVmPolicyMask |= 67117056;
    }

    public static void enableDeathOnNetwork() {
        setThreadPolicyMask(getThreadPolicyMask() | 4 | 16777216);
    }

    public static void enableDefaults() {
        setThreadPolicy(new ThreadPolicy.Builder().detectAll().penaltyLog().build());
        setVmPolicy(new VmPolicy.Builder().detectAll().penaltyLog().build());
    }

    public static Span enterCriticalSpan(String str) {
        Span span;
        if (Build.IS_USER) {
            return NO_OP_SPAN;
        }
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("name must be non-null and non-empty");
        }
        ThreadSpanState threadSpanState = sThisThreadSpanState.get();
        synchronized (threadSpanState) {
            span = threadSpanState.mFreeListHead;
            if (span != null) {
                threadSpanState.mFreeListHead = span.mNext;
                threadSpanState.mFreeListSize--;
            } else {
                span = new Span(threadSpanState);
            }
            span.mName = str;
            span.mCreateMillis = SystemClock.uptimeMillis();
            span.mNext = threadSpanState.mActiveHead;
            span.mPrev = null;
            threadSpanState.mActiveHead = span;
            threadSpanState.mActiveSize++;
            if (span.mNext != null) {
                span.mNext.mPrev = span;
            }
            if (LOG_V) {
                Log.d(TAG, "Span enter=" + str + "; size=" + threadSpanState.mActiveSize);
            }
        }
        return span;
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
            if ((sVmPolicy.mask & 1024) == 0) {
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
    public static void noteResourceMismatch(Object obj) throws BlockGuard.BlockGuardPolicyException {
        BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
        if (threadPolicy instanceof AndroidBlockGuardPolicy) {
            ((AndroidBlockGuardPolicy) threadPolicy).onResourceMismatch(obj);
        }
    }

    public static void noteSlowCall(String str) {
        BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
        if (threadPolicy instanceof AndroidBlockGuardPolicy) {
            ((AndroidBlockGuardPolicy) threadPolicy).onCustomSlowCall(str);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    public static void noteUnbufferedIO() throws BlockGuard.BlockGuardPolicyException {
        BlockGuard.Policy threadPolicy = BlockGuard.getThreadPolicy();
        if (threadPolicy instanceof AndroidBlockGuardPolicy) {
            ((AndroidBlockGuardPolicy) threadPolicy).onUnbufferedIO();
        }
    }

    private static void onBinderStrictModePolicyChange(int i2) {
        setBlockGuardPolicy(i2);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    public static void onCleartextNetworkDetected(byte[] bArr) {
        byte[] bArr2;
        if (bArr == null) {
            bArr2 = null;
        } else if (bArr.length >= 20 && (bArr[0] & 240) == 64) {
            bArr2 = new byte[4];
            System.arraycopy(bArr, 16, bArr2, 0, 4);
        } else if (bArr.length < 40 || (bArr[0] & 240) != 96) {
            bArr2 = null;
        } else {
            bArr2 = new byte[16];
            System.arraycopy(bArr, 24, bArr2, 0, 16);
        }
        int iMyUid = Process.myUid();
        String strD = android.accessibilityservice.c.d("Detected cleartext network traffic from UID ", iMyUid);
        if (bArr2 != null) {
            try {
                strD = "Detected cleartext network traffic from UID " + iMyUid + " to " + InetAddress.getByAddress(bArr2);
            } catch (UnknownHostException unused) {
            }
        }
        onVmPolicyViolation(HexDump.dumpHexString(bArr).trim(), new Throwable(strD), (sVmPolicyMask & 33554432) != 0);
    }

    public static void onContentUriWithoutPermission(Uri uri, String str) {
        onVmPolicyViolation(null, new Throwable(uri + " exposed beyond app through " + str + " without permission grant flags; did you forget FLAG_GRANT_READ_URI_PERMISSION?"));
    }

    public static void onFileUriExposed(Uri uri, String str) {
        String str2 = uri + " exposed beyond app through " + str;
        if ((sVmPolicyMask & 67108864) != 0) {
            throw new FileUriExposedException(str2);
        }
        onVmPolicyViolation(null, new Throwable(str2));
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

    public static void onUntaggedSocket() {
        onVmPolicyViolation(null, new Throwable("Untagged socket detected; use TrafficStats.setThreadSocketTag() to track all network usage"));
    }

    public static void onVmPolicyViolation(String str, Throwable th) {
        onVmPolicyViolation(str, th, false);
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
            return Integer.parseInt(str.substring(7, iIndexOf));
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
            return Integer.parseInt(str.substring(i2, iIndexOf2));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static void readAndHandleBinderCallViolations(Parcel parcel) {
        StringWriter stringWriter = new StringWriter();
        stringWriter.append((CharSequence) "# via Binder call with stack:\n");
        FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) stringWriter, false, 256);
        new LogStackTrace().printStackTrace(fastPrintWriter);
        fastPrintWriter.flush();
        String string = stringWriter.toString();
        boolean z2 = (getThreadPolicyMask() & 4194304) != 0;
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            ViolationInfo violationInfo = new ViolationInfo(parcel, !z2);
            violationInfo.crashInfo.appendStackTrace(string);
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

    public static void setViolationListener(ViolationListener violationListener) {
        sListener = violationListener;
    }

    public static void setVmPolicy(VmPolicy vmPolicy) {
        synchronized (StrictMode.class) {
            sVmPolicy = vmPolicy;
            sVmPolicyMask = vmPolicy.mask;
            setCloseGuardEnabled(vmClosableObjectLeaksEnabled());
            Looper mainLooper = Looper.getMainLooper();
            int i2 = 1;
            if (mainLooper != null) {
                MessageQueue messageQueue = mainLooper.mQueue;
                if (vmPolicy.classInstanceLimit.size() == 0 || (sVmPolicyMask & VM_PENALTY_MASK) == 0) {
                    messageQueue.removeIdleHandler(sProcessIdleHandler);
                    sIsIdlerRegistered = false;
                } else if (!sIsIdlerRegistered) {
                    messageQueue.addIdleHandler(sProcessIdleHandler);
                    sIsIdlerRegistered = true;
                }
            }
            if ((sVmPolicyMask & 16384) == 0) {
                i2 = 0;
            } else if ((sVmPolicyMask & 262144) != 0 || (sVmPolicyMask & 33554432) != 0) {
                i2 = 2;
            }
            INetworkManagementService iNetworkManagementServiceAsInterface = INetworkManagementService.Stub.asInterface(ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE));
            if (iNetworkManagementServiceAsInterface != null) {
                try {
                    iNetworkManagementServiceAsInterface.setUidCleartextNetworkPolicy(Process.myUid(), i2);
                } catch (RemoteException unused) {
                }
            } else if (i2 != 0) {
                Log.w(TAG, "Dropping requested network policy due to missing service!");
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

    public static boolean vmCleartextNetworkEnabled() {
        return (sVmPolicyMask & 16384) != 0;
    }

    public static boolean vmClosableObjectLeaksEnabled() {
        return (sVmPolicyMask & 512) != 0;
    }

    public static boolean vmContentUriWithoutPermissionEnabled() {
        return (sVmPolicyMask & 32768) != 0;
    }

    public static boolean vmFileUriExposureEnabled() {
        return (sVmPolicyMask & 8192) != 0;
    }

    public static boolean vmRegistrationLeaksEnabled() {
        return (sVmPolicyMask & 4096) != 0;
    }

    public static boolean vmSqliteObjectLeaksEnabled() {
        return (sVmPolicyMask & 256) != 0;
    }

    public static boolean vmUntaggedSocketEnabled() {
        return (sVmPolicyMask & Integer.MIN_VALUE) != 0;
    }

    public static void writeGatheredViolationsToParcel(Parcel parcel) {
        ArrayList<ViolationInfo> arrayList = gatheredViolations.get();
        if (arrayList == null) {
            parcel.writeInt(0);
        } else {
            int iMin = Math.min(arrayList.size(), 3);
            parcel.writeInt(iMin);
            for (int i2 = 0; i2 < iMin; i2++) {
                arrayList.get(i2).writeToParcel(parcel, 0);
            }
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

    public static void onVmPolicyViolation(String str, Throwable th, boolean z2) {
        long j2;
        long jLongValue;
        boolean z3 = (sVmPolicyMask & 2097152) != 0;
        boolean z4 = (sVmPolicyMask & 262144) != 0 || z2;
        boolean z5 = (sVmPolicyMask & 65536) != 0;
        ViolationInfo violationInfo = new ViolationInfo(str, th, sVmPolicyMask);
        violationInfo.numAnimationsRunning = 0;
        violationInfo.tags = null;
        violationInfo.broadcastIntentAction = null;
        Integer numValueOf = Integer.valueOf(violationInfo.hashCode());
        long jUptimeMillis = SystemClock.uptimeMillis();
        HashMap<Integer, Long> map = sLastVmViolationTime;
        synchronized (map) {
            if (map.containsKey(numValueOf)) {
                jLongValue = map.get(numValueOf).longValue();
                j2 = jUptimeMillis - jLongValue;
            } else {
                j2 = Long.MAX_VALUE;
                jLongValue = 0;
            }
            if (j2 > 1000) {
                map.put(numValueOf, Long.valueOf(jUptimeMillis));
            }
        }
        if (z5 && sListener != null) {
            sListener.onViolation(th.toString());
        }
        if (z5 && j2 > 1000) {
            Log.e(TAG, str, th);
        }
        int i2 = (ALL_VM_DETECT_BITS & sVmPolicyMask) | 2097152;
        if (z3 && !z4) {
            dropboxViolationAsync(i2, violationInfo);
            return;
        }
        if (z3 && jLongValue == 0) {
            int threadPolicyMask = getThreadPolicyMask();
            try {
                try {
                    setThreadPolicyMask(0);
                    ActivityManager.getService().handleApplicationStrictModeViolation(RuntimeInit.getApplicationObject(), i2, violationInfo);
                } catch (RemoteException e2) {
                    if (!(e2 instanceof DeadObjectException)) {
                        Log.e(TAG, "RemoteException trying to handle StrictMode violation", e2);
                    }
                }
                setThreadPolicyMask(threadPolicyMask);
            } catch (Throwable th2) {
                setThreadPolicyMask(threadPolicyMask);
                throw th2;
            }
        }
        if (z4) {
            System.err.println("StrictMode VmPolicy violation with POLICY_DEATH; shutting down.");
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    public static class ViolationInfo implements Parcelable {
        public static final Parcelable.Creator<ViolationInfo> CREATOR = new Parcelable.Creator<ViolationInfo>() { // from class: android.os.StrictMode.ViolationInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ViolationInfo createFromParcel(Parcel parcel) {
                return new ViolationInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ViolationInfo[] newArray(int i2) {
                return new ViolationInfo[i2];
            }
        };
        public String broadcastIntentAction;
        public final ApplicationErrorReport.CrashInfo crashInfo;
        public int durationMillis;
        public final String message;
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
            this.message = null;
            this.crashInfo = null;
            this.policy = 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void dump(Printer printer, String str) {
            ApplicationErrorReport.CrashInfo crashInfo = this.crashInfo;
            if (crashInfo != null) {
                crashInfo.dump(printer, str);
            }
            StringBuilder sbU = android.accessibilityservice.c.u(str, "policy: ");
            sbU.append(this.policy);
            printer.println(sbU.toString());
            if (this.durationMillis != -1) {
                StringBuilder sbU2 = android.accessibilityservice.c.u(str, "durationMillis: ");
                sbU2.append(this.durationMillis);
                printer.println(sbU2.toString());
            }
            if (this.numInstances != -1) {
                StringBuilder sbU3 = android.accessibilityservice.c.u(str, "numInstances: ");
                sbU3.append(this.numInstances);
                printer.println(sbU3.toString());
            }
            if (this.violationNumThisLoop != 0) {
                StringBuilder sbU4 = android.accessibilityservice.c.u(str, "violationNumThisLoop: ");
                sbU4.append(this.violationNumThisLoop);
                printer.println(sbU4.toString());
            }
            if (this.numAnimationsRunning != 0) {
                StringBuilder sbU5 = android.accessibilityservice.c.u(str, "numAnimationsRunning: ");
                sbU5.append(this.numAnimationsRunning);
                printer.println(sbU5.toString());
            }
            StringBuilder sbU6 = android.accessibilityservice.c.u(str, "violationUptimeMillis: ");
            sbU6.append(this.violationUptimeMillis);
            printer.println(sbU6.toString());
            if (this.broadcastIntentAction != null) {
                android.accessibilityservice.c.B(android.accessibilityservice.c.u(str, "broadcastIntentAction: "), this.broadcastIntentAction, printer);
            }
            String[] strArr = this.tags;
            if (strArr != null) {
                int length = strArr.length;
                int i2 = 0;
                int i3 = 0;
                while (i2 < length) {
                    String str2 = strArr[i2];
                    StringBuilder sbU7 = android.accessibilityservice.c.u(str, "tag[");
                    sbU7.append(i3);
                    sbU7.append("]: ");
                    sbU7.append(str2);
                    printer.println(sbU7.toString());
                    i2++;
                    i3++;
                }
            }
        }

        public int hashCode() {
            ApplicationErrorReport.CrashInfo crashInfo = this.crashInfo;
            int iHashCode = crashInfo != null ? crashInfo.stackTrace.hashCode() + MetricsProto.MetricsEvent.TEXT_LONGPRESS : 17;
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

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.message);
            if (this.crashInfo != null) {
                parcel.writeInt(1);
                this.crashInfo.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
            parcel.dataPosition();
            parcel.writeInt(this.policy);
            parcel.writeInt(this.durationMillis);
            parcel.writeInt(this.violationNumThisLoop);
            parcel.writeInt(this.numAnimationsRunning);
            parcel.writeLong(this.violationUptimeMillis);
            parcel.writeLong(this.numInstances);
            parcel.writeString(this.broadcastIntentAction);
            parcel.writeStringArray(this.tags);
            parcel.dataPosition();
        }

        public ViolationInfo(Throwable th, int i2) {
            this(null, th, i2);
        }

        public ViolationInfo(String str, Throwable th, int i2) {
            this.durationMillis = -1;
            int i3 = 0;
            this.numAnimationsRunning = 0;
            this.numInstances = -1L;
            this.message = str;
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
            this.message = parcel.readString();
            if (parcel.readInt() != 0) {
                this.crashInfo = new ApplicationErrorReport.CrashInfo(parcel);
            } else {
                this.crashInfo = null;
            }
            int i2 = parcel.readInt();
            if (z2) {
                this.policy = (-4194305) & i2;
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
