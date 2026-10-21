package com.android.internal.os;

import android.mtp.MtpConstants;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.FileUtils;
import android.os.Process;
import android.os.StrictMode;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.provider.SettingsStringUtil;
import android.system.OsConstants;
import android.util.Slog;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.util.FastPrintWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import libcore.io.IoUtils;
import libcore.io.Libcore;

/* JADX INFO: loaded from: classes2.dex */
public class ProcessCpuTracker {
    private static final boolean DEBUG = false;
    static final int PROCESS_FULL_STAT_MAJOR_FAULTS = 2;
    static final int PROCESS_FULL_STAT_MINOR_FAULTS = 1;
    static final int PROCESS_FULL_STAT_STIME = 4;
    static final int PROCESS_FULL_STAT_UTIME = 3;
    static final int PROCESS_FULL_STAT_VSIZE = 5;
    static final int PROCESS_STAT_MAJOR_FAULTS = 1;
    static final int PROCESS_STAT_MINOR_FAULTS = 0;
    static final int PROCESS_STAT_STIME = 3;
    static final int PROCESS_STAT_UTIME = 2;
    private static final String TAG = "ProcessCpuTracker";
    private static final boolean localLOGV = false;
    private long mBaseIdleTime;
    private long mBaseIoWaitTime;
    private long mBaseIrqTime;
    private long mBaseSoftIrqTime;
    private long mBaseSystemTime;
    private long mBaseUserTime;
    private int[] mCurPids;
    private int[] mCurThreadPids;
    private long mCurrentSampleRealTime;
    private long mCurrentSampleTime;
    private long mCurrentSampleWallTime;
    private final boolean mIncludeThreads;
    private long mLastSampleRealTime;
    private long mLastSampleTime;
    private long mLastSampleWallTime;
    private int mRelIdleTime;
    private int mRelIoWaitTime;
    private int mRelIrqTime;
    private int mRelSoftIrqTime;
    private boolean mRelStatsAreGood;
    private int mRelSystemTime;
    private int mRelUserTime;
    private boolean mWorkingProcsSorted;
    private static final int[] PROCESS_STATS_FORMAT = {32, MetricsProto.MetricsEvent.DIALOG_WIFI_SKIP, 32, 32, 32, 32, 32, 32, 32, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, 32, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, 32, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED};
    private static final int[] PROCESS_FULL_STATS_FORMAT = {32, 4640, 32, 32, 32, 32, 32, 32, 32, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, 32, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, 32, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, 32, 32, 32, 32, 32, 32, 32, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED};
    private static final int[] SYSTEM_CPU_FORMAT = {288, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED};
    private static final int[] LOAD_AVERAGE_FORMAT = {16416, 16416, 16416};
    private static final Comparator<Stats> sLoadComparator = new Comparator<Stats>() { // from class: com.android.internal.os.ProcessCpuTracker.1
        @Override // java.util.Comparator
        public final int compare(Stats stats, Stats stats2) {
            int i2 = stats.rel_utime + stats.rel_stime;
            int i3 = stats2.rel_utime + stats2.rel_stime;
            if (i2 != i3) {
                return i2 > i3 ? -1 : 1;
            }
            boolean z2 = stats.added;
            if (z2 != stats2.added) {
                return z2 ? -1 : 1;
            }
            if (stats.removed != stats2.removed) {
                return z2 ? -1 : 1;
            }
            return 0;
        }
    };
    private final long[] mProcessStatsData = new long[4];
    private final long[] mSinglePidStatsData = new long[4];
    private final String[] mProcessFullStatsStringData = new String[6];
    private final long[] mProcessFullStatsData = new long[6];
    private final long[] mSystemCpuData = new long[7];
    private final float[] mLoadAverageData = new float[3];
    private float mLoad1 = 0.0f;
    private float mLoad5 = 0.0f;
    private float mLoad15 = 0.0f;
    private final ArrayList<Stats> mProcStats = new ArrayList<>();
    private final ArrayList<Stats> mWorkingProcs = new ArrayList<>();
    private boolean mFirst = true;
    private byte[] mBuffer = new byte[4096];
    private final long mJiffyMillis = 1000 / Libcore.os.sysconf(OsConstants._SC_CLK_TCK);

    public interface FilterStats {
        boolean needed(Stats stats);
    }

    public static class Stats {
        public boolean active;
        public boolean added;
        public String baseName;
        public long base_majfaults;
        public long base_minfaults;
        public long base_stime;
        public long base_uptime;
        public long base_utime;
        public BatteryStatsImpl.Uid.Proc batteryStats;
        final String cmdlineFile;
        public boolean interesting;
        public String name;
        public int nameWidth;
        public final int pid;
        public int rel_majfaults;
        public int rel_minfaults;
        public int rel_stime;
        public long rel_uptime;
        public int rel_utime;
        public boolean removed;
        final String statFile;
        final ArrayList<Stats> threadStats;
        final String threadsDir;
        public final int uid;
        public long vsize;
        public boolean working;
        final ArrayList<Stats> workingThreads;

        public Stats(int i2, int i3, boolean z2) {
            this.pid = i2;
            if (i3 < 0) {
                File file = new File("/proc", Integer.toString(i2));
                this.statFile = new File(file, "stat").toString();
                this.cmdlineFile = new File(file, "cmdline").toString();
                this.threadsDir = new File(file, "task").toString();
                if (z2) {
                    this.threadStats = new ArrayList<>();
                    this.workingThreads = new ArrayList<>();
                } else {
                    this.threadStats = null;
                    this.workingThreads = null;
                }
            } else {
                this.statFile = new File(new File(new File(new File("/proc", Integer.toString(i3)), "task"), Integer.toString(i2)), "stat").toString();
                this.cmdlineFile = null;
                this.threadsDir = null;
                this.threadStats = null;
                this.workingThreads = null;
            }
            this.uid = FileUtils.getUid(this.statFile.toString());
        }
    }

    public ProcessCpuTracker(boolean z2) {
        this.mIncludeThreads = z2;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:39:0x00fb  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v3 */
    private int[] collectStats(String str, int i2, boolean z2, int[] iArr, ArrayList<Stats> arrayList) throws Throwable {
        int i3;
        int i4;
        int[] pids = Process.getPids(str, iArr);
        ?? r10 = 0;
        int length = pids == null ? 0 : pids.length;
        int size = arrayList.size();
        int i5 = 0;
        int i6 = 0;
        while (i6 < length) {
            int i7 = pids[i6];
            if (i7 < 0) {
                break;
            }
            Stats stats = i5 < size ? arrayList.get(i5) : null;
            if (stats == null || stats.pid != i7) {
                i3 = length;
                if (stats == null || stats.pid > i7) {
                    Stats stats2 = new Stats(i7, i2, this.mIncludeThreads);
                    arrayList.add(i5, stats2);
                    int i8 = i5 + 1;
                    size++;
                    String[] strArr = this.mProcessFullStatsStringData;
                    long[] jArr = this.mProcessFullStatsData;
                    stats2.base_uptime = SystemClock.uptimeMillis();
                    if (Process.readProcFile(stats2.statFile.toString(), PROCESS_FULL_STATS_FORMAT, strArr, jArr, null)) {
                        stats2.vsize = jArr[5];
                        stats2.interesting = true;
                        stats2.baseName = strArr[0];
                        stats2.base_minfaults = jArr[1];
                        stats2.base_majfaults = jArr[2];
                        long j2 = jArr[3];
                        long j3 = this.mJiffyMillis;
                        stats2.base_utime = j2 * j3;
                        stats2.base_stime = jArr[4] * j3;
                    } else {
                        Slog.w(TAG, "Skipping unknown process pid " + i7);
                        stats2.baseName = MediaStore.UNKNOWN_STRING;
                        stats2.base_stime = 0L;
                        stats2.base_utime = 0L;
                        stats2.base_majfaults = 0L;
                        stats2.base_minfaults = 0L;
                    }
                    if (i2 < 0) {
                        getName(stats2, stats2.cmdlineFile);
                        ArrayList<Stats> arrayList2 = stats2.threadStats;
                        if (arrayList2 != null) {
                            this.mCurThreadPids = collectStats(stats2.threadsDir, i7, true, this.mCurThreadPids, arrayList2);
                        }
                    } else if (stats2.interesting) {
                        String str2 = stats2.baseName;
                        stats2.name = str2;
                        stats2.nameWidth = onMeasureProcessName(str2);
                    }
                    stats2.rel_utime = 0;
                    stats2.rel_stime = 0;
                    stats2.rel_minfaults = 0;
                    stats2.rel_majfaults = 0;
                    i4 = 1;
                    stats2.added = true;
                    if (!z2 && stats2.interesting) {
                        stats2.working = true;
                    }
                    i5 = i8;
                } else {
                    stats.rel_utime = 0;
                    stats.rel_stime = 0;
                    stats.rel_minfaults = 0;
                    stats.rel_majfaults = 0;
                    stats.removed = true;
                    stats.working = true;
                    arrayList.remove(i5);
                    size--;
                    i6--;
                }
                i6 += i4;
                length = i3;
                r10 = 0;
            } else {
                stats.added = r10;
                stats.working = r10;
                int i9 = i5 + 1;
                if (stats.interesting) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    long[] jArr2 = this.mProcessStatsData;
                    if (Process.readProcFile(stats.statFile.toString(), PROCESS_STATS_FORMAT, null, jArr2, null)) {
                        long j4 = jArr2[r10];
                        long j5 = jArr2[1];
                        long j6 = jArr2[2];
                        i3 = length;
                        long j7 = this.mJiffyMillis;
                        long j8 = j6 * j7;
                        long j9 = j7 * jArr2[3];
                        if (j8 == stats.base_utime && j9 == stats.base_stime) {
                            stats.rel_utime = 0;
                            stats.rel_stime = 0;
                            stats.rel_minfaults = 0;
                            stats.rel_majfaults = 0;
                            if (stats.active) {
                                stats.active = false;
                            }
                        } else {
                            if (!stats.active) {
                                stats.active = true;
                            }
                            if (i2 < 0) {
                                getName(stats, stats.cmdlineFile);
                                ArrayList<Stats> arrayList3 = stats.threadStats;
                                if (arrayList3 != null) {
                                    this.mCurThreadPids = collectStats(stats.threadsDir, i7, false, this.mCurThreadPids, arrayList3);
                                }
                            }
                            stats.rel_uptime = jUptimeMillis - stats.base_uptime;
                            stats.base_uptime = jUptimeMillis;
                            stats.rel_utime = (int) (j8 - stats.base_utime);
                            stats.rel_stime = (int) (j9 - stats.base_stime);
                            stats.base_utime = j8;
                            stats.base_stime = j9;
                            stats.rel_minfaults = (int) (j4 - stats.base_minfaults);
                            stats.rel_majfaults = (int) (j5 - stats.base_majfaults);
                            stats.base_minfaults = j4;
                            stats.base_majfaults = j5;
                            stats.working = true;
                        }
                    } else {
                        i3 = length;
                    }
                } else {
                    i3 = length;
                }
                i5 = i9;
            }
            i4 = 1;
            i6 += i4;
            length = i3;
            r10 = 0;
        }
        while (i5 < size) {
            Stats stats3 = arrayList.get(i5);
            stats3.rel_utime = 0;
            stats3.rel_stime = 0;
            stats3.rel_minfaults = 0;
            stats3.rel_majfaults = 0;
            stats3.removed = true;
            stats3.working = true;
            arrayList.remove(i5);
            size--;
        }
        return pids;
    }

    private void getName(Stats stats, String str) throws Throwable {
        String str2 = stats.name;
        if (str2 == null || str2.equals("app_process") || stats.name.equals("<pre-initialized>")) {
            String file = readFile(str, (char) 0);
            if (file != null && file.length() > 1) {
                int iLastIndexOf = file.lastIndexOf("/");
                if (iLastIndexOf > 0 && iLastIndexOf < file.length() - 1) {
                    file = file.substring(iLastIndexOf + 1);
                }
                str2 = file;
            }
            if (str2 == null) {
                str2 = stats.baseName;
            }
        }
        String str3 = stats.name;
        if (str3 == null || !str2.equals(str3)) {
            stats.name = str2;
            stats.nameWidth = onMeasureProcessName(str2);
        }
    }

    private void printProcessCPU(PrintWriter printWriter, String str, int i2, String str2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        printWriter.print(str);
        long j2 = i3 == 0 ? 1 : i3;
        printRatio(printWriter, i4 + i5 + i6 + i7 + i8, j2);
        printWriter.print("% ");
        if (i2 >= 0) {
            printWriter.print(i2);
            printWriter.print("/");
        }
        printWriter.print(str2);
        printWriter.print(": ");
        printRatio(printWriter, i4, j2);
        printWriter.print("% user + ");
        printRatio(printWriter, i5, j2);
        printWriter.print("% kernel");
        if (i6 > 0) {
            printWriter.print(" + ");
            printRatio(printWriter, i6, j2);
            printWriter.print("% iowait");
        }
        if (i7 > 0) {
            printWriter.print(" + ");
            printRatio(printWriter, i7, j2);
            printWriter.print("% irq");
        }
        if (i8 > 0) {
            printWriter.print(" + ");
            printRatio(printWriter, i8, j2);
            printWriter.print("% softirq");
        }
        if (i9 > 0 || i10 > 0) {
            printWriter.print(" / faults:");
            if (i9 > 0) {
                printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                printWriter.print(i9);
                printWriter.print(" minor");
            }
            if (i10 > 0) {
                printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                printWriter.print(i10);
                printWriter.print(" major");
            }
        }
        printWriter.println();
    }

    private void printRatio(PrintWriter printWriter, long j2, long j3) {
        long j4 = (j2 * 1000) / j3;
        long j5 = j4 / 10;
        printWriter.print(j5);
        if (j5 < 10) {
            long j6 = j4 - (j5 * 10);
            if (j6 != 0) {
                printWriter.print('.');
                printWriter.print(j6);
            }
        }
    }

    private String readFile(String str, char c) throws Throwable {
        FileInputStream fileInputStream;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                int i2 = fileInputStream.read(this.mBuffer);
                fileInputStream.close();
                if (i2 > 0) {
                    int i3 = 0;
                    while (i3 < i2 && this.mBuffer[i3] != c) {
                        i3++;
                    }
                    String str2 = new String(this.mBuffer, 0, i3);
                    IoUtils.closeQuietly(fileInputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    return str2;
                }
            } catch (FileNotFoundException | IOException unused) {
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                IoUtils.closeQuietly(fileInputStream2);
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                throw th;
            }
        } catch (FileNotFoundException | IOException unused2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        IoUtils.closeQuietly(fileInputStream);
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        return null;
    }

    public final void buildWorkingProcs() {
        if (this.mWorkingProcsSorted) {
            return;
        }
        this.mWorkingProcs.clear();
        int size = this.mProcStats.size();
        for (int i2 = 0; i2 < size; i2++) {
            Stats stats = this.mProcStats.get(i2);
            if (stats.working) {
                this.mWorkingProcs.add(stats);
                ArrayList<Stats> arrayList = stats.threadStats;
                if (arrayList != null && arrayList.size() > 1) {
                    stats.workingThreads.clear();
                    int size2 = stats.threadStats.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        Stats stats2 = stats.threadStats.get(i3);
                        if (stats2.working) {
                            stats.workingThreads.add(stats2);
                        }
                    }
                    Collections.sort(stats.workingThreads, sLoadComparator);
                }
            }
        }
        Collections.sort(this.mWorkingProcs, sLoadComparator);
        this.mWorkingProcsSorted = true;
    }

    public final int countStats() {
        return this.mProcStats.size();
    }

    public final int countWorkingStats() {
        buildWorkingProcs();
        return this.mWorkingProcs.size();
    }

    public long getCpuTimeForPid(int i2) {
        synchronized (this.mSinglePidStatsData) {
            String str = "/proc/" + i2 + "/stat";
            long[] jArr = this.mSinglePidStatsData;
            if (!Process.readProcFile(str, PROCESS_STATS_FORMAT, null, jArr, null)) {
                return 0L;
            }
            return (jArr[2] + jArr[3]) * this.mJiffyMillis;
        }
    }

    public final int getLastIdleTime() {
        return this.mRelIdleTime;
    }

    public final int getLastIoWaitTime() {
        return this.mRelIoWaitTime;
    }

    public final int getLastIrqTime() {
        return this.mRelIrqTime;
    }

    public final int getLastSoftIrqTime() {
        return this.mRelSoftIrqTime;
    }

    public final int getLastSystemTime() {
        return this.mRelSystemTime;
    }

    public final int getLastUserTime() {
        return this.mRelUserTime;
    }

    public final Stats getStats(int i2) {
        return this.mProcStats.get(i2);
    }

    public final float getTotalCpuPercent() {
        int i2 = this.mRelUserTime;
        int i3 = this.mRelSystemTime;
        int i4 = this.mRelIrqTime;
        int i5 = i2 + i3 + i4 + this.mRelIdleTime;
        if (i5 <= 0) {
            return 0.0f;
        }
        return (((i2 + i3) + i4) * 100.0f) / i5;
    }

    public final Stats getWorkingStats(int i2) {
        return this.mWorkingProcs.get(i2);
    }

    public final boolean hasGoodLastStats() {
        return this.mRelStatsAreGood;
    }

    public void init() {
        this.mFirst = true;
        update();
    }

    public void onLoadChanged(float f2, float f3, float f4) {
    }

    public int onMeasureProcessName(String str) {
        return 0;
    }

    public final String printCurrentLoad() {
        StringWriter stringWriter = new StringWriter();
        FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) stringWriter, false, 128);
        fastPrintWriter.print("Load: ");
        fastPrintWriter.print(this.mLoad1);
        fastPrintWriter.print(" / ");
        fastPrintWriter.print(this.mLoad5);
        fastPrintWriter.print(" / ");
        fastPrintWriter.println(this.mLoad15);
        fastPrintWriter.flush();
        return stringWriter.toString();
    }

    public final String printCurrentState(long j2) {
        String str;
        ArrayList<Stats> arrayList;
        String str2;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        buildWorkingProcs();
        StringWriter stringWriter = new StringWriter();
        int i2 = 0;
        FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) stringWriter, false, 1024);
        fastPrintWriter.print("CPU usage from ");
        long j3 = this.mLastSampleTime;
        if (j2 > j3) {
            fastPrintWriter.print(j2 - j3);
            fastPrintWriter.print("ms to ");
            fastPrintWriter.print(j2 - this.mCurrentSampleTime);
            fastPrintWriter.print("ms ago");
        } else {
            fastPrintWriter.print(j3 - j2);
            fastPrintWriter.print("ms to ");
            fastPrintWriter.print(this.mCurrentSampleTime - j2);
            fastPrintWriter.print("ms later");
        }
        fastPrintWriter.print(" (");
        fastPrintWriter.print(simpleDateFormat.format(new Date(this.mLastSampleWallTime)));
        fastPrintWriter.print(" to ");
        fastPrintWriter.print(simpleDateFormat.format(new Date(this.mCurrentSampleWallTime)));
        fastPrintWriter.print(")");
        long j4 = this.mCurrentSampleTime - this.mLastSampleTime;
        long j5 = this.mCurrentSampleRealTime - this.mLastSampleRealTime;
        long j6 = j5 > 0 ? (j4 * 100) / j5 : 0L;
        if (j6 != 100) {
            fastPrintWriter.print(" with ");
            fastPrintWriter.print(j6);
            fastPrintWriter.print("% awake");
        }
        fastPrintWriter.println(SettingsStringUtil.DELIMITER);
        int i3 = this.mRelUserTime + this.mRelSystemTime + this.mRelIoWaitTime + this.mRelIrqTime + this.mRelSoftIrqTime + this.mRelIdleTime;
        int size = this.mWorkingProcs.size();
        int i4 = 0;
        while (i4 < size) {
            Stats stats = this.mWorkingProcs.get(i4);
            if (stats.added) {
                str = " +";
            } else {
                str = stats.removed ? " -" : "  ";
            }
            int i5 = i4;
            int i6 = size;
            int i7 = i2;
            printProcessCPU(fastPrintWriter, str, stats.pid, stats.name, (int) stats.rel_uptime, stats.rel_utime, stats.rel_stime, 0, 0, 0, stats.rel_minfaults, stats.rel_majfaults);
            Stats stats2 = stats;
            if (!stats2.removed && (arrayList = stats2.workingThreads) != null) {
                int size2 = arrayList.size();
                int i8 = i7;
                while (i8 < size2) {
                    Stats stats3 = stats2.workingThreads.get(i8);
                    if (stats3.added) {
                        str2 = "   +";
                    } else {
                        str2 = stats3.removed ? "   -" : "    ";
                    }
                    printProcessCPU(fastPrintWriter, str2, stats3.pid, stats3.name, (int) stats2.rel_uptime, stats3.rel_utime, stats3.rel_stime, 0, 0, 0, 0, 0);
                    i8++;
                    size2 = size2;
                    stats2 = stats2;
                }
            }
            i4 = i5 + 1;
            size = i6;
            i2 = i7;
        }
        printProcessCPU(fastPrintWriter, "", -1, "TOTAL", i3, this.mRelUserTime, this.mRelSystemTime, this.mRelIoWaitTime, this.mRelIrqTime, this.mRelSoftIrqTime, 0, 0);
        fastPrintWriter.flush();
        return stringWriter.toString();
    }

    public void update() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long[] jArr = this.mSystemCpuData;
        if (Process.readProcFile("/proc/stat", SYSTEM_CPU_FORMAT, null, jArr, null)) {
            long j2 = jArr[0] + jArr[1];
            long j3 = this.mJiffyMillis;
            long j4 = j2 * j3;
            long j5 = jArr[2] * j3;
            long j6 = jArr[3] * j3;
            long j7 = jArr[4] * j3;
            long j8 = jArr[5] * j3;
            long j9 = j3 * jArr[6];
            this.mRelUserTime = (int) (j4 - this.mBaseUserTime);
            this.mRelSystemTime = (int) (j5 - this.mBaseSystemTime);
            this.mRelIoWaitTime = (int) (j7 - this.mBaseIoWaitTime);
            this.mRelIrqTime = (int) (j8 - this.mBaseIrqTime);
            this.mRelSoftIrqTime = (int) (j9 - this.mBaseSoftIrqTime);
            this.mRelIdleTime = (int) (j6 - this.mBaseIdleTime);
            this.mRelStatsAreGood = true;
            this.mBaseUserTime = j4;
            this.mBaseSystemTime = j5;
            this.mBaseIoWaitTime = j7;
            this.mBaseIrqTime = j8;
            this.mBaseSoftIrqTime = j9;
            this.mBaseIdleTime = j6;
        }
        this.mLastSampleTime = this.mCurrentSampleTime;
        this.mCurrentSampleTime = jUptimeMillis;
        this.mLastSampleRealTime = this.mCurrentSampleRealTime;
        this.mCurrentSampleRealTime = jElapsedRealtime;
        this.mLastSampleWallTime = this.mCurrentSampleWallTime;
        this.mCurrentSampleWallTime = jCurrentTimeMillis;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            this.mCurPids = collectStats("/proc", -1, this.mFirst, this.mCurPids, this.mProcStats);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            float[] fArr = this.mLoadAverageData;
            if (Process.readProcFile("/proc/loadavg", LOAD_AVERAGE_FORMAT, null, null, fArr)) {
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = fArr[2];
                if (f2 != this.mLoad1 || f3 != this.mLoad5 || f4 != this.mLoad15) {
                    this.mLoad1 = f2;
                    this.mLoad5 = f3;
                    this.mLoad15 = f4;
                    onLoadChanged(f2, f3, f4);
                }
            }
            this.mWorkingProcsSorted = false;
            this.mFirst = false;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            throw th;
        }
    }

    public final List<Stats> getStats(FilterStats filterStats) {
        ArrayList arrayList = new ArrayList(this.mProcStats.size());
        int size = this.mProcStats.size();
        for (int i2 = 0; i2 < size; i2++) {
            Stats stats = this.mProcStats.get(i2);
            if (filterStats.needed(stats)) {
                arrayList.add(stats);
            }
        }
        return arrayList;
    }
}
