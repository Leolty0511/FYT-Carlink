package com.android.internal.app.procstats;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Debug;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.SettingsStringUtil;
import android.text.format.DateFormat;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import com.android.internal.app.ProcessMap;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.telephony.PhoneConstants;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class ProcessStats implements Parcelable {
    public static final int ADJ_COUNT = 8;
    public static final int ADJ_MEM_FACTOR_COUNT = 4;
    public static final int ADJ_MEM_FACTOR_CRITICAL = 3;
    public static final int ADJ_MEM_FACTOR_LOW = 2;
    public static final int ADJ_MEM_FACTOR_MODERATE = 1;
    public static final int ADJ_MEM_FACTOR_NORMAL = 0;
    public static final int ADJ_NOTHING = -1;
    public static final int ADJ_SCREEN_MOD = 4;
    public static final int ADJ_SCREEN_OFF = 0;
    public static final int ADJ_SCREEN_ON = 4;
    public static long COMMIT_PERIOD = 10800000;
    public static long COMMIT_UPTIME_PERIOD = 3600000;
    static final boolean DEBUG = false;
    static final boolean DEBUG_PARCEL = false;
    public static final int FLAG_COMPLETE = 1;
    public static final int FLAG_SHUTDOWN = 2;
    public static final int FLAG_SYSPROPS = 4;
    private static final int MAGIC = 1347638356;
    private static final int PARCEL_VERSION = 21;
    public static final int PSS_AVERAGE = 2;
    public static final int PSS_COUNT = 7;
    public static final int PSS_MAXIMUM = 3;
    public static final int PSS_MINIMUM = 1;
    public static final int PSS_SAMPLE_COUNT = 0;
    public static final int PSS_USS_AVERAGE = 5;
    public static final int PSS_USS_MAXIMUM = 6;
    public static final int PSS_USS_MINIMUM = 4;
    public static final String SERVICE_NAME = "procstats";
    public static final int STATE_BACKUP = 4;
    public static final int STATE_CACHED_ACTIVITY = 11;
    public static final int STATE_CACHED_ACTIVITY_CLIENT = 12;
    public static final int STATE_CACHED_EMPTY = 13;
    public static final int STATE_COUNT = 14;
    public static final int STATE_HEAVY_WEIGHT = 5;
    public static final int STATE_HOME = 9;
    public static final int STATE_IMPORTANT_BACKGROUND = 3;
    public static final int STATE_IMPORTANT_FOREGROUND = 2;
    public static final int STATE_LAST_ACTIVITY = 10;
    public static final int STATE_NOTHING = -1;
    public static final int STATE_PERSISTENT = 0;
    public static final int STATE_RECEIVER = 8;
    public static final int STATE_SERVICE = 6;
    public static final int STATE_SERVICE_RESTARTING = 7;
    public static final int STATE_TOP = 1;
    public static final int SYS_MEM_USAGE_CACHED_AVERAGE = 2;
    public static final int SYS_MEM_USAGE_CACHED_MAXIMUM = 3;
    public static final int SYS_MEM_USAGE_CACHED_MINIMUM = 1;
    public static final int SYS_MEM_USAGE_COUNT = 16;
    public static final int SYS_MEM_USAGE_FREE_AVERAGE = 5;
    public static final int SYS_MEM_USAGE_FREE_MAXIMUM = 6;
    public static final int SYS_MEM_USAGE_FREE_MINIMUM = 4;
    public static final int SYS_MEM_USAGE_KERNEL_AVERAGE = 11;
    public static final int SYS_MEM_USAGE_KERNEL_MAXIMUM = 12;
    public static final int SYS_MEM_USAGE_KERNEL_MINIMUM = 10;
    public static final int SYS_MEM_USAGE_NATIVE_AVERAGE = 14;
    public static final int SYS_MEM_USAGE_NATIVE_MAXIMUM = 15;
    public static final int SYS_MEM_USAGE_NATIVE_MINIMUM = 13;
    public static final int SYS_MEM_USAGE_SAMPLE_COUNT = 0;
    public static final int SYS_MEM_USAGE_ZRAM_AVERAGE = 8;
    public static final int SYS_MEM_USAGE_ZRAM_MAXIMUM = 9;
    public static final int SYS_MEM_USAGE_ZRAM_MINIMUM = 7;
    public static final String TAG = "ProcessStats";
    ArrayMap<String, Integer> mCommonStringToIndex;
    public int mFlags;
    boolean mHasSwappedOutPss;
    ArrayList<String> mIndexToCommonString;
    public int mMemFactor;
    public final long[] mMemFactorDurations;
    public final ProcessMap<SparseArray<PackageState>> mPackages;
    private final ArrayList<String> mPageTypeLabels;
    private final ArrayList<int[]> mPageTypeSizes;
    private final ArrayList<Integer> mPageTypeZones;
    public final ProcessMap<ProcessState> mProcesses;
    public String mReadError;
    boolean mRunning;
    String mRuntime;
    public long mStartTime;
    public final SysMemUsageTable mSysMemUsage;
    public final long[] mSysMemUsageArgs;
    public final SparseMappingTable mTableData;
    public long mTimePeriodEndRealtime;
    public long mTimePeriodEndUptime;
    public long mTimePeriodStartClock;
    public String mTimePeriodStartClockStr;
    public long mTimePeriodStartRealtime;
    public long mTimePeriodStartUptime;
    public static final int[] ALL_MEM_ADJ = {0, 1, 2, 3};
    public static final int[] ALL_SCREEN_ADJ = {0, 4};
    public static final int[] NON_CACHED_PROC_STATES = {0, 1, 2, 3, 4, 5, 6, 7, 8};
    public static final int[] BACKGROUND_PROC_STATES = {2, 3, 4, 5, 6, 7, 8};
    public static final int[] ALL_PROC_STATES = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
    private static final Pattern sPageTypeRegex = Pattern.compile("^Node\\s+(\\d+),.*. type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$");
    public static final Parcelable.Creator<ProcessStats> CREATOR = new Parcelable.Creator<ProcessStats>() { // from class: com.android.internal.app.procstats.ProcessStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessStats createFromParcel(Parcel parcel) {
            return new ProcessStats(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessStats[] newArray(int i2) {
            return new ProcessStats[i2];
        }
    };
    static final int[] BAD_TABLE = new int[0];

    public static final class PackageState {
        public final String mPackageName;
        public final ArrayMap<String, ProcessState> mProcesses = new ArrayMap<>();
        public final ArrayMap<String, ServiceState> mServices = new ArrayMap<>();
        public final int mUid;

        public PackageState(String str, int i2) {
            this.mUid = i2;
            this.mPackageName = str;
        }
    }

    public static final class ProcessDataCollection {
        public long avgPss;
        public long avgUss;
        public long maxPss;
        public long maxUss;
        final int[] memStates;
        public long minPss;
        public long minUss;
        public long numPss;
        final int[] procStates;
        final int[] screenStates;
        public long totalTime;

        public ProcessDataCollection(int[] iArr, int[] iArr2, int[] iArr3) {
            this.screenStates = iArr;
            this.memStates = iArr2;
            this.procStates = iArr3;
        }

        public void print(PrintWriter printWriter, long j2, boolean z2) {
            if (this.totalTime > j2) {
                printWriter.print(PhoneConstants.APN_TYPE_ALL);
            }
            DumpUtils.printPercent(printWriter, this.totalTime / j2);
            if (this.numPss > 0) {
                printWriter.print(" (");
                DebugUtils.printSizeValue(printWriter, this.minPss * 1024);
                printWriter.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                DebugUtils.printSizeValue(printWriter, this.avgPss * 1024);
                printWriter.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                DebugUtils.printSizeValue(printWriter, this.maxPss * 1024);
                printWriter.print("/");
                DebugUtils.printSizeValue(printWriter, this.minUss * 1024);
                printWriter.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                DebugUtils.printSizeValue(printWriter, this.avgUss * 1024);
                printWriter.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                DebugUtils.printSizeValue(printWriter, this.maxUss * 1024);
                if (z2) {
                    printWriter.print(" over ");
                    printWriter.print(this.numPss);
                }
                printWriter.print(")");
            }
        }
    }

    public static final class ProcessStateHolder {
        public final int appVersion;
        public ProcessState state;

        public ProcessStateHolder(int i2) {
            this.appVersion = i2;
        }
    }

    public static class TotalMemoryUseCollection {
        public boolean hasSwappedOutPss;
        final int[] memStates;
        final int[] screenStates;
        public double sysMemCachedWeight;
        public double sysMemFreeWeight;
        public double sysMemKernelWeight;
        public double sysMemNativeWeight;
        public int sysMemSamples;
        public double sysMemZRamWeight;
        public long totalTime;
        public long[] processStatePss = new long[14];
        public double[] processStateWeight = new double[14];
        public long[] processStateTime = new long[14];
        public int[] processStateSamples = new int[14];
        public long[] sysMemUsage = new long[16];

        public TotalMemoryUseCollection(int[] iArr, int[] iArr2) {
            this.screenStates = iArr;
            this.memStates = iArr2;
        }
    }

    public ProcessStats(boolean z2) throws Throwable {
        this.mPackages = new ProcessMap<>();
        this.mProcesses = new ProcessMap<>();
        this.mMemFactorDurations = new long[8];
        this.mMemFactor = -1;
        SparseMappingTable sparseMappingTable = new SparseMappingTable();
        this.mTableData = sparseMappingTable;
        this.mSysMemUsageArgs = new long[16];
        this.mSysMemUsage = new SysMemUsageTable(sparseMappingTable);
        this.mPageTypeZones = new ArrayList<>();
        this.mPageTypeLabels = new ArrayList<>();
        this.mPageTypeSizes = new ArrayList<>();
        this.mRunning = z2;
        reset();
        if (z2) {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(Process.myPid(), memoryInfo);
            this.mHasSwappedOutPss = memoryInfo.hasSwappedOutPss();
        }
    }

    private void buildTimePeriodStartClockStr() {
        this.mTimePeriodStartClockStr = DateFormat.format("yyyy-MM-dd-HH-mm-ss", this.mTimePeriodStartClock).toString();
    }

    private void dumpFragmentationLocked(PrintWriter printWriter) {
        printWriter.println();
        printWriter.println("Available pages by page size:");
        int size = this.mPageTypeLabels.size();
        for (int i2 = 0; i2 < size; i2++) {
            printWriter.format("Zone %3d  %14s ", this.mPageTypeZones.get(i2), this.mPageTypeLabels.get(i2));
            int[] iArr = this.mPageTypeSizes.get(i2);
            int length = iArr == null ? 0 : iArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                printWriter.format("%6d", Integer.valueOf(iArr[i3]));
            }
            printWriter.println();
        }
    }

    private boolean readCheckedInt(Parcel parcel, int i2, String str) {
        int i3 = parcel.readInt();
        if (i3 == i2) {
            return true;
        }
        this.mReadError = "bad " + str + ": " + i3;
        return false;
    }

    private String readCommonString(Parcel parcel, int i2) {
        if (i2 <= 9) {
            return parcel.readString();
        }
        int i3 = parcel.readInt();
        if (i3 >= 0) {
            return this.mIndexToCommonString.get(i3);
        }
        int i4 = ~i3;
        String string = parcel.readString();
        while (this.mIndexToCommonString.size() <= i4) {
            this.mIndexToCommonString.add(null);
        }
        this.mIndexToCommonString.set(i4, string);
        return string;
    }

    private void readCompactedLongArray(Parcel parcel, int i2, long[] jArr, int i3) {
        if (i2 <= 10) {
            parcel.readLongArray(jArr);
            return;
        }
        int length = jArr.length;
        if (i3 > length) {
            throw new RuntimeException(m.e("bad array lengths: got ", i3, " array is ", length));
        }
        int i4 = 0;
        while (i4 < i3) {
            int i5 = parcel.readInt();
            if (i5 >= 0) {
                jArr[i4] = i5;
            } else {
                jArr[i4] = ((long) parcel.readInt()) | (((long) (~i5)) << 32);
            }
            i4++;
        }
        while (i4 < length) {
            jArr[i4] = 0;
            i4++;
        }
    }

    public static byte[] readFully(InputStream inputStream, int[] iArr) throws IOException {
        int iAvailable = inputStream.available();
        byte[] bArr = new byte[iAvailable > 0 ? iAvailable + 1 : 16384];
        int i2 = 0;
        while (true) {
            int i3 = inputStream.read(bArr, i2, bArr.length - i2);
            if (i3 < 0) {
                iArr[0] = i2;
                return bArr;
            }
            i2 += i3;
            if (i2 >= bArr.length) {
                byte[] bArr2 = new byte[i2 + 16384];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                bArr = bArr2;
            }
        }
    }

    private void resetCommon() throws Throwable {
        this.mTimePeriodStartClock = System.currentTimeMillis();
        buildTimePeriodStartClockStr();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.mTimePeriodEndRealtime = jElapsedRealtime;
        this.mTimePeriodStartRealtime = jElapsedRealtime;
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.mTimePeriodEndUptime = jUptimeMillis;
        this.mTimePeriodStartUptime = jUptimeMillis;
        this.mTableData.reset();
        Arrays.fill(this.mMemFactorDurations, 0L);
        this.mSysMemUsage.resetTable();
        this.mStartTime = 0L;
        this.mReadError = null;
        this.mFlags = 0;
        evaluateSystemProperties(true);
        updateFragmentation();
    }

    private static int[] splitAndParseNumbers(String str) {
        int length = str.length();
        int i2 = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt < '0' || cCharAt > '9') {
                z2 = false;
            } else if (!z2) {
                i2++;
                z2 = true;
            }
        }
        int[] iArr = new int[i2];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt2 = str.charAt(i6);
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                if (z2) {
                    iArr[i5] = i4;
                    i5++;
                    z2 = false;
                }
            } else if (z2) {
                i4 = (i4 * 10) + (cCharAt2 - '0');
            } else {
                i4 = cCharAt2 - '0';
                z2 = true;
            }
        }
        if (i2 > 0) {
            iArr[i2 - 1] = i4;
        }
        return iArr;
    }

    private void writeCommonString(Parcel parcel, String str) {
        Integer num = this.mCommonStringToIndex.get(str);
        if (num != null) {
            parcel.writeInt(num.intValue());
            return;
        }
        Integer numValueOf = Integer.valueOf(this.mCommonStringToIndex.size());
        this.mCommonStringToIndex.put(str, numValueOf);
        parcel.writeInt(~numValueOf.intValue());
        parcel.writeString(str);
    }

    private void writeCompactedLongArray(Parcel parcel, long[] jArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = jArr[i3];
            if (j2 < 0) {
                Slog.w(TAG, "Time val negative: " + j2);
                j2 = 0L;
            }
            if (j2 <= 2147483647L) {
                parcel.writeInt((int) j2);
            } else {
                parcel.writeInt(~((int) (2147483647L & (j2 >> 32))));
                parcel.writeInt((int) (j2 & 4294967295L));
            }
        }
    }

    public void add(ProcessStats processStats) {
        ProcessStats processStats2 = processStats;
        ArrayMap<String, SparseArray<SparseArray<PackageState>>> map = processStats2.mPackages.getMap();
        int i2 = 0;
        while (i2 < map.size()) {
            String strKeyAt = map.keyAt(i2);
            SparseArray<SparseArray<PackageState>> sparseArrayValueAt = map.valueAt(i2);
            for (int i3 = 0; i3 < sparseArrayValueAt.size(); i3++) {
                int iKeyAt = sparseArrayValueAt.keyAt(i3);
                SparseArray<PackageState> sparseArrayValueAt2 = sparseArrayValueAt.valueAt(i3);
                int i4 = 0;
                while (i4 < sparseArrayValueAt2.size()) {
                    int iKeyAt2 = sparseArrayValueAt2.keyAt(i4);
                    PackageState packageStateValueAt = sparseArrayValueAt2.valueAt(i4);
                    int size = packageStateValueAt.mProcesses.size();
                    int size2 = packageStateValueAt.mServices.size();
                    int i5 = 0;
                    while (i5 < size) {
                        ProcessState processStateValueAt = packageStateValueAt.mProcesses.valueAt(i5);
                        int i6 = size;
                        if (processStateValueAt.getCommonProcess() != processStateValueAt) {
                            ProcessState processStateLocked = getProcessStateLocked(strKeyAt, iKeyAt, iKeyAt2, processStateValueAt.getName());
                            if (processStateLocked.getCommonProcess() == processStateLocked) {
                                processStateLocked.setMultiPackage(true);
                                long jUptimeMillis = SystemClock.uptimeMillis();
                                PackageState packageStateLocked = getPackageStateLocked(strKeyAt, iKeyAt, iKeyAt2);
                                processStateLocked = processStateLocked.clone(jUptimeMillis);
                                packageStateLocked.mProcesses.put(processStateLocked.getName(), processStateLocked);
                            }
                            processStateLocked.add(processStateValueAt);
                        } else {
                            map = map;
                        }
                        i5++;
                        size = i6;
                        i4 = i4;
                        map = map;
                    }
                    int i7 = i4;
                    ArrayMap<String, SparseArray<SparseArray<PackageState>>> arrayMap = map;
                    int i8 = 0;
                    while (i8 < size2) {
                        ServiceState serviceStateValueAt = packageStateValueAt.mServices.valueAt(i8);
                        getServiceStateLocked(strKeyAt, iKeyAt, iKeyAt2, serviceStateValueAt.getProcessName(), serviceStateValueAt.getName()).add(serviceStateValueAt);
                        i8++;
                        size2 = size2;
                        packageStateValueAt = packageStateValueAt;
                        iKeyAt2 = iKeyAt2;
                    }
                    i4 = i7 + 1;
                    map = arrayMap;
                }
            }
            i2++;
            processStats2 = processStats;
        }
        ArrayMap<String, SparseArray<ProcessState>> map2 = processStats2.mProcesses.getMap();
        for (int i9 = 0; i9 < map2.size(); i9++) {
            int i10 = 0;
            for (SparseArray<ProcessState> sparseArrayValueAt3 = map2.valueAt(i9); i10 < sparseArrayValueAt3.size(); sparseArrayValueAt3 = sparseArrayValueAt3) {
                int iKeyAt3 = sparseArrayValueAt3.keyAt(i10);
                ProcessState processStateValueAt2 = sparseArrayValueAt3.valueAt(i10);
                String name = processStateValueAt2.getName();
                String str = processStateValueAt2.getPackage();
                int version = processStateValueAt2.getVersion();
                ProcessState processState = this.mProcesses.get(name, iKeyAt3);
                if (processState == null) {
                    ProcessState processState2 = new ProcessState(this, str, iKeyAt3, version, name);
                    this.mProcesses.put(name, iKeyAt3, processState2);
                    PackageState packageStateLocked2 = getPackageStateLocked(str, iKeyAt3, version);
                    if (!packageStateLocked2.mProcesses.containsKey(name)) {
                        packageStateLocked2.mProcesses.put(name, processState2);
                    }
                    processState = processState2;
                }
                processState.add(processStateValueAt2);
                i10++;
                map2 = map2;
            }
        }
        for (int i11 = 0; i11 < 8; i11++) {
            long[] jArr = this.mMemFactorDurations;
            jArr[i11] = jArr[i11] + processStats2.mMemFactorDurations[i11];
        }
        this.mSysMemUsage.mergeStats(processStats2.mSysMemUsage);
        long j2 = processStats2.mTimePeriodStartClock;
        if (j2 < this.mTimePeriodStartClock) {
            this.mTimePeriodStartClock = j2;
            this.mTimePeriodStartClockStr = processStats2.mTimePeriodStartClockStr;
        }
        this.mTimePeriodEndRealtime = (processStats2.mTimePeriodEndRealtime - processStats2.mTimePeriodStartRealtime) + this.mTimePeriodEndRealtime;
        this.mTimePeriodEndUptime = (processStats2.mTimePeriodEndUptime - processStats2.mTimePeriodStartUptime) + this.mTimePeriodEndUptime;
        this.mHasSwappedOutPss |= processStats2.mHasSwappedOutPss;
    }

    public void addSysMemUsage(long j2, long j3, long j4, long j5, long j6) {
        int i2 = this.mMemFactor;
        if (i2 != -1) {
            int i3 = i2 * 14;
            this.mSysMemUsageArgs[0] = 1;
            int i4 = 0;
            while (i4 < 3) {
                long[] jArr = this.mSysMemUsageArgs;
                int i5 = i4 + 1;
                jArr[i5] = j2;
                jArr[i4 + 4] = j3;
                jArr[i4 + 7] = j4;
                jArr[i4 + 10] = j5;
                jArr[i4 + 13] = j6;
                i4 = i5;
            }
            this.mSysMemUsage.mergeStats(i3, this.mSysMemUsageArgs, 0);
        }
    }

    public ArrayList<ProcessState> collectProcessesLocked(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, long j2, String str, boolean z2) {
        ArraySet arraySet = new ArraySet();
        ArrayMap<String, SparseArray<SparseArray<PackageState>>> map = this.mPackages.getMap();
        for (int i2 = 0; i2 < map.size(); i2++) {
            String strKeyAt = map.keyAt(i2);
            SparseArray<SparseArray<PackageState>> sparseArrayValueAt = map.valueAt(i2);
            for (int i3 = 0; i3 < sparseArrayValueAt.size(); i3++) {
                SparseArray<PackageState> sparseArrayValueAt2 = sparseArrayValueAt.valueAt(i3);
                int size = sparseArrayValueAt2.size();
                for (int i4 = 0; i4 < size; i4++) {
                    PackageState packageStateValueAt = sparseArrayValueAt2.valueAt(i4);
                    int size2 = packageStateValueAt.mProcesses.size();
                    boolean z3 = str == null || str.equals(strKeyAt);
                    for (int i5 = 0; i5 < size2; i5++) {
                        ProcessState processStateValueAt = packageStateValueAt.mProcesses.valueAt(i5);
                        if ((z3 || str.equals(processStateValueAt.getName())) && (!z2 || processStateValueAt.isInUse())) {
                            arraySet.add(processStateValueAt.getCommonProcess());
                        }
                    }
                }
            }
        }
        ArrayList<ProcessState> arrayList = new ArrayList<>(arraySet.size());
        for (int i6 = 0; i6 < arraySet.size(); i6++) {
            ProcessState processState = (ProcessState) arraySet.valueAt(i6);
            if (processState.computeProcessTimeLocked(iArr, iArr2, iArr3, j2) > 0) {
                arrayList.add(processState);
                if (iArr3 != iArr4) {
                    processState.computeProcessTimeLocked(iArr, iArr2, iArr4, j2);
                }
            }
        }
        Collections.sort(arrayList, ProcessState.COMPARATOR);
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x008e  */
    public void computeTotalMemoryUse(TotalMemoryUseCollection totalMemoryUseCollection, long j2) {
        long[] arrayForKey;
        int indexFromKey;
        totalMemoryUseCollection.totalTime = 0L;
        int i2 = 0;
        for (int i3 = 0; i3 < 14; i3++) {
            totalMemoryUseCollection.processStateWeight[i3] = 0.0d;
            totalMemoryUseCollection.processStatePss[i3] = 0;
            totalMemoryUseCollection.processStateTime[i3] = 0;
            totalMemoryUseCollection.processStateSamples[i3] = 0;
        }
        for (int i4 = 0; i4 < 16; i4++) {
            totalMemoryUseCollection.sysMemUsage[i4] = 0;
        }
        totalMemoryUseCollection.sysMemCachedWeight = 0.0d;
        totalMemoryUseCollection.sysMemFreeWeight = 0.0d;
        totalMemoryUseCollection.sysMemZRamWeight = 0.0d;
        totalMemoryUseCollection.sysMemKernelWeight = 0.0d;
        totalMemoryUseCollection.sysMemNativeWeight = 0.0d;
        totalMemoryUseCollection.sysMemSamples = 0;
        long[] totalMemUsage = this.mSysMemUsage.getTotalMemUsage();
        for (int i5 = 0; i5 < totalMemoryUseCollection.screenStates.length; i5++) {
            int i6 = i2;
            while (true) {
                int[] iArr = totalMemoryUseCollection.memStates;
                if (i6 < iArr.length) {
                    int i7 = totalMemoryUseCollection.screenStates[i5] + iArr[i6];
                    int i8 = i7 * 14;
                    long j3 = this.mMemFactorDurations[i7];
                    if (this.mMemFactor == i7) {
                        j3 += j2 - this.mStartTime;
                    }
                    totalMemoryUseCollection.totalTime += j3;
                    int key = this.mSysMemUsage.getKey((byte) i8);
                    if (key != -1) {
                        arrayForKey = this.mSysMemUsage.getArrayForKey(key);
                        indexFromKey = SparseMappingTable.getIndexFromKey(key);
                        if (arrayForKey[indexFromKey + 0] >= 3) {
                            SysMemUsageTable.mergeSysMemUsage(totalMemoryUseCollection.sysMemUsage, i2, totalMemUsage, i2);
                        } else {
                            arrayForKey = totalMemUsage;
                            indexFromKey = i2;
                        }
                    } else {
                        arrayForKey = totalMemUsage;
                        indexFromKey = i2;
                    }
                    double d2 = j3;
                    totalMemoryUseCollection.sysMemCachedWeight = (arrayForKey[indexFromKey + 2] * d2) + totalMemoryUseCollection.sysMemCachedWeight;
                    totalMemoryUseCollection.sysMemFreeWeight = (arrayForKey[indexFromKey + 5] * d2) + totalMemoryUseCollection.sysMemFreeWeight;
                    totalMemoryUseCollection.sysMemZRamWeight = (arrayForKey[indexFromKey + 8] * d2) + totalMemoryUseCollection.sysMemZRamWeight;
                    totalMemoryUseCollection.sysMemKernelWeight = (arrayForKey[indexFromKey + 11] * d2) + totalMemoryUseCollection.sysMemKernelWeight;
                    totalMemoryUseCollection.sysMemNativeWeight = (arrayForKey[indexFromKey + 14] * d2) + totalMemoryUseCollection.sysMemNativeWeight;
                    totalMemoryUseCollection.sysMemSamples = (int) (((long) totalMemoryUseCollection.sysMemSamples) + arrayForKey[indexFromKey + 0]);
                    i6++;
                    i2 = 0;
                }
            }
        }
        int i9 = i2;
        totalMemoryUseCollection.hasSwappedOutPss = this.mHasSwappedOutPss;
        ArrayMap<String, SparseArray<ProcessState>> map = this.mProcesses.getMap();
        for (int i10 = i9; i10 < map.size(); i10++) {
            SparseArray<ProcessState> sparseArrayValueAt = map.valueAt(i10);
            for (int i11 = i9; i11 < sparseArrayValueAt.size(); i11++) {
                sparseArrayValueAt.valueAt(i11).aggregatePss(totalMemoryUseCollection, j2);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dumpCheckinLocked(PrintWriter printWriter, String str) {
        boolean z2;
        long jUptimeMillis = SystemClock.uptimeMillis();
        ArrayMap<String, SparseArray<SparseArray<PackageState>>> map = this.mPackages.getMap();
        printWriter.println("vers,5");
        printWriter.print("period,");
        printWriter.print(this.mTimePeriodStartClockStr);
        String str2 = ",";
        printWriter.print(",");
        printWriter.print(this.mTimePeriodStartRealtime);
        printWriter.print(",");
        printWriter.print(this.mRunning ? SystemClock.elapsedRealtime() : this.mTimePeriodEndRealtime);
        if ((this.mFlags & 2) != 0) {
            printWriter.print(",shutdown");
            z2 = false;
        } else {
            z2 = true;
        }
        if ((this.mFlags & 4) != 0) {
            printWriter.print(",sysprops");
            z2 = false;
        }
        if ((this.mFlags & 1) != 0) {
            printWriter.print(",complete");
            z2 = false;
        }
        if (z2) {
            printWriter.print(",partial");
        }
        if (this.mHasSwappedOutPss) {
            printWriter.print(",swapped-out-pss");
        }
        printWriter.println();
        printWriter.print("config,");
        printWriter.println(this.mRuntime);
        int i2 = 0;
        while (i2 < map.size()) {
            String strKeyAt = map.keyAt(i2);
            if (str == 0 || str.equals(strKeyAt)) {
                SparseArray<SparseArray<PackageState>> sparseArrayValueAt = map.valueAt(i2);
                int i3 = 0;
                while (i3 < sparseArrayValueAt.size()) {
                    int iKeyAt = sparseArrayValueAt.keyAt(i3);
                    SparseArray<PackageState> sparseArrayValueAt2 = sparseArrayValueAt.valueAt(i3);
                    int i4 = 0;
                    while (i4 < sparseArrayValueAt2.size()) {
                        int iKeyAt2 = sparseArrayValueAt2.keyAt(i4);
                        PackageState packageStateValueAt = sparseArrayValueAt2.valueAt(i4);
                        int size = packageStateValueAt.mProcesses.size();
                        int size2 = packageStateValueAt.mServices.size();
                        int i5 = 0;
                        while (i5 < size) {
                            packageStateValueAt.mProcesses.valueAt(i5).dumpPackageProcCheckin(printWriter, strKeyAt, iKeyAt, iKeyAt2, packageStateValueAt.mProcesses.keyAt(i5), jUptimeMillis);
                            i5++;
                            packageStateValueAt = packageStateValueAt;
                            strKeyAt = strKeyAt;
                            size = size;
                            i4 = i4;
                            i2 = i2;
                            map = map;
                            sparseArrayValueAt2 = sparseArrayValueAt2;
                            i3 = i3;
                            sparseArrayValueAt = sparseArrayValueAt;
                            str2 = str2;
                        }
                        int i6 = i4;
                        SparseArray<PackageState> sparseArray = sparseArrayValueAt2;
                        int i7 = i3;
                        SparseArray<SparseArray<PackageState>> sparseArray2 = sparseArrayValueAt;
                        int i8 = i2;
                        ArrayMap<String, SparseArray<SparseArray<PackageState>>> arrayMap = map;
                        String str3 = str2;
                        PackageState packageState = packageStateValueAt;
                        String str4 = strKeyAt;
                        for (int i9 = 0; i9 < size2; i9++) {
                            packageState.mServices.valueAt(i9).dumpTimesCheckin(printWriter, str4, iKeyAt, iKeyAt2, DumpUtils.collapseString(str4, packageState.mServices.keyAt(i9)), jUptimeMillis);
                        }
                        i4 = i6 + 1;
                        strKeyAt = str4;
                        i2 = i8;
                        map = arrayMap;
                        sparseArrayValueAt2 = sparseArray;
                        i3 = i7;
                        sparseArrayValueAt = sparseArray2;
                        str2 = str3;
                    }
                    i3++;
                    str2 = str2;
                }
            }
            i2++;
            map = map;
            str2 = str2;
        }
        String str5 = str2;
        ArrayMap<String, SparseArray<ProcessState>> map2 = this.mProcesses.getMap();
        for (int i10 = 0; i10 < map2.size(); i10++) {
            String strKeyAt2 = map2.keyAt(i10);
            SparseArray<ProcessState> sparseArrayValueAt3 = map2.valueAt(i10);
            for (int i11 = 0; i11 < sparseArrayValueAt3.size(); i11++) {
                sparseArrayValueAt3.valueAt(i11).dumpProcCheckin(printWriter, strKeyAt2, sparseArrayValueAt3.keyAt(i11), jUptimeMillis);
            }
        }
        printWriter.print("total");
        DumpUtils.dumpAdjTimesCheckin(printWriter, ",", this.mMemFactorDurations, this.mMemFactor, this.mStartTime, jUptimeMillis);
        printWriter.println();
        int keyCount = this.mSysMemUsage.getKeyCount();
        if (keyCount > 0) {
            printWriter.print("sysmemusage");
            int i12 = 0;
            while (i12 < keyCount) {
                int keyAt = this.mSysMemUsage.getKeyAt(i12);
                byte idFromKey = SparseMappingTable.getIdFromKey(keyAt);
                String str6 = str5;
                printWriter.print(str6);
                DumpUtils.printProcStateTag(printWriter, idFromKey);
                for (int i13 = 0; i13 < 16; i13++) {
                    if (i13 > 1) {
                        printWriter.print(SettingsStringUtil.DELIMITER);
                    }
                    printWriter.print(this.mSysMemUsage.getValue(keyAt, i13));
                }
                i12++;
                str5 = str6;
            }
        }
        String str7 = str5;
        printWriter.println();
        TotalMemoryUseCollection totalMemoryUseCollection = new TotalMemoryUseCollection(ALL_SCREEN_ADJ, ALL_MEM_ADJ);
        computeTotalMemoryUse(totalMemoryUseCollection, jUptimeMillis);
        printWriter.print("weights,");
        printWriter.print(totalMemoryUseCollection.totalTime);
        printWriter.print(str7);
        printWriter.print(totalMemoryUseCollection.sysMemCachedWeight);
        printWriter.print(SettingsStringUtil.DELIMITER);
        printWriter.print(totalMemoryUseCollection.sysMemSamples);
        printWriter.print(str7);
        printWriter.print(totalMemoryUseCollection.sysMemFreeWeight);
        printWriter.print(SettingsStringUtil.DELIMITER);
        printWriter.print(totalMemoryUseCollection.sysMemSamples);
        printWriter.print(str7);
        printWriter.print(totalMemoryUseCollection.sysMemZRamWeight);
        printWriter.print(SettingsStringUtil.DELIMITER);
        printWriter.print(totalMemoryUseCollection.sysMemSamples);
        printWriter.print(str7);
        printWriter.print(totalMemoryUseCollection.sysMemKernelWeight);
        printWriter.print(SettingsStringUtil.DELIMITER);
        printWriter.print(totalMemoryUseCollection.sysMemSamples);
        printWriter.print(str7);
        printWriter.print(totalMemoryUseCollection.sysMemNativeWeight);
        printWriter.print(SettingsStringUtil.DELIMITER);
        printWriter.print(totalMemoryUseCollection.sysMemSamples);
        for (int i14 = 0; i14 < 14; i14++) {
            printWriter.print(str7);
            printWriter.print(totalMemoryUseCollection.processStateWeight[i14]);
            printWriter.print(SettingsStringUtil.DELIMITER);
            printWriter.print(totalMemoryUseCollection.processStateSamples[i14]);
        }
        printWriter.println();
        int size3 = this.mPageTypeLabels.size();
        for (int i15 = 0; i15 < size3; i15++) {
            printWriter.print("availablepages,");
            printWriter.print(this.mPageTypeLabels.get(i15));
            printWriter.print(str7);
            printWriter.print(this.mPageTypeZones.get(i15));
            printWriter.print(str7);
            int[] iArr = this.mPageTypeSizes.get(i15);
            int length = iArr == null ? 0 : iArr.length;
            for (int i16 = 0; i16 < length; i16++) {
                if (i16 != 0) {
                    printWriter.print(str7);
                }
                printWriter.print(iArr[i16]);
            }
            printWriter.println();
        }
    }

    public void dumpFilteredSummaryLocked(PrintWriter printWriter, String str, String str2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, long j2, long j3, String str3, boolean z2) {
        ArrayList<ProcessState> arrayListCollectProcessesLocked = collectProcessesLocked(iArr, iArr2, iArr3, iArr4, j2, str3, z2);
        if (arrayListCollectProcessesLocked.size() > 0) {
            if (str != null) {
                printWriter.println();
                printWriter.println(str);
            }
            DumpUtils.dumpProcessSummaryLocked(printWriter, str2, arrayListCollectProcessesLocked, iArr, iArr2, iArr4, j2, j3);
        }
    }

    public void dumpLocked(PrintWriter printWriter, String str, long j2, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        int i2;
        int i3;
        boolean z6;
        String str2;
        String str3;
        PrintWriter printWriter2;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        int i4;
        String str10;
        String str11;
        PrintWriter printWriter3;
        String str12;
        int i5;
        int i6;
        ArrayMap<String, SparseArray<SparseArray<PackageState>>> arrayMap;
        String str13;
        PrintWriter printWriter4;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        PrintWriter printWriter5;
        int i7;
        boolean z7;
        ProcessStats processStats = this;
        PrintWriter printWriter6 = printWriter;
        String str19 = str;
        long jDumpSingleTime = DumpUtils.dumpSingleTime(null, null, processStats.mMemFactorDurations, processStats.mMemFactor, processStats.mStartTime, j2);
        if (processStats.mSysMemUsage.getKeyCount() > 0) {
            printWriter6.println("System memory usage:");
            processStats.mSysMemUsage.dump(printWriter6, "  ", ALL_SCREEN_ADJ, ALL_MEM_ADJ);
            z5 = true;
        } else {
            z5 = false;
        }
        ArrayMap<String, SparseArray<SparseArray<PackageState>>> map = processStats.mPackages.getMap();
        int i8 = 0;
        boolean z8 = false;
        while (true) {
            int size = map.size();
            String str20 = "        ";
            String str21 = " entries)";
            String str22 = " / ";
            String str23 = "  * ";
            String str24 = ")";
            String str25 = "      (Not active: ";
            String str26 = SettingsStringUtil.DELIMITER;
            if (i8 >= size) {
                break;
            }
            String strKeyAt = map.keyAt(i8);
            SparseArray<SparseArray<PackageState>> sparseArrayValueAt = map.valueAt(i8);
            boolean z9 = z5;
            ArrayMap<String, SparseArray<SparseArray<PackageState>>> arrayMap2 = map;
            int i9 = 0;
            while (i9 < sparseArrayValueAt.size()) {
                int iKeyAt = sparseArrayValueAt.keyAt(i9);
                SparseArray<SparseArray<PackageState>> sparseArray = sparseArrayValueAt;
                SparseArray<PackageState> sparseArrayValueAt2 = sparseArrayValueAt.valueAt(i9);
                int i10 = i8;
                int i11 = i9;
                int i12 = 0;
                while (i12 < sparseArrayValueAt2.size()) {
                    int iKeyAt2 = sparseArrayValueAt2.keyAt(i12);
                    SparseArray<PackageState> sparseArray2 = sparseArrayValueAt2;
                    PackageState packageStateValueAt = sparseArrayValueAt2.valueAt(i12);
                    int i13 = i12;
                    int size2 = packageStateValueAt.mProcesses.size();
                    String str27 = str25;
                    int size3 = packageStateValueAt.mServices.size();
                    boolean z10 = str19 == null || str19.equals(strKeyAt);
                    String str28 = str24;
                    if (z10) {
                        str5 = str21;
                    } else {
                        int i14 = 0;
                        while (true) {
                            str5 = str21;
                            if (i14 >= size2) {
                                z7 = false;
                                break;
                            } else if (str19.equals(packageStateValueAt.mProcesses.valueAt(i14).getName())) {
                                z7 = true;
                                break;
                            } else {
                                i14++;
                                str21 = str5;
                            }
                        }
                        if (!z7) {
                            str14 = str19;
                            printWriter4 = printWriter6;
                            strKeyAt = strKeyAt;
                            str18 = str26;
                            str6 = str23;
                            str22 = str22;
                            str13 = str20;
                            str15 = str27;
                            str16 = str28;
                            str17 = str5;
                            iKeyAt = iKeyAt;
                            i5 = i13;
                            i6 = i11;
                            arrayMap = arrayMap2;
                        }
                        str25 = str15;
                        str26 = str18;
                        str21 = str17;
                        str24 = str16;
                        str19 = str14;
                        arrayMap2 = arrayMap;
                        i11 = i6;
                        sparseArrayValueAt2 = sparseArray2;
                        strKeyAt = strKeyAt;
                        str22 = str22;
                        str23 = str6;
                        str20 = str13;
                        z3 = z3;
                        i12 = i5 + 1;
                        printWriter6 = printWriter4;
                        iKeyAt = iKeyAt;
                    }
                    if (size2 > 0 || size3 > 0) {
                        if (!z8) {
                            if (z9) {
                                printWriter.println();
                            }
                            printWriter6.println("Per-Package Stats:");
                            z8 = true;
                            z9 = true;
                        }
                        printWriter6.print(str23);
                        printWriter6.print(strKeyAt);
                        printWriter6.print(str22);
                        UserHandle.formatUid(printWriter6, iKeyAt);
                        printWriter6.print(" / v");
                        printWriter6.print(iKeyAt2);
                        printWriter6.println(str26);
                    }
                    boolean z11 = z8;
                    boolean z12 = z9;
                    if (!z2 || z3) {
                        str6 = str23;
                        str7 = str20;
                        str8 = str27;
                        String str29 = str28;
                        str9 = str26;
                        i4 = size3;
                        String str30 = str5;
                        int i15 = 0;
                        while (i15 < size2) {
                            ProcessState processStateValueAt = packageStateValueAt.mProcesses.valueAt(i15);
                            if (!z10 && !str19.equals(processStateValueAt.getName())) {
                                printWriter3 = printWriter6;
                                str12 = str7;
                            } else if (!z4 || processStateValueAt.isInUse()) {
                                printWriter6.print("      Process ");
                                printWriter6.print(packageStateValueAt.mProcesses.keyAt(i15));
                                if (processStateValueAt.getCommonProcess().isMultiPackage()) {
                                    printWriter6.print(" (multi, ");
                                } else {
                                    printWriter6.print(" (unique, ");
                                }
                                printWriter6.print(processStateValueAt.getDurationsBucketCount());
                                printWriter6.print(str30);
                                printWriter6.println(str9);
                                int[] iArr = ALL_SCREEN_ADJ;
                                int[] iArr2 = ALL_MEM_ADJ;
                                int[] iArr3 = ALL_PROC_STATES;
                                processStateValueAt.dumpProcessState(printWriter, "        ", iArr, iArr2, iArr3, j2);
                                printWriter3 = printWriter6;
                                processStateValueAt.dumpPss(printWriter, "        ", iArr, iArr2, iArr3);
                                str12 = str7;
                                processStateValueAt.dumpInternalLocked(printWriter3, str12, z3);
                            } else {
                                printWriter6.print(str8);
                                printWriter6.print(packageStateValueAt.mProcesses.keyAt(i15));
                                printWriter6.println(str29);
                                printWriter3 = printWriter6;
                                str12 = str7;
                            }
                            str7 = str12;
                            printWriter6 = printWriter3;
                            size2 = size2;
                            str19 = str19;
                            str8 = str8;
                            str29 = str29;
                            arrayMap2 = arrayMap2;
                            i11 = i11;
                            i13 = i13;
                            i15++;
                            i4 = i4;
                            str30 = str30;
                        }
                        str10 = str30;
                        str11 = str29;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (int i16 = 0; i16 < size2; i16++) {
                            ProcessState processStateValueAt2 = packageStateValueAt.mProcesses.valueAt(i16);
                            if ((z10 || str19.equals(processStateValueAt2.getName())) && (!z4 || processStateValueAt2.isInUse())) {
                                arrayList.add(processStateValueAt2);
                            }
                        }
                        str8 = str27;
                        i4 = size3;
                        str6 = str23;
                        str7 = str20;
                        DumpUtils.dumpProcessSummaryLocked(printWriter, "      ", arrayList, ALL_SCREEN_ADJ, ALL_MEM_ADJ, NON_CACHED_PROC_STATES, j2, jDumpSingleTime);
                        str10 = str5;
                        str11 = str28;
                        str9 = str26;
                    }
                    String str31 = str8;
                    String str32 = str19;
                    PrintWriter printWriter7 = printWriter6;
                    int i17 = i4;
                    String str33 = str7;
                    i5 = i13;
                    i6 = i11;
                    arrayMap = arrayMap2;
                    int i18 = 0;
                    while (i18 < i17) {
                        ServiceState serviceStateValueAt = packageStateValueAt.mServices.valueAt(i18);
                        if (!z10 && !str32.equals(serviceStateValueAt.getProcessName())) {
                            printWriter5 = printWriter7;
                            i7 = i17;
                        } else if (!z4 || serviceStateValueAt.isInUse()) {
                            if (z3) {
                                printWriter7.print("      Service ");
                            } else {
                                printWriter7.print("      * ");
                            }
                            printWriter7.print(packageStateValueAt.mServices.keyAt(i18));
                            printWriter7.println(str9);
                            printWriter7.print("        Process: ");
                            printWriter7.println(serviceStateValueAt.getProcessName());
                            printWriter5 = printWriter7;
                            i7 = i17;
                            serviceStateValueAt.dumpStats(printWriter, "        ", "          ", "    ", j2, jDumpSingleTime, z2, z3);
                        } else {
                            printWriter7.print(str31);
                            printWriter7.print(packageStateValueAt.mServices.keyAt(i18));
                            printWriter7.println(str11);
                            printWriter5 = printWriter7;
                            i7 = i17;
                        }
                        i18++;
                        z3 = z3;
                        printWriter7 = printWriter5;
                        str31 = str31;
                        str9 = str9;
                        str10 = str10;
                        str11 = str11;
                        str32 = str32;
                        packageStateValueAt = packageStateValueAt;
                        str33 = str33;
                        i17 = i7;
                    }
                    str13 = str33;
                    printWriter4 = printWriter7;
                    str14 = str32;
                    str15 = str31;
                    str16 = str11;
                    str17 = str10;
                    str18 = str9;
                    z8 = z11;
                    z9 = z12;
                    str25 = str15;
                    str26 = str18;
                    str21 = str17;
                    str24 = str16;
                    str19 = str14;
                    arrayMap2 = arrayMap;
                    i11 = i6;
                    sparseArrayValueAt2 = sparseArray2;
                    strKeyAt = strKeyAt;
                    str22 = str22;
                    str23 = str6;
                    str20 = str13;
                    z3 = z3;
                    i12 = i5 + 1;
                    printWriter6 = printWriter4;
                    iKeyAt = iKeyAt;
                }
                str19 = str19;
                sparseArrayValueAt = sparseArray;
                z3 = z3;
                i9 = i11 + 1;
                printWriter6 = printWriter6;
                i8 = i10;
            }
            map = arrayMap2;
            processStats = this;
            i8++;
            z5 = z9;
        }
        PrintWriter printWriter8 = printWriter6;
        String str34 = SettingsStringUtil.DELIMITER;
        String str35 = "      (Not active: ";
        String str36 = ")";
        String str37 = "  * ";
        String str38 = " / ";
        String str39 = "        ";
        ProcessStats processStats2 = processStats;
        String str40 = str19;
        String str41 = " entries)";
        ArrayMap<String, SparseArray<ProcessState>> map2 = processStats2.mProcesses.getMap();
        int i19 = 0;
        int i20 = 0;
        boolean z13 = false;
        int i21 = 0;
        while (i21 < map2.size()) {
            String strKeyAt2 = map2.keyAt(i21);
            SparseArray<ProcessState> sparseArrayValueAt3 = map2.valueAt(i21);
            ArrayMap<String, SparseArray<ProcessState>> arrayMap3 = map2;
            int i22 = 0;
            while (i22 < sparseArrayValueAt3.size()) {
                int iKeyAt3 = sparseArrayValueAt3.keyAt(i22);
                int i23 = i20 + 1;
                ProcessState processStateValueAt3 = sparseArrayValueAt3.valueAt(i22);
                if (!processStateValueAt3.hasAnyData() && processStateValueAt3.isMultiPackage()) {
                    if (str40 == null || str40.equals(strKeyAt2)) {
                        i2 = i22;
                    } else {
                        i2 = i22;
                        if (!str40.equals(processStateValueAt3.getPackage())) {
                        }
                        str39 = str4;
                        str37 = str3;
                        str35 = str35;
                        str34 = str34;
                        i20 = i23;
                        i19 = i3;
                        str41 = str41;
                        str36 = str36;
                        str38 = str2;
                        strKeyAt2 = strKeyAt2;
                        i21 = i21;
                        i22 = i2 + 1;
                        printWriter8 = printWriter2;
                        sparseArrayValueAt3 = sparseArrayValueAt3;
                    }
                    i3 = i19 + 1;
                    if (z5) {
                        printWriter.println();
                    }
                    if (z13) {
                        z6 = z13;
                    } else {
                        printWriter8.println("Multi-Package Common Processes:");
                        z6 = true;
                    }
                    if (!z4 || processStateValueAt3.isInUse()) {
                        String str42 = str37;
                        printWriter8.print(str42);
                        printWriter8.print(strKeyAt2);
                        String str43 = str38;
                        printWriter8.print(str43);
                        UserHandle.formatUid(printWriter8, iKeyAt3);
                        printWriter8.print(" (");
                        printWriter8.print(processStateValueAt3.getDurationsBucketCount());
                        printWriter8.print(str41);
                        printWriter8.println(str34);
                        int[] iArr4 = ALL_SCREEN_ADJ;
                        int[] iArr5 = ALL_MEM_ADJ;
                        int[] iArr6 = ALL_PROC_STATES;
                        str2 = str43;
                        processStateValueAt3.dumpProcessState(printWriter, "        ", iArr4, iArr5, iArr6, j2);
                        str3 = str42;
                        printWriter2 = printWriter8;
                        str4 = str39;
                        processStateValueAt3.dumpPss(printWriter, "        ", iArr4, iArr5, iArr6);
                        processStateValueAt3.dumpInternalLocked(printWriter2, str4, z3);
                    } else {
                        printWriter8.print(str35);
                        printWriter8.print(strKeyAt2);
                        printWriter8.println(str36);
                        str2 = str38;
                        str3 = str37;
                        str4 = str39;
                        printWriter2 = printWriter8;
                    }
                    z5 = true;
                    z13 = z6;
                    str39 = str4;
                    str37 = str3;
                    str35 = str35;
                    str34 = str34;
                    i20 = i23;
                    i19 = i3;
                    str41 = str41;
                    str36 = str36;
                    str38 = str2;
                    strKeyAt2 = strKeyAt2;
                    i21 = i21;
                    i22 = i2 + 1;
                    printWriter8 = printWriter2;
                    sparseArrayValueAt3 = sparseArrayValueAt3;
                } else {
                    i2 = i22;
                }
                str41 = str41;
                str36 = str36;
                i3 = i19;
                sparseArrayValueAt3 = sparseArrayValueAt3;
                strKeyAt2 = strKeyAt2;
                i21 = i21;
                str2 = str38;
                str3 = str37;
                str4 = str39;
                printWriter2 = printWriter8;
                str35 = str35;
                str34 = str34;
                str39 = str4;
                str37 = str3;
                str35 = str35;
                str34 = str34;
                i20 = i23;
                i19 = i3;
                str41 = str41;
                str36 = str36;
                str38 = str2;
                strKeyAt2 = strKeyAt2;
                i21 = i21;
                i22 = i2 + 1;
                printWriter8 = printWriter2;
                sparseArrayValueAt3 = sparseArrayValueAt3;
            }
            printWriter8 = printWriter8;
            map2 = arrayMap3;
            i21++;
            str35 = str35;
        }
        PrintWriter printWriter9 = printWriter8;
        if (z3) {
            printWriter.println();
            printWriter9.print("  Total procs: ");
            printWriter9.print(i19);
            printWriter9.print(" shown of ");
            printWriter9.print(i20);
            printWriter9.println(" total");
        }
        if (z5) {
            printWriter.println();
        }
        if (z2) {
            printWriter9.println("Summary:");
            dumpSummaryLocked(printWriter, str, j2, z4);
        } else {
            processStats2.dumpTotalsLocked(printWriter9, j2);
        }
        if (z3) {
            printWriter.println();
            printWriter9.println("Internal state:");
            printWriter9.print("  mRunning=");
            printWriter9.println(processStats2.mRunning);
        }
        dumpFragmentationLocked(printWriter);
    }

    public void dumpSummaryLocked(PrintWriter printWriter, String str, long j2, boolean z2) {
        dumpFilteredSummaryLocked(printWriter, null, "  ", ALL_SCREEN_ADJ, ALL_MEM_ADJ, ALL_PROC_STATES, NON_CACHED_PROC_STATES, j2, DumpUtils.dumpSingleTime(null, null, this.mMemFactorDurations, this.mMemFactor, this.mStartTime, j2), str, z2);
        printWriter.println();
        dumpTotalsLocked(printWriter, j2);
    }

    public void dumpTotalsLocked(PrintWriter printWriter, long j2) {
        boolean z2;
        printWriter.println("Run time Stats:");
        DumpUtils.dumpSingleTime(printWriter, "  ", this.mMemFactorDurations, this.mMemFactor, this.mStartTime, j2);
        printWriter.println();
        printWriter.println("Memory usage:");
        TotalMemoryUseCollection totalMemoryUseCollection = new TotalMemoryUseCollection(ALL_SCREEN_ADJ, ALL_MEM_ADJ);
        computeTotalMemoryUse(totalMemoryUseCollection, j2);
        boolean z3 = false;
        long jPrintMemoryCategory = printMemoryCategory(printWriter, "  ", "Native ", totalMemoryUseCollection.sysMemNativeWeight, totalMemoryUseCollection.totalTime, printMemoryCategory(printWriter, "  ", "Kernel ", totalMemoryUseCollection.sysMemKernelWeight, totalMemoryUseCollection.totalTime, 0L, totalMemoryUseCollection.sysMemSamples), totalMemoryUseCollection.sysMemSamples);
        for (int i2 = 0; i2 < 14; i2++) {
            if (i2 != 7) {
                jPrintMemoryCategory = printMemoryCategory(printWriter, "  ", DumpUtils.STATE_NAMES[i2], totalMemoryUseCollection.processStateWeight[i2], totalMemoryUseCollection.totalTime, jPrintMemoryCategory, totalMemoryUseCollection.processStateSamples[i2]);
            }
        }
        long jPrintMemoryCategory2 = printMemoryCategory(printWriter, "  ", "Z-Ram  ", totalMemoryUseCollection.sysMemZRamWeight, totalMemoryUseCollection.totalTime, printMemoryCategory(printWriter, "  ", "Free   ", totalMemoryUseCollection.sysMemFreeWeight, totalMemoryUseCollection.totalTime, printMemoryCategory(printWriter, "  ", "Cached ", totalMemoryUseCollection.sysMemCachedWeight, totalMemoryUseCollection.totalTime, jPrintMemoryCategory, totalMemoryUseCollection.sysMemSamples), totalMemoryUseCollection.sysMemSamples), totalMemoryUseCollection.sysMemSamples);
        printWriter.print("  TOTAL  : ");
        DebugUtils.printSizeValue(printWriter, jPrintMemoryCategory2);
        printWriter.println();
        printMemoryCategory(printWriter, "  ", DumpUtils.STATE_NAMES[7], totalMemoryUseCollection.processStateWeight[7], totalMemoryUseCollection.totalTime, jPrintMemoryCategory2, totalMemoryUseCollection.processStateSamples[7]);
        printWriter.println();
        printWriter.print("          Start time: ");
        printWriter.print(DateFormat.format("yyyy-MM-dd HH:mm:ss", this.mTimePeriodStartClock));
        printWriter.println();
        printWriter.print("  Total elapsed time: ");
        TimeUtils.formatDuration((this.mRunning ? SystemClock.elapsedRealtime() : this.mTimePeriodEndRealtime) - this.mTimePeriodStartRealtime, printWriter);
        if ((this.mFlags & 2) != 0) {
            printWriter.print(" (shutdown)");
            z2 = false;
        } else {
            z2 = true;
        }
        if ((this.mFlags & 4) != 0) {
            printWriter.print(" (sysprops)");
            z2 = false;
        }
        if ((1 & this.mFlags) != 0) {
            printWriter.print(" (complete)");
        } else {
            z3 = z2;
        }
        if (z3) {
            printWriter.print(" (partial)");
        }
        if (this.mHasSwappedOutPss) {
            printWriter.print(" (swapped-out-pss)");
        }
        printWriter.print(' ');
        printWriter.print(this.mRuntime);
        printWriter.println();
    }

    public boolean evaluateSystemProperties(boolean z2) {
        String str = SystemProperties.get("persist.sys.dalvik.vm.lib.2", VMRuntime.getRuntime().vmLibrary());
        if (Objects.equals(str, this.mRuntime)) {
            return false;
        }
        if (z2) {
            this.mRuntime = str;
        }
        return true;
    }

    public PackageState getPackageStateLocked(String str, int i2, int i3) {
        SparseArray<PackageState> sparseArray = this.mPackages.get(str, i2);
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            this.mPackages.put(str, i2, sparseArray);
        }
        PackageState packageState = sparseArray.get(i3);
        if (packageState != null) {
            return packageState;
        }
        PackageState packageState2 = new PackageState(str, i2);
        sparseArray.put(i3, packageState2);
        return packageState2;
    }

    public ProcessState getProcessStateLocked(String str, int i2, int i3, String str2) {
        ProcessState processState;
        PackageState packageStateLocked = getPackageStateLocked(str, i2, i3);
        ProcessState processState2 = packageStateLocked.mProcesses.get(str2);
        if (processState2 != null) {
            return processState2;
        }
        ProcessState processState3 = this.mProcesses.get(str2, i2);
        if (processState3 == null) {
            processState3 = new ProcessState(this, str, i2, i3, str2);
            this.mProcesses.put(str2, i2, processState3);
        }
        ProcessState processState4 = processState3;
        if (!processState4.isMultiPackage()) {
            if (!str.equals(processState4.getPackage()) || i3 != processState4.getVersion()) {
                processState4.setMultiPackage(true);
                long jUptimeMillis = SystemClock.uptimeMillis();
                PackageState packageStateLocked2 = getPackageStateLocked(processState4.getPackage(), i2, processState4.getVersion());
                if (packageStateLocked2 != null) {
                    ProcessState processStateClone = processState4.clone(jUptimeMillis);
                    packageStateLocked2.mProcesses.put(processState4.getName(), processStateClone);
                    for (int size = packageStateLocked2.mServices.size() - 1; size >= 0; size--) {
                        ServiceState serviceStateValueAt = packageStateLocked2.mServices.valueAt(size);
                        if (serviceStateValueAt.getProcess() == processState4) {
                            serviceStateValueAt.setProcess(processStateClone);
                        }
                    }
                } else {
                    Slog.w(TAG, "Cloning proc state: no package state " + processState4.getPackage() + "/" + i2 + " for proc " + processState4.getName());
                }
                processState = new ProcessState(processState4, str, i2, i3, str2, jUptimeMillis);
            }
            packageStateLocked.mProcesses.put(str2, processState4);
            return processState4;
        }
        processState = new ProcessState(processState4, str, i2, i3, str2, SystemClock.uptimeMillis());
        processState4 = processState;
        packageStateLocked.mProcesses.put(str2, processState4);
        return processState4;
    }

    public ServiceState getServiceStateLocked(String str, int i2, int i3, String str2, String str3) {
        PackageState packageStateLocked = getPackageStateLocked(str, i2, i3);
        ServiceState serviceState = packageStateLocked.mServices.get(str3);
        if (serviceState != null) {
            return serviceState;
        }
        ServiceState serviceState2 = new ServiceState(this, str, str3, str2, str2 != null ? getProcessStateLocked(str, i2, i3, str2) : null);
        packageStateLocked.mServices.put(str3, serviceState2);
        return serviceState2;
    }

    public long printMemoryCategory(PrintWriter printWriter, String str, String str2, double d2, long j2, long j3, int i2) {
        if (d2 == 0.0d) {
            return j3;
        }
        long j4 = (long) ((d2 * 1024.0d) / j2);
        printWriter.print(str);
        printWriter.print(str2);
        printWriter.print(": ");
        DebugUtils.printSizeValue(printWriter, j4);
        printWriter.print(" (");
        printWriter.print(i2);
        printWriter.print(" samples)");
        printWriter.println();
        return j3 + j4;
    }

    public void read(InputStream inputStream) throws Throwable {
        try {
            int[] iArr = new int[1];
            byte[] fully = readFully(inputStream, iArr);
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.unmarshall(fully, 0, iArr[0]);
            parcelObtain.setDataPosition(0);
            inputStream.close();
            readFromParcel(parcelObtain);
        } catch (IOException e2) {
            this.mReadError = "caught exception: " + e2;
        }
    }

    public void readFromParcel(Parcel parcel) throws Throwable {
        boolean z2 = false;
        boolean z3 = this.mPackages.getMap().size() > 0 || this.mProcesses.getMap().size() > 0;
        if (z3) {
            resetSafely();
        }
        if (readCheckedInt(parcel, MAGIC, "magic number")) {
            int i2 = parcel.readInt();
            if (i2 != 21) {
                this.mReadError = c.d("bad version: ", i2);
                return;
            }
            if (readCheckedInt(parcel, 14, "state count") && readCheckedInt(parcel, 8, "adj count") && readCheckedInt(parcel, 7, "pss count") && readCheckedInt(parcel, 16, "sys mem usage count") && readCheckedInt(parcel, 4096, "longs size")) {
                this.mIndexToCommonString = new ArrayList<>();
                this.mTimePeriodStartClock = parcel.readLong();
                buildTimePeriodStartClockStr();
                this.mTimePeriodStartRealtime = parcel.readLong();
                this.mTimePeriodEndRealtime = parcel.readLong();
                this.mTimePeriodStartUptime = parcel.readLong();
                this.mTimePeriodEndUptime = parcel.readLong();
                this.mRuntime = parcel.readString();
                this.mHasSwappedOutPss = parcel.readInt() != 0;
                this.mFlags = parcel.readInt();
                this.mTableData.readFromParcel(parcel);
                long[] jArr = this.mMemFactorDurations;
                readCompactedLongArray(parcel, i2, jArr, jArr.length);
                if (this.mSysMemUsage.readFromParcel(parcel)) {
                    int i3 = parcel.readInt();
                    if (i3 < 0) {
                        this.mReadError = c.d("bad process count: ", i3);
                        return;
                    }
                    while (i3 > 0) {
                        int i4 = i3 - 1;
                        String commonString = readCommonString(parcel, i2);
                        if (commonString == null) {
                            this.mReadError = "bad process name";
                            return;
                        }
                        int i5 = parcel.readInt();
                        if (i5 < 0) {
                            this.mReadError = c.d("bad uid count: ", i5);
                            return;
                        }
                        while (i5 > 0) {
                            int i6 = i5 - 1;
                            int i7 = parcel.readInt();
                            if (i7 < 0) {
                                this.mReadError = c.d("bad uid: ", i7);
                                return;
                            }
                            String commonString2 = readCommonString(parcel, i2);
                            if (commonString2 == null) {
                                this.mReadError = "bad process package name";
                                return;
                            }
                            int i8 = parcel.readInt();
                            ProcessState processState = z3 ? this.mProcesses.get(commonString, i7) : null;
                            if (processState == null) {
                                ProcessState processState2 = new ProcessState(this, commonString2, i7, i8, commonString);
                                if (!processState2.readFromParcel(parcel, true)) {
                                    return;
                                } else {
                                    processState = processState2;
                                }
                            } else if (!processState.readFromParcel(parcel, z2)) {
                                return;
                            }
                            this.mProcesses.put(commonString, i7, processState);
                            z2 = false;
                            i5 = i6;
                        }
                        i3 = i4;
                    }
                    int i9 = parcel.readInt();
                    if (i9 < 0) {
                        this.mReadError = c.d("bad package count: ", i9);
                        return;
                    }
                    while (i9 > 0) {
                        int i10 = i9 - 1;
                        String commonString3 = readCommonString(parcel, i2);
                        if (commonString3 == null) {
                            this.mReadError = "bad package name";
                            return;
                        }
                        int i11 = parcel.readInt();
                        if (i11 < 0) {
                            this.mReadError = c.d("bad uid count: ", i11);
                            return;
                        }
                        while (i11 > 0) {
                            int i12 = i11 - 1;
                            int i13 = parcel.readInt();
                            if (i13 < 0) {
                                this.mReadError = c.d("bad uid: ", i13);
                                return;
                            }
                            int i14 = parcel.readInt();
                            if (i14 < 0) {
                                this.mReadError = c.d("bad versions count: ", i14);
                                return;
                            }
                            while (i14 > 0) {
                                int i15 = i14 - 1;
                                int i16 = parcel.readInt();
                                PackageState packageState = new PackageState(commonString3, i13);
                                SparseArray<PackageState> sparseArray = this.mPackages.get(commonString3, i13);
                                if (sparseArray == null) {
                                    sparseArray = new SparseArray<>();
                                    this.mPackages.put(commonString3, i13, sparseArray);
                                }
                                sparseArray.put(i16, packageState);
                                int i17 = parcel.readInt();
                                if (i17 < 0) {
                                    this.mReadError = c.d("bad package process count: ", i17);
                                    return;
                                }
                                while (i17 > 0) {
                                    int i18 = i17 - 1;
                                    String commonString4 = readCommonString(parcel, i2);
                                    if (commonString4 == null) {
                                        this.mReadError = "bad package process name";
                                        return;
                                    }
                                    int i19 = parcel.readInt();
                                    ProcessState processState3 = this.mProcesses.get(commonString4, i13);
                                    if (processState3 == null) {
                                        this.mReadError = "no common proc: ".concat(commonString4);
                                        return;
                                    }
                                    if (i19 != 0) {
                                        ProcessState processState4 = z3 ? packageState.mProcesses.get(commonString4) : null;
                                        if (processState4 == null) {
                                            ProcessState processState5 = new ProcessState(processState3, commonString3, i13, i16, commonString4, 0L);
                                            if (!processState5.readFromParcel(parcel, true)) {
                                                return;
                                            } else {
                                                processState4 = processState5;
                                            }
                                        } else if (!processState4.readFromParcel(parcel, false)) {
                                            return;
                                        }
                                        packageState.mProcesses.put(commonString4, processState4);
                                    } else {
                                        i18 = i18;
                                        packageState.mProcesses.put(commonString4, processState3);
                                    }
                                    i17 = i18;
                                }
                                int i20 = parcel.readInt();
                                if (i20 < 0) {
                                    this.mReadError = c.d("bad package service count: ", i20);
                                    return;
                                }
                                while (i20 > 0) {
                                    int i21 = i20 - 1;
                                    String string = parcel.readString();
                                    if (string == null) {
                                        this.mReadError = "bad package service name";
                                        return;
                                    }
                                    String commonString5 = i2 > 9 ? readCommonString(parcel, i2) : null;
                                    ServiceState serviceState = z3 ? packageState.mServices.get(string) : null;
                                    if (serviceState == null) {
                                        serviceState = new ServiceState(this, commonString3, string, commonString5, null);
                                    }
                                    if (!serviceState.readFromParcel(parcel)) {
                                        return;
                                    }
                                    PackageState packageState2 = packageState;
                                    packageState2.mServices.put(string, serviceState);
                                    packageState = packageState2;
                                    i20 = i21;
                                    commonString3 = commonString3;
                                    i13 = i13;
                                }
                                i14 = i15;
                            }
                            i11 = i12;
                        }
                        i9 = i10;
                    }
                    int i22 = parcel.readInt();
                    this.mPageTypeZones.clear();
                    this.mPageTypeZones.ensureCapacity(i22);
                    this.mPageTypeLabels.clear();
                    this.mPageTypeLabels.ensureCapacity(i22);
                    this.mPageTypeSizes.clear();
                    this.mPageTypeSizes.ensureCapacity(i22);
                    for (int i23 = 0; i23 < i22; i23++) {
                        this.mPageTypeZones.add(Integer.valueOf(parcel.readInt()));
                        this.mPageTypeLabels.add(parcel.readString());
                        this.mPageTypeSizes.add(parcel.createIntArray());
                    }
                    this.mIndexToCommonString = null;
                }
            }
        }
    }

    public void reset() throws Throwable {
        resetCommon();
        this.mPackages.getMap().clear();
        this.mProcesses.getMap().clear();
        this.mMemFactor = -1;
        this.mStartTime = 0L;
    }

    public void resetSafely() throws Throwable {
        resetCommon();
        long jUptimeMillis = SystemClock.uptimeMillis();
        ArrayMap<String, SparseArray<ProcessState>> map = this.mProcesses.getMap();
        for (int size = map.size() - 1; size >= 0; size--) {
            SparseArray<ProcessState> sparseArrayValueAt = map.valueAt(size);
            for (int size2 = sparseArrayValueAt.size() - 1; size2 >= 0; size2--) {
                sparseArrayValueAt.valueAt(size2).tmpNumInUse = 0;
            }
        }
        ArrayMap<String, SparseArray<SparseArray<PackageState>>> map2 = this.mPackages.getMap();
        for (int size3 = map2.size() - 1; size3 >= 0; size3--) {
            SparseArray<SparseArray<PackageState>> sparseArrayValueAt2 = map2.valueAt(size3);
            for (int size4 = sparseArrayValueAt2.size() - 1; size4 >= 0; size4--) {
                SparseArray<PackageState> sparseArrayValueAt3 = sparseArrayValueAt2.valueAt(size4);
                for (int size5 = sparseArrayValueAt3.size() - 1; size5 >= 0; size5--) {
                    PackageState packageStateValueAt = sparseArrayValueAt3.valueAt(size5);
                    for (int size6 = packageStateValueAt.mProcesses.size() - 1; size6 >= 0; size6--) {
                        ProcessState processStateValueAt = packageStateValueAt.mProcesses.valueAt(size6);
                        if (processStateValueAt.isInUse()) {
                            processStateValueAt.resetSafely(jUptimeMillis);
                            processStateValueAt.getCommonProcess().tmpNumInUse++;
                            processStateValueAt.getCommonProcess().tmpFoundSubProc = processStateValueAt;
                        } else {
                            packageStateValueAt.mProcesses.valueAt(size6).makeDead();
                            packageStateValueAt.mProcesses.removeAt(size6);
                        }
                    }
                    for (int size7 = packageStateValueAt.mServices.size() - 1; size7 >= 0; size7--) {
                        ServiceState serviceStateValueAt = packageStateValueAt.mServices.valueAt(size7);
                        if (serviceStateValueAt.isInUse()) {
                            serviceStateValueAt.resetSafely(jUptimeMillis);
                        } else {
                            packageStateValueAt.mServices.removeAt(size7);
                        }
                    }
                    if (packageStateValueAt.mProcesses.size() <= 0 && packageStateValueAt.mServices.size() <= 0) {
                        sparseArrayValueAt3.removeAt(size5);
                    }
                }
                if (sparseArrayValueAt3.size() <= 0) {
                    sparseArrayValueAt2.removeAt(size4);
                }
            }
            if (sparseArrayValueAt2.size() <= 0) {
                map2.removeAt(size3);
            }
        }
        for (int size8 = map.size() - 1; size8 >= 0; size8--) {
            SparseArray<ProcessState> sparseArrayValueAt4 = map.valueAt(size8);
            for (int size9 = sparseArrayValueAt4.size() - 1; size9 >= 0; size9--) {
                ProcessState processStateValueAt2 = sparseArrayValueAt4.valueAt(size9);
                if (!processStateValueAt2.isInUse() && processStateValueAt2.tmpNumInUse <= 0) {
                    processStateValueAt2.makeDead();
                    sparseArrayValueAt4.removeAt(size9);
                } else if (!processStateValueAt2.isActive() && processStateValueAt2.isMultiPackage() && processStateValueAt2.tmpNumInUse == 1) {
                    ProcessState processState = processStateValueAt2.tmpFoundSubProc;
                    processState.makeStandalone();
                    sparseArrayValueAt4.setValueAt(size9, processState);
                } else {
                    processStateValueAt2.resetSafely(jUptimeMillis);
                }
            }
            if (sparseArrayValueAt4.size() <= 0) {
                map.removeAt(size8);
            }
        }
        this.mStartTime = jUptimeMillis;
    }

    public void updateFragmentation() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        Integer numValueOf;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/pagetypeinfo"));
                try {
                    Matcher matcher = sPageTypeRegex.matcher("");
                    this.mPageTypeZones.clear();
                    this.mPageTypeLabels.clear();
                    this.mPageTypeSizes.clear();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            try {
                                bufferedReader.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        matcher.reset(line);
                        if (matcher.matches() && (numValueOf = Integer.valueOf(matcher.group(1), 10)) != null) {
                            this.mPageTypeZones.add(numValueOf);
                            this.mPageTypeLabels.add(matcher.group(2));
                            this.mPageTypeSizes.add(splitAndParseNumbers(matcher.group(3)));
                        }
                    }
                } catch (IOException unused2) {
                    bufferedReader2 = bufferedReader;
                    this.mPageTypeZones.clear();
                    this.mPageTypeLabels.clear();
                    this.mPageTypeSizes.clear();
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused3) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                bufferedReader = bufferedReader2;
                th = th3;
            }
        } catch (IOException unused5) {
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcel(parcel, SystemClock.uptimeMillis(), i2);
    }

    public void writeToParcel(Parcel parcel, long j2, int i2) {
        parcel.writeInt(MAGIC);
        parcel.writeInt(21);
        parcel.writeInt(14);
        parcel.writeInt(8);
        parcel.writeInt(7);
        parcel.writeInt(16);
        parcel.writeInt(4096);
        this.mCommonStringToIndex = new ArrayMap<>(this.mProcesses.size());
        ArrayMap<String, SparseArray<ProcessState>> map = this.mProcesses.getMap();
        int size = map.size();
        for (int i3 = 0; i3 < size; i3++) {
            SparseArray<ProcessState> sparseArrayValueAt = map.valueAt(i3);
            int size2 = sparseArrayValueAt.size();
            for (int i4 = 0; i4 < size2; i4++) {
                sparseArrayValueAt.valueAt(i4).commitStateTime(j2);
            }
        }
        ArrayMap<String, SparseArray<SparseArray<PackageState>>> map2 = this.mPackages.getMap();
        int size3 = map2.size();
        for (int i5 = 0; i5 < size3; i5++) {
            SparseArray<SparseArray<PackageState>> sparseArrayValueAt2 = map2.valueAt(i5);
            int size4 = sparseArrayValueAt2.size();
            for (int i6 = 0; i6 < size4; i6++) {
                SparseArray<PackageState> sparseArrayValueAt3 = sparseArrayValueAt2.valueAt(i6);
                int size5 = sparseArrayValueAt3.size();
                int i7 = 0;
                while (i7 < size5) {
                    PackageState packageStateValueAt = sparseArrayValueAt3.valueAt(i7);
                    SparseArray<SparseArray<PackageState>> sparseArray = sparseArrayValueAt2;
                    int size6 = packageStateValueAt.mProcesses.size();
                    int i8 = size4;
                    int i9 = 0;
                    while (i9 < size6) {
                        int i10 = size6;
                        ProcessState processStateValueAt = packageStateValueAt.mProcesses.valueAt(i9);
                        SparseArray<PackageState> sparseArray2 = sparseArrayValueAt3;
                        if (processStateValueAt.getCommonProcess() != processStateValueAt) {
                            processStateValueAt.commitStateTime(j2);
                        }
                        i9++;
                        size6 = i10;
                        sparseArrayValueAt3 = sparseArray2;
                    }
                    SparseArray<PackageState> sparseArray3 = sparseArrayValueAt3;
                    int size7 = packageStateValueAt.mServices.size();
                    for (int i11 = 0; i11 < size7; i11++) {
                        packageStateValueAt.mServices.valueAt(i11).commitStateTime(j2);
                    }
                    i7++;
                    sparseArrayValueAt2 = sparseArray;
                    size4 = i8;
                    sparseArrayValueAt3 = sparseArray3;
                }
            }
        }
        parcel.writeLong(this.mTimePeriodStartClock);
        parcel.writeLong(this.mTimePeriodStartRealtime);
        parcel.writeLong(this.mTimePeriodEndRealtime);
        parcel.writeLong(this.mTimePeriodStartUptime);
        parcel.writeLong(this.mTimePeriodEndUptime);
        parcel.writeString(this.mRuntime);
        parcel.writeInt(this.mHasSwappedOutPss ? 1 : 0);
        parcel.writeInt(this.mFlags);
        this.mTableData.writeToParcel(parcel);
        int i12 = this.mMemFactor;
        if (i12 != -1) {
            long[] jArr = this.mMemFactorDurations;
            jArr[i12] = (j2 - this.mStartTime) + jArr[i12];
            this.mStartTime = j2;
        }
        long[] jArr2 = this.mMemFactorDurations;
        writeCompactedLongArray(parcel, jArr2, jArr2.length);
        this.mSysMemUsage.writeToParcel(parcel);
        parcel.writeInt(size);
        for (int i13 = 0; i13 < size; i13++) {
            writeCommonString(parcel, map.keyAt(i13));
            SparseArray<ProcessState> sparseArrayValueAt4 = map.valueAt(i13);
            int size8 = sparseArrayValueAt4.size();
            parcel.writeInt(size8);
            for (int i14 = 0; i14 < size8; i14++) {
                parcel.writeInt(sparseArrayValueAt4.keyAt(i14));
                ProcessState processStateValueAt2 = sparseArrayValueAt4.valueAt(i14);
                writeCommonString(parcel, processStateValueAt2.getPackage());
                parcel.writeInt(processStateValueAt2.getVersion());
                processStateValueAt2.writeToParcel(parcel, j2);
            }
        }
        parcel.writeInt(size3);
        for (int i15 = 0; i15 < size3; i15++) {
            writeCommonString(parcel, map2.keyAt(i15));
            SparseArray<SparseArray<PackageState>> sparseArrayValueAt5 = map2.valueAt(i15);
            int size9 = sparseArrayValueAt5.size();
            parcel.writeInt(size9);
            for (int i16 = 0; i16 < size9; i16++) {
                parcel.writeInt(sparseArrayValueAt5.keyAt(i16));
                SparseArray<PackageState> sparseArrayValueAt6 = sparseArrayValueAt5.valueAt(i16);
                int size10 = sparseArrayValueAt6.size();
                parcel.writeInt(size10);
                int i17 = 0;
                while (i17 < size10) {
                    parcel.writeInt(sparseArrayValueAt6.keyAt(i17));
                    PackageState packageStateValueAt2 = sparseArrayValueAt6.valueAt(i17);
                    int size11 = packageStateValueAt2.mProcesses.size();
                    parcel.writeInt(size11);
                    int i18 = 0;
                    while (i18 < size11) {
                        SparseArray<SparseArray<PackageState>> sparseArray4 = sparseArrayValueAt5;
                        writeCommonString(parcel, packageStateValueAt2.mProcesses.keyAt(i18));
                        ProcessState processStateValueAt3 = packageStateValueAt2.mProcesses.valueAt(i18);
                        int i19 = size9;
                        if (processStateValueAt3.getCommonProcess() == processStateValueAt3) {
                            parcel.writeInt(0);
                        } else {
                            parcel.writeInt(1);
                            processStateValueAt3.writeToParcel(parcel, j2);
                        }
                        i18++;
                        sparseArrayValueAt5 = sparseArray4;
                        size9 = i19;
                    }
                    SparseArray<SparseArray<PackageState>> sparseArray5 = sparseArrayValueAt5;
                    int i20 = size9;
                    int size12 = packageStateValueAt2.mServices.size();
                    parcel.writeInt(size12);
                    for (int i21 = 0; i21 < size12; i21++) {
                        parcel.writeString(packageStateValueAt2.mServices.keyAt(i21));
                        ServiceState serviceStateValueAt = packageStateValueAt2.mServices.valueAt(i21);
                        writeCommonString(parcel, serviceStateValueAt.getProcessName());
                        serviceStateValueAt.writeToParcel(parcel, j2);
                    }
                    i17++;
                    sparseArrayValueAt5 = sparseArray5;
                    size9 = i20;
                }
            }
        }
        int size13 = this.mPageTypeLabels.size();
        parcel.writeInt(size13);
        for (int i22 = 0; i22 < size13; i22++) {
            parcel.writeInt(this.mPageTypeZones.get(i22).intValue());
            parcel.writeString(this.mPageTypeLabels.get(i22));
            parcel.writeIntArray(this.mPageTypeSizes.get(i22));
        }
        this.mCommonStringToIndex = null;
    }

    public ProcessStats(Parcel parcel) throws Throwable {
        this.mPackages = new ProcessMap<>();
        this.mProcesses = new ProcessMap<>();
        this.mMemFactorDurations = new long[8];
        this.mMemFactor = -1;
        SparseMappingTable sparseMappingTable = new SparseMappingTable();
        this.mTableData = sparseMappingTable;
        this.mSysMemUsageArgs = new long[16];
        this.mSysMemUsage = new SysMemUsageTable(sparseMappingTable);
        this.mPageTypeZones = new ArrayList<>();
        this.mPageTypeLabels = new ArrayList<>();
        this.mPageTypeSizes = new ArrayList<>();
        reset();
        readFromParcel(parcel);
    }
}
