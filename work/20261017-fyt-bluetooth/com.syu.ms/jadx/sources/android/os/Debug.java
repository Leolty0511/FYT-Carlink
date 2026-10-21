package android.os;

import android.util.Log;
import com.android.internal.util.TypedProperties;
import dalvik.bytecode.OpcodeInfo;
import dalvik.system.VMDebug;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import org.apache.harmony.dalvik.ddmc.Chunk;
import org.apache.harmony.dalvik.ddmc.ChunkHandler;
import org.apache.harmony.dalvik.ddmc.DdmServer;
import u.e;

/* JADX INFO: loaded from: classes.dex */
public final class Debug {
    private static final String DEFAULT_TRACE_BODY = "dmtrace";
    private static final String DEFAULT_TRACE_EXTENSION = ".trace";
    private static final String DEFAULT_TRACE_FILE_PATH;
    private static final String DEFAULT_TRACE_PATH_PREFIX;
    public static final int MEMINFO_BUFFERS = 2;
    public static final int MEMINFO_CACHED = 3;
    public static final int MEMINFO_COUNT = 9;
    public static final int MEMINFO_FREE = 1;
    public static final int MEMINFO_SHMEM = 4;
    public static final int MEMINFO_SLAB = 5;
    public static final int MEMINFO_SWAP_FREE = 7;
    public static final int MEMINFO_SWAP_TOTAL = 6;
    public static final int MEMINFO_TOTAL = 0;
    public static final int MEMINFO_ZRAM_TOTAL = 8;
    private static final int MIN_DEBUGGER_IDLE = 1300;
    public static final int SHOW_CLASSLOADER = 2;
    public static final int SHOW_FULL_DETAIL = 1;
    public static final int SHOW_INITIALIZED = 4;
    private static final int SPIN_DELAY = 200;
    private static final String SYSFS_QEMU_TRACE_STATE = "/sys/qemu_trace/state";
    private static final String TAG = "Debug";
    public static final int TRACE_COUNT_ALLOCS = 1;
    private static final TypedProperties debugProperties = null;
    private static volatile boolean mWaiting = false;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface DebugProperty {
    }

    public static class InstructionCount {
        private static final int NUM_INSTR = OpcodeInfo.MAXIMUM_PACKED_VALUE + 1;
        private int[] mCounts = new int[NUM_INSTR];

        public boolean collect() {
            try {
                VMDebug.stopInstructionCounting();
                VMDebug.getInstructionCount(this.mCounts);
                return true;
            } catch (UnsupportedOperationException unused) {
                return false;
            }
        }

        public int globalMethodInvocations() {
            int i2 = 0;
            for (int i3 = 0; i3 < NUM_INSTR; i3++) {
                if (OpcodeInfo.isInvoke(i3)) {
                    i2 += this.mCounts[i3];
                }
            }
            return i2;
        }

        public int globalTotal() {
            int i2 = 0;
            for (int i3 = 0; i3 < NUM_INSTR; i3++) {
                i2 += this.mCounts[i3];
            }
            return i2;
        }

        public boolean resetAndStart() {
            try {
                VMDebug.startInstructionCounting();
                VMDebug.resetInstructionCount();
                return true;
            } catch (UnsupportedOperationException unused) {
                return false;
            }
        }
    }

    public static class MemoryInfo implements Parcelable {
        public static final Parcelable.Creator<MemoryInfo> CREATOR = new Parcelable.Creator<MemoryInfo>() { // from class: android.os.Debug.MemoryInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MemoryInfo createFromParcel(Parcel parcel) {
                return new MemoryInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MemoryInfo[] newArray(int i2) {
                return new MemoryInfo[i2];
            }
        };
        public static final int NUM_CATEGORIES = 7;
        public static final int NUM_DVK_STATS = 5;
        public static final int NUM_OTHER_STATS = 16;
        public static final int offsetPrivateClean = 4;
        public static final int offsetPrivateDirty = 2;
        public static final int offsetPss = 0;
        public static final int offsetSharedClean = 5;
        public static final int offsetSharedDirty = 3;
        public static final int offsetSwappablePss = 1;
        public static final int offsetSwappedOut = 6;
        public int dalvikPrivateClean;
        public int dalvikPrivateDirty;
        public int dalvikPss;
        public int dalvikSharedClean;
        public int dalvikSharedDirty;
        public int dalvikSwappablePss;
        public int dalvikSwappedOut;
        public int nativePrivateClean;
        public int nativePrivateDirty;
        public int nativePss;
        public int nativeSharedClean;
        public int nativeSharedDirty;
        public int nativeSwappablePss;
        public int nativeSwappedOut;
        public int otherPrivateClean;
        public int otherPrivateDirty;
        public int otherPss;
        public int otherSharedClean;
        public int otherSharedDirty;
        private int[] otherStats;
        public int otherSwappablePss;
        public int otherSwappedOut;

        public static String getOtherLabel(int i2) {
            switch (i2) {
                case 0:
                    return "Dalvik Other";
                case 1:
                    return "Stack";
                case 2:
                    return "Cursor";
                case 3:
                    return "Ashmem";
                case 4:
                    return "Other dev";
                case 5:
                    return ".so mmap";
                case 6:
                    return ".jar mmap";
                case 7:
                    return ".apk mmap";
                case 8:
                    return ".ttf mmap";
                case 9:
                    return ".dex mmap";
                case 10:
                    return "code mmap";
                case 11:
                    return "image mmap";
                case 12:
                    return "Other mmap";
                case 13:
                    return "Graphics";
                case 14:
                    return "GL";
                case 15:
                    return "Memtrack";
                case 16:
                    return ".Heap";
                case 17:
                    return ".LOS";
                case 18:
                    return ".LinearAlloc";
                case 19:
                    return ".GC";
                case 20:
                    return ".JITCache";
                default:
                    return "????";
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getOtherPrivateClean(int i2) {
            return this.otherStats[(i2 * 7) + 4];
        }

        public int getOtherPrivateDirty(int i2) {
            return this.otherStats[(i2 * 7) + 2];
        }

        public int getOtherPss(int i2) {
            return this.otherStats[(i2 * 7) + 0];
        }

        public int getOtherSharedClean(int i2) {
            return this.otherStats[(i2 * 7) + 5];
        }

        public int getOtherSharedDirty(int i2) {
            return this.otherStats[(i2 * 7) + 3];
        }

        public int getOtherSwappablePss(int i2) {
            return this.otherStats[(i2 * 7) + 1];
        }

        public int getOtherSwappedOut(int i2) {
            return this.otherStats[(i2 * 7) + 6];
        }

        public int getTotalPrivateClean() {
            return this.dalvikPrivateClean + this.nativePrivateClean + this.otherPrivateClean;
        }

        public int getTotalPrivateDirty() {
            return this.dalvikPrivateDirty + this.nativePrivateDirty + this.otherPrivateDirty;
        }

        public int getTotalPss() {
            return this.dalvikPss + this.nativePss + this.otherPss;
        }

        public int getTotalSharedClean() {
            return this.dalvikSharedClean + this.nativeSharedClean + this.otherSharedClean;
        }

        public int getTotalSharedDirty() {
            return this.dalvikSharedDirty + this.nativeSharedDirty + this.otherSharedDirty;
        }

        public int getTotalSwappablePss() {
            return this.dalvikSwappablePss + this.nativeSwappablePss + this.otherSwappablePss;
        }

        public int getTotalSwappedOut() {
            return this.dalvikSwappedOut + this.nativeSwappedOut + this.otherSwappedOut;
        }

        public int getTotalUss() {
            return this.dalvikPrivateClean + this.dalvikPrivateDirty + this.nativePrivateClean + this.nativePrivateDirty + this.otherPrivateClean + this.otherPrivateDirty;
        }

        public void readFromParcel(Parcel parcel) {
            this.dalvikPss = parcel.readInt();
            this.dalvikSwappablePss = parcel.readInt();
            this.dalvikPrivateDirty = parcel.readInt();
            this.dalvikSharedDirty = parcel.readInt();
            this.dalvikPrivateClean = parcel.readInt();
            this.dalvikSharedClean = parcel.readInt();
            this.dalvikSwappedOut = parcel.readInt();
            this.nativePss = parcel.readInt();
            this.nativeSwappablePss = parcel.readInt();
            this.nativePrivateDirty = parcel.readInt();
            this.nativeSharedDirty = parcel.readInt();
            this.nativePrivateClean = parcel.readInt();
            this.nativeSharedClean = parcel.readInt();
            this.nativeSwappedOut = parcel.readInt();
            this.otherPss = parcel.readInt();
            this.otherSwappablePss = parcel.readInt();
            this.otherPrivateDirty = parcel.readInt();
            this.otherSharedDirty = parcel.readInt();
            this.otherPrivateClean = parcel.readInt();
            this.otherSharedClean = parcel.readInt();
            this.otherSwappedOut = parcel.readInt();
            this.otherStats = parcel.createIntArray();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.dalvikPss);
            parcel.writeInt(this.dalvikSwappablePss);
            parcel.writeInt(this.dalvikPrivateDirty);
            parcel.writeInt(this.dalvikSharedDirty);
            parcel.writeInt(this.dalvikPrivateClean);
            parcel.writeInt(this.dalvikSharedClean);
            parcel.writeInt(this.dalvikSwappedOut);
            parcel.writeInt(this.nativePss);
            parcel.writeInt(this.nativeSwappablePss);
            parcel.writeInt(this.nativePrivateDirty);
            parcel.writeInt(this.nativeSharedDirty);
            parcel.writeInt(this.nativePrivateClean);
            parcel.writeInt(this.nativeSharedClean);
            parcel.writeInt(this.nativeSwappedOut);
            parcel.writeInt(this.otherPss);
            parcel.writeInt(this.otherSwappablePss);
            parcel.writeInt(this.otherPrivateDirty);
            parcel.writeInt(this.otherSharedDirty);
            parcel.writeInt(this.otherPrivateClean);
            parcel.writeInt(this.otherSharedClean);
            parcel.writeInt(this.otherSwappedOut);
            parcel.writeIntArray(this.otherStats);
        }

        public MemoryInfo() {
            this.otherStats = new int[147];
        }

        private MemoryInfo(Parcel parcel) {
            this.otherStats = new int[147];
            readFromParcel(parcel);
        }
    }

    static {
        String str = Environment.getLegacyExternalStorageDirectory().getPath() + "/";
        DEFAULT_TRACE_PATH_PREFIX = str;
        DEFAULT_TRACE_FILE_PATH = str + DEFAULT_TRACE_BODY + DEFAULT_TRACE_EXTENSION;
    }

    private Debug() {
    }

    public static final boolean cacheRegisterMap(String str) {
        return VMDebug.cacheRegisterMap(str);
    }

    @Deprecated
    public static void changeDebugPort(int i2) {
    }

    public static long countInstancesOfClass(Class cls) {
        return VMDebug.countInstancesOfClass(cls, true);
    }

    public static void dumpHprofData(String str) {
        VMDebug.dumpHprofData(str);
    }

    public static void dumpHprofDataDdms() {
        VMDebug.dumpHprofDataDdms();
    }

    public static native void dumpNativeBacktraceToFile(int i2, String str);

    public static native void dumpNativeHeap(FileDescriptor fileDescriptor);

    public static final void dumpReferenceTables() {
        VMDebug.dumpReferenceTables();
    }

    public static boolean dumpService(String str, FileDescriptor fileDescriptor, String[] strArr) {
        IBinder service = ServiceManager.getService(str);
        if (service == null) {
            Log.e(TAG, "Can't find service to dump: " + str);
            return false;
        }
        try {
            service.dump(fileDescriptor, strArr);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "Can't dump service: " + str, e2);
            return false;
        }
    }

    public static void enableEmulatorTraceOutput() {
        VMDebug.startEmulatorTracing();
    }

    private static boolean fieldTypeMatches(Field field, Class<?> cls) {
        Class<?> type = field.getType();
        if (type == cls) {
            return true;
        }
        try {
            return type == ((Class) cls.getField("TYPE").get(null));
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return false;
        }
    }

    public static final native int getBinderDeathObjectCount();

    public static final native int getBinderLocalObjectCount();

    public static final native int getBinderProxyObjectCount();

    public static native int getBinderReceivedTransactions();

    public static native int getBinderSentTransactions();

    private static String getCaller(StackTraceElement[] stackTraceElementArr, int i2) {
        int i3 = i2 + 4;
        if (i3 >= stackTraceElementArr.length) {
            return "<bottom of call stack>";
        }
        StackTraceElement stackTraceElement = stackTraceElementArr[i3];
        return stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
    }

    public static String getCallers(int i2) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < i2; i3++) {
            stringBuffer.append(getCaller(stackTrace, i3));
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    public static int getGlobalAllocCount() {
        return VMDebug.getAllocCount(1);
    }

    public static int getGlobalAllocSize() {
        return VMDebug.getAllocCount(2);
    }

    public static int getGlobalClassInitCount() {
        return VMDebug.getAllocCount(32);
    }

    public static int getGlobalClassInitTime() {
        return VMDebug.getAllocCount(64);
    }

    @Deprecated
    public static int getGlobalExternalAllocCount() {
        return 0;
    }

    @Deprecated
    public static int getGlobalExternalAllocSize() {
        return 0;
    }

    @Deprecated
    public static int getGlobalExternalFreedCount() {
        return 0;
    }

    @Deprecated
    public static int getGlobalExternalFreedSize() {
        return 0;
    }

    public static int getGlobalFreedCount() {
        return VMDebug.getAllocCount(4);
    }

    public static int getGlobalFreedSize() {
        return VMDebug.getAllocCount(8);
    }

    public static int getGlobalGcInvocationCount() {
        return VMDebug.getAllocCount(16);
    }

    public static int getLoadedClassCount() {
        return VMDebug.getLoadedClassCount();
    }

    public static native void getMemInfo(long[] jArr);

    public static native void getMemoryInfo(int i2, MemoryInfo memoryInfo);

    public static native void getMemoryInfo(MemoryInfo memoryInfo);

    public static int getMethodTracingMode() {
        return VMDebug.getMethodTracingMode();
    }

    public static native long getNativeHeapAllocatedSize();

    public static native long getNativeHeapFreeSize();

    public static native long getNativeHeapSize();

    public static native long getPss();

    public static native long getPss(int i2, long[] jArr);

    public static int getThreadAllocCount() {
        return VMDebug.getAllocCount(65536);
    }

    public static int getThreadAllocSize() {
        return VMDebug.getAllocCount(131072);
    }

    @Deprecated
    public static int getThreadExternalAllocCount() {
        return 0;
    }

    @Deprecated
    public static int getThreadExternalAllocSize() {
        return 0;
    }

    public static int getThreadGcInvocationCount() {
        return VMDebug.getAllocCount(1048576);
    }

    public static String[] getVmFeatureList() {
        return VMDebug.getVmFeatureList();
    }

    public static boolean isDebuggerConnected() {
        return VMDebug.isDebuggerConnected();
    }

    private static void modifyFieldIfSet(Field field, TypedProperties typedProperties, String str) {
        if (field.getType() != String.class) {
            throw null;
        }
        throw null;
    }

    public static void printLoadedClasses(int i2) {
        VMDebug.printLoadedClasses(i2);
    }

    public static void resetAllCounts() {
        VMDebug.resetAllocCount(-1);
    }

    public static void resetGlobalAllocCount() {
        VMDebug.resetAllocCount(1);
    }

    public static void resetGlobalAllocSize() {
        VMDebug.resetAllocCount(2);
    }

    public static void resetGlobalClassInitCount() {
        VMDebug.resetAllocCount(32);
    }

    public static void resetGlobalClassInitTime() {
        VMDebug.resetAllocCount(64);
    }

    @Deprecated
    public static void resetGlobalExternalAllocCount() {
    }

    @Deprecated
    public static void resetGlobalExternalAllocSize() {
    }

    @Deprecated
    public static void resetGlobalExternalFreedCount() {
    }

    @Deprecated
    public static void resetGlobalExternalFreedSize() {
    }

    public static void resetGlobalFreedCount() {
        VMDebug.resetAllocCount(4);
    }

    public static void resetGlobalFreedSize() {
        VMDebug.resetAllocCount(8);
    }

    public static void resetGlobalGcInvocationCount() {
        VMDebug.resetAllocCount(16);
    }

    public static void resetThreadAllocCount() {
        VMDebug.resetAllocCount(65536);
    }

    public static void resetThreadAllocSize() {
        VMDebug.resetAllocCount(131072);
    }

    @Deprecated
    public static void resetThreadExternalAllocCount() {
    }

    @Deprecated
    public static void resetThreadExternalAllocSize() {
    }

    public static void resetThreadGcInvocationCount() {
        VMDebug.resetAllocCount(1048576);
    }

    @Deprecated
    public static int setAllocationLimit(int i2) {
        return -1;
    }

    public static void setFieldsOn(Class<?> cls) {
        setFieldsOn(cls, false);
    }

    @Deprecated
    public static int setGlobalAllocationLimit(int i2) {
        return -1;
    }

    @Deprecated
    public static void startAllocCounting() {
        VMDebug.startAllocCounting();
    }

    public static void startMethodTracing() {
        VMDebug.startMethodTracing(DEFAULT_TRACE_FILE_PATH, 0, 0);
    }

    public static void startMethodTracingDdms(int i2, int i3, boolean z2, int i4) {
        VMDebug.startMethodTracingDdms(i2, i3, z2, i4);
    }

    public static void startNativeTracing() throws Throwable {
        e eVar;
        Throwable th;
        e eVar2 = null;
        try {
            eVar = new e(new FileOutputStream(SYSFS_QEMU_TRACE_STATE));
            try {
                eVar.println("1");
                eVar.close();
            } catch (Exception unused) {
                eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (eVar != null) {
                    eVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            eVar = null;
            th = th3;
        }
        VMDebug.startEmulatorTracing();
    }

    @Deprecated
    public static void stopAllocCounting() {
        VMDebug.stopAllocCounting();
    }

    public static void stopMethodTracing() {
        VMDebug.stopMethodTracing();
    }

    public static void stopNativeTracing() throws Throwable {
        e eVar;
        Throwable th;
        VMDebug.stopEmulatorTracing();
        e eVar2 = null;
        try {
            eVar = new e(new FileOutputStream(SYSFS_QEMU_TRACE_STATE));
            try {
                eVar.println("0");
                eVar.close();
            } catch (Exception unused) {
                eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (eVar != null) {
                    eVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            eVar = null;
            th = th3;
        }
    }

    public static long threadCpuTimeNanos() {
        return VMDebug.threadCpuTimeNanos();
    }

    public static void waitForDebugger() {
        if (!VMDebug.isDebuggingEnabled() || isDebuggerConnected()) {
            return;
        }
        System.out.println("Sending WAIT chunk");
        DdmServer.sendChunk(new Chunk(ChunkHandler.type("WAIT"), new byte[]{0}, 0, 1));
        mWaiting = true;
        while (!isDebuggerConnected()) {
            try {
                Thread.sleep(200L);
            } catch (InterruptedException unused) {
            }
        }
        mWaiting = false;
        System.out.println("Debugger has connected");
        while (true) {
            long jLastDebuggerActivity = VMDebug.lastDebuggerActivity();
            if (jLastDebuggerActivity < 0) {
                System.out.println("debugger detached?");
                return;
            }
            if (jLastDebuggerActivity >= 1300) {
                System.out.println("debugger has settled (" + jLastDebuggerActivity + ")");
                return;
            }
            System.out.println("waiting for debugger to settle...");
            try {
                Thread.sleep(200L);
            } catch (InterruptedException unused2) {
            }
        }
    }

    public static boolean waitingForDebugger() {
        return mWaiting;
    }

    public static void dumpHprofData(String str, FileDescriptor fileDescriptor) {
        VMDebug.dumpHprofData(str, fileDescriptor);
    }

    public static void setFieldsOn(Class<?> cls, boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append("setFieldsOn(");
        sb.append(cls == null ? "null" : cls.getName());
        sb.append(") called in non-DEBUG build");
        Log.wtf(TAG, sb.toString());
    }

    public static void startMethodTracing(String str) {
        startMethodTracing(str, 0, 0);
    }

    public static void startMethodTracing(String str, int i2) {
        startMethodTracing(str, i2, 0);
    }

    public static String getCaller() {
        return getCaller(Thread.currentThread().getStackTrace(), 0);
    }

    public static void startMethodTracing(String str, int i2, int i3) {
        if (str.charAt(0) != '/') {
            str = DEFAULT_TRACE_PATH_PREFIX + str;
        }
        if (!str.endsWith(DEFAULT_TRACE_EXTENSION)) {
            str = str + DEFAULT_TRACE_EXTENSION;
        }
        VMDebug.startMethodTracing(str, i2, i3);
    }

    public static String getCallers(int i2, int i3) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        int i4 = i3 + i2;
        while (i2 < i4) {
            stringBuffer.append(getCaller(stackTrace, i2));
            stringBuffer.append(" ");
            i2++;
        }
        return stringBuffer.toString();
    }

    public static String getCallers(int i2, String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < i2; i3++) {
            stringBuffer.append(str);
            stringBuffer.append(getCaller(stackTrace, i3));
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    public static void startMethodTracing(String str, FileDescriptor fileDescriptor, int i2, int i3) {
        VMDebug.startMethodTracing(str, fileDescriptor, i2, i3);
    }
}
