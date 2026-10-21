package com.android.internal.app.procstats;

import android.accessibilityservice.c;
import android.app.job.JobInfo;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.SettingsStringUtil;
import android.util.ArrayMap;
import android.util.DebugUtils;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import com.android.internal.content.NativeLibraryHelper;
import java.io.PrintWriter;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public final class ProcessState {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_PARCEL = false;
    private static final String TAG = "ProcessStats";
    private boolean mActive;
    private long mAvgCachedKillPss;
    private ProcessState mCommonProcess;
    private int mCurState;
    private boolean mDead;
    private final DurationsTable mDurations;
    private int mLastPssState;
    private long mLastPssTime;
    private long mMaxCachedKillPss;
    private long mMinCachedKillPss;
    private boolean mMultiPackage;
    private final String mName;
    private int mNumActiveServices;
    private int mNumCachedKill;
    private int mNumExcessiveCpu;
    private int mNumExcessiveWake;
    private int mNumStartedServices;
    private final String mPackage;
    private final PssTable mPssTable;
    private long mStartTime;
    private final ProcessStats mStats;
    private long mTmpTotalTime;
    private final int mUid;
    private final int mVersion;
    public ProcessState tmpFoundSubProc;
    public int tmpNumInUse;
    private static final int[] PROCESS_STATE_TO_STATE = {0, 0, 1, 2, 2, 1, 2, 3, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13};
    public static final Comparator<ProcessState> COMPARATOR = new Comparator<ProcessState>() { // from class: com.android.internal.app.procstats.ProcessState.1
        @Override // java.util.Comparator
        public int compare(ProcessState processState, ProcessState processState2) {
            if (processState.mTmpTotalTime < processState2.mTmpTotalTime) {
                return -1;
            }
            return processState.mTmpTotalTime > processState2.mTmpTotalTime ? 1 : 0;
        }
    };

    public static class PssAggr {
        long pss = 0;
        long samples = 0;

        public void add(long j2, long j3) {
            double d2 = this.pss;
            long j4 = this.samples;
            this.pss = ((long) ((j2 * j3) + (d2 * j4))) / (j4 + j3);
            this.samples = j4 + j3;
        }
    }

    public ProcessState(ProcessStats processStats, String str, int i2, int i3, String str2) {
        this.mCurState = -1;
        this.mLastPssState = -1;
        this.mStats = processStats;
        this.mName = str2;
        this.mCommonProcess = this;
        this.mPackage = str;
        this.mUid = i2;
        this.mVersion = i3;
        this.mDurations = new DurationsTable(processStats.mTableData);
        this.mPssTable = new PssTable(processStats.mTableData);
    }

    private void addCachedKill(int i2, long j2, long j3, long j4) {
        int i3 = this.mNumCachedKill;
        if (i3 <= 0) {
            this.mNumCachedKill = i2;
            this.mMinCachedKillPss = j2;
            this.mAvgCachedKillPss = j3;
            this.mMaxCachedKillPss = j4;
            return;
        }
        if (j2 < this.mMinCachedKillPss) {
            this.mMinCachedKillPss = j2;
        }
        if (j4 > this.mMaxCachedKillPss) {
            this.mMaxCachedKillPss = j4;
        }
        this.mAvgCachedKillPss = (long) (((this.mAvgCachedKillPss * ((double) i3)) + j3) / ((double) (i3 + i2)));
        this.mNumCachedKill = i3 + i2;
    }

    private void dumpProcessSummaryDetails(PrintWriter printWriter, String str, String str2, int[] iArr, int[] iArr2, int[] iArr3, long j2, long j3, boolean z2) {
        ProcessStats.ProcessDataCollection processDataCollection = new ProcessStats.ProcessDataCollection(iArr, iArr2, iArr3);
        computeProcessData(processDataCollection, j2);
        if ((processDataCollection.totalTime / j3) * 100.0d >= 0.005d || processDataCollection.numPss != 0) {
            if (str != null) {
                printWriter.print(str);
            }
            if (str2 != null) {
                printWriter.print(str2);
            }
            processDataCollection.print(printWriter, j3, z2);
            if (str != null) {
                printWriter.println();
            }
        }
    }

    private void ensureNotDead() {
        if (this.mDead) {
            Slog.w("ProcessStats", "ProcessState dead: name=" + this.mName + " pkg=" + this.mPackage + " uid=" + this.mUid + " common.name=" + this.mCommonProcess.mName);
        }
    }

    public void add(ProcessState processState) {
        this.mDurations.addDurations(processState.mDurations);
        this.mPssTable.mergeStats(processState.mPssTable);
        this.mNumExcessiveCpu += processState.mNumExcessiveCpu;
        int i2 = processState.mNumCachedKill;
        if (i2 > 0) {
            addCachedKill(i2, processState.mMinCachedKillPss, processState.mAvgCachedKillPss, processState.mMaxCachedKillPss);
        }
    }

    public void addPss(long j2, long j3, boolean z2, ArrayMap<String, ProcessStats.ProcessStateHolder> arrayMap) {
        ensureNotDead();
        if (z2 || this.mLastPssState != this.mCurState || SystemClock.uptimeMillis() >= this.mLastPssTime + JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS) {
            this.mLastPssState = this.mCurState;
            this.mLastPssTime = SystemClock.uptimeMillis();
            int i2 = this.mCurState;
            if (i2 != -1) {
                this.mCommonProcess.mPssTable.mergeStats(i2, 1, j2, j2, j2, j3, j3, j3);
                if (this.mCommonProcess.mMultiPackage && arrayMap != null) {
                    for (int size = arrayMap.size() - 1; size >= 0; size--) {
                        pullFixedProc(arrayMap, size).mPssTable.mergeStats(this.mCurState, 1, j2, j2, j2, j3, j3, j3);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0067  */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:34:0x008f  */
    public void aggregatePss(ProcessStats.TotalMemoryUseCollection totalMemoryUseCollection, long j2) {
        boolean z2;
        boolean z3;
        boolean z4;
        long pssAverage;
        ProcessState processState = this;
        PssAggr pssAggr = new PssAggr();
        PssAggr pssAggr2 = new PssAggr();
        PssAggr pssAggr3 = new PssAggr();
        int i2 = 0;
        boolean z5 = false;
        while (i2 < processState.mDurations.getKeyCount()) {
            byte idFromKey = SparseMappingTable.getIdFromKey(processState.mDurations.getKeyAt(i2));
            int i3 = idFromKey % 14;
            int i4 = i2;
            long pssSampleCount = processState.getPssSampleCount(idFromKey);
            if (pssSampleCount > 0) {
                long pssAverage2 = processState.getPssAverage(idFromKey);
                if (i3 <= 2) {
                    pssAggr.add(pssAverage2, pssSampleCount);
                } else if (i3 <= 8) {
                    pssAggr2.add(pssAverage2, pssSampleCount);
                } else {
                    pssAggr3.add(pssAverage2, pssSampleCount);
                }
                z5 = true;
            }
            i2 = i4 + 1;
        }
        if (z5) {
            if (pssAggr.samples < 3) {
                long j3 = pssAggr2.samples;
                if (j3 > 0) {
                    pssAggr.add(pssAggr2.pss, j3);
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (pssAggr.samples < 3) {
                long j4 = pssAggr3.samples;
                if (j4 > 0) {
                    pssAggr.add(pssAggr3.pss, j4);
                    z3 = true;
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            if (pssAggr2.samples < 3) {
                long j5 = pssAggr3.samples;
                if (j5 > 0) {
                    pssAggr2.add(pssAggr3.pss, j5);
                    z4 = true;
                } else {
                    z4 = false;
                }
            } else {
                z4 = false;
            }
            if (pssAggr2.samples < 3 && !z2) {
                long j6 = pssAggr.samples;
                if (j6 > 0) {
                    pssAggr2.add(pssAggr.pss, j6);
                }
            }
            if (pssAggr3.samples < 3 && !z4) {
                long j7 = pssAggr2.samples;
                if (j7 > 0) {
                    pssAggr3.add(pssAggr2.pss, j7);
                }
            }
            if (pssAggr3.samples < 3 && !z3) {
                long j8 = pssAggr.samples;
                if (j8 > 0) {
                    pssAggr3.add(pssAggr.pss, j8);
                }
            }
            int i5 = 0;
            while (i5 < processState.mDurations.getKeyCount()) {
                int keyAt = processState.mDurations.getKeyAt(i5);
                byte idFromKey2 = SparseMappingTable.getIdFromKey(keyAt);
                long value = processState.mDurations.getValue(keyAt);
                if (processState.mCurState == idFromKey2) {
                    value += j2 - processState.mStartTime;
                }
                int i6 = idFromKey2 % 14;
                long[] jArr = totalMemoryUseCollection.processStateTime;
                jArr[i6] = jArr[i6] + value;
                long pssSampleCount2 = processState.getPssSampleCount(idFromKey2);
                if (pssSampleCount2 > 0) {
                    pssAverage = processState.getPssAverage(idFromKey2);
                } else if (i6 <= 2) {
                    pssSampleCount2 = pssAggr.samples;
                    pssAverage = pssAggr.pss;
                } else if (i6 <= 8) {
                    pssSampleCount2 = pssAggr2.samples;
                    pssAverage = pssAggr2.pss;
                } else {
                    pssSampleCount2 = pssAggr3.samples;
                    pssAverage = pssAggr3.pss;
                }
                long[] jArr2 = totalMemoryUseCollection.processStatePss;
                double d2 = jArr2[i6];
                int[] iArr = totalMemoryUseCollection.processStateSamples;
                PssAggr pssAggr4 = pssAggr;
                int i7 = iArr[i6];
                PssAggr pssAggr5 = pssAggr2;
                double d3 = pssAverage;
                jArr2[i6] = (long) (((pssSampleCount2 * d3) + (d2 * ((double) i7))) / (((long) i7) + pssSampleCount2));
                iArr[i6] = (int) (((long) i7) + pssSampleCount2);
                double[] dArr = totalMemoryUseCollection.processStateWeight;
                dArr[i6] = (d3 * value) + dArr[i6];
                i5++;
                processState = this;
                pssAggr = pssAggr4;
                pssAggr2 = pssAggr5;
                pssAggr3 = pssAggr3;
            }
        }
    }

    public ProcessState clone(long j2) {
        ProcessState processState = new ProcessState(this, this.mPackage, this.mUid, this.mVersion, this.mName, j2);
        processState.mDurations.addDurations(this.mDurations);
        processState.mPssTable.copyFrom(this.mPssTable, 7);
        processState.mNumExcessiveCpu = this.mNumExcessiveCpu;
        processState.mNumCachedKill = this.mNumCachedKill;
        processState.mMinCachedKillPss = this.mMinCachedKillPss;
        processState.mAvgCachedKillPss = this.mAvgCachedKillPss;
        processState.mMaxCachedKillPss = this.mMaxCachedKillPss;
        processState.mActive = this.mActive;
        processState.mNumActiveServices = this.mNumActiveServices;
        processState.mNumStartedServices = this.mNumStartedServices;
        return processState;
    }

    public void commitStateTime(long j2) {
        int i2 = this.mCurState;
        if (i2 != -1) {
            long j3 = j2 - this.mStartTime;
            if (j3 > 0) {
                this.mDurations.addDuration(i2, j3);
            }
        }
        this.mStartTime = j2;
    }

    public void computeProcessData(ProcessStats.ProcessDataCollection processDataCollection, long j2) {
        long j3;
        long j4;
        long j5 = 0;
        processDataCollection.totalTime = 0L;
        processDataCollection.maxUss = 0L;
        processDataCollection.avgUss = 0L;
        processDataCollection.minUss = 0L;
        processDataCollection.maxPss = 0L;
        processDataCollection.avgPss = 0L;
        processDataCollection.minPss = 0L;
        processDataCollection.numPss = 0L;
        int i2 = 0;
        while (i2 < processDataCollection.screenStates.length) {
            int i3 = 0;
            while (i3 < processDataCollection.memStates.length) {
                int i4 = 0;
                while (true) {
                    int[] iArr = processDataCollection.procStates;
                    if (i4 < iArr.length) {
                        int i5 = ((processDataCollection.screenStates[i2] + processDataCollection.memStates[i3]) * 14) + iArr[i4];
                        processDataCollection.totalTime = getDuration(i5, j2) + processDataCollection.totalTime;
                        long pssSampleCount = getPssSampleCount(i5);
                        if (pssSampleCount > j5) {
                            long pssMinimum = getPssMinimum(i5);
                            long pssAverage = getPssAverage(i5);
                            long pssMaximum = getPssMaximum(i5);
                            long pssUssMinimum = getPssUssMinimum(i5);
                            long pssUssAverage = getPssUssAverage(i5);
                            long pssUssMaximum = getPssUssMaximum(i5);
                            long j6 = processDataCollection.numPss;
                            j3 = 0;
                            if (j6 == 0) {
                                processDataCollection.minPss = pssMinimum;
                                processDataCollection.avgPss = pssAverage;
                                processDataCollection.maxPss = pssMaximum;
                                processDataCollection.minUss = pssUssMinimum;
                                processDataCollection.avgUss = pssUssAverage;
                                processDataCollection.maxUss = pssUssMaximum;
                                j4 = pssSampleCount;
                            } else {
                                if (pssMinimum < processDataCollection.minPss) {
                                    processDataCollection.minPss = pssMinimum;
                                }
                                j4 = pssSampleCount;
                                double d2 = j4;
                                processDataCollection.avgPss = (long) (((pssAverage * d2) + (processDataCollection.avgPss * j6)) / (j6 + j4));
                                if (pssMaximum > processDataCollection.maxPss) {
                                    processDataCollection.maxPss = pssMaximum;
                                }
                                if (pssUssMinimum < processDataCollection.minUss) {
                                    processDataCollection.minUss = pssUssMinimum;
                                }
                                processDataCollection.avgUss = (long) (((pssUssAverage * d2) + (processDataCollection.avgUss * j6)) / (j6 + j4));
                                if (pssUssMaximum > processDataCollection.maxUss) {
                                    processDataCollection.maxUss = pssUssMaximum;
                                }
                            }
                            processDataCollection.numPss = j6 + j4;
                        } else {
                            j3 = j5;
                        }
                        i4++;
                        i2 = i2;
                        j5 = j3;
                        i3 = i3;
                    }
                }
                i3++;
            }
            i2++;
        }
    }

    public long computeProcessTimeLocked(int[] iArr, int[] iArr2, int[] iArr3, long j2) {
        long duration = 0;
        for (int i2 : iArr) {
            for (int i3 : iArr2) {
                for (int i4 : iArr3) {
                    duration += getDuration(((i2 + i3) * 14) + i4, j2);
                }
            }
        }
        this.mTmpTotalTime = duration;
        return duration;
    }

    public void decActiveServices(String str) {
        ProcessState processState = this.mCommonProcess;
        if (processState != this) {
            processState.decActiveServices(str);
        }
        int i2 = this.mNumActiveServices - 1;
        this.mNumActiveServices = i2;
        if (i2 < 0) {
            Slog.wtfStack("ProcessStats", "Proc active services underrun: pkg=" + this.mPackage + " uid=" + this.mUid + " proc=" + this.mName + " service=" + str);
            this.mNumActiveServices = 0;
        }
    }

    public void decStartedServices(int i2, long j2, String str) {
        ProcessState processState = this.mCommonProcess;
        if (processState != this) {
            processState.decStartedServices(i2, j2, str);
        }
        int i3 = this.mNumStartedServices - 1;
        this.mNumStartedServices = i3;
        if (i3 == 0 && this.mCurState % 14 == 7) {
            setState(-1, j2);
            return;
        }
        if (i3 < 0) {
            Slog.wtfStack("ProcessStats", "Proc started services underrun: pkg=" + this.mPackage + " uid=" + this.mUid + " name=" + this.mName);
            this.mNumStartedServices = 0;
        }
    }

    public void dumpAllPssCheckin(PrintWriter printWriter) {
        int keyCount = this.mPssTable.getKeyCount();
        for (int i2 = 0; i2 < keyCount; i2++) {
            int keyAt = this.mPssTable.getKeyAt(i2);
            byte idFromKey = SparseMappingTable.getIdFromKey(keyAt);
            printWriter.print(',');
            DumpUtils.printProcStateTag(printWriter, idFromKey);
            printWriter.print(':');
            printWriter.print(this.mPssTable.getValue(keyAt, 0));
            printWriter.print(':');
            printWriter.print(this.mPssTable.getValue(keyAt, 1));
            printWriter.print(':');
            printWriter.print(this.mPssTable.getValue(keyAt, 2));
            printWriter.print(':');
            printWriter.print(this.mPssTable.getValue(keyAt, 3));
            printWriter.print(':');
            printWriter.print(this.mPssTable.getValue(keyAt, 4));
            printWriter.print(':');
            printWriter.print(this.mPssTable.getValue(keyAt, 5));
            printWriter.print(':');
            printWriter.print(this.mPssTable.getValue(keyAt, 6));
        }
    }

    public void dumpAllStateCheckin(PrintWriter printWriter, long j2) {
        int i2;
        boolean z2 = false;
        for (int i3 = 0; i3 < this.mDurations.getKeyCount(); i3++) {
            int keyAt = this.mDurations.getKeyAt(i3);
            byte idFromKey = SparseMappingTable.getIdFromKey(keyAt);
            long value = this.mDurations.getValue(keyAt);
            if (this.mCurState == idFromKey) {
                value += j2 - this.mStartTime;
                z2 = true;
            }
            DumpUtils.printProcStateTagAndValue(printWriter, idFromKey, value);
        }
        if (z2 || (i2 = this.mCurState) == -1) {
            return;
        }
        DumpUtils.printProcStateTagAndValue(printWriter, i2, j2 - this.mStartTime);
    }

    public void dumpCsv(PrintWriter printWriter, boolean z2, int[] iArr, boolean z3, int[] iArr2, boolean z4, int[] iArr3, long j2) {
        int[] iArr4 = iArr;
        int[] iArr5 = iArr2;
        int[] iArr6 = iArr3;
        int length = z2 ? iArr4.length : 1;
        int length2 = z3 ? iArr5.length : 1;
        int length3 = z4 ? iArr6.length : 1;
        int i2 = 0;
        while (i2 < length) {
            int i3 = 0;
            while (i3 < length2) {
                int i4 = 0;
                while (i4 < length3) {
                    int i5 = z2 ? iArr4[i2] : 0;
                    int i6 = z3 ? iArr5[i3] : 0;
                    int i7 = z4 ? iArr6[i4] : 0;
                    int length4 = z2 ? 1 : iArr4.length;
                    int length5 = z3 ? 1 : iArr5.length;
                    int length6 = z4 ? 1 : iArr6.length;
                    int i8 = length;
                    int i9 = length2;
                    long j3 = 0;
                    int i10 = length3;
                    int i11 = 0;
                    while (i11 < length4) {
                        long duration = j3;
                        int i12 = 0;
                        while (i12 < length5) {
                            int i13 = 0;
                            while (i13 < length6) {
                                duration = getDuration(((i5 + (z2 ? 0 : iArr4[i11]) + i6 + (z3 ? 0 : iArr5[i12])) * 14) + i7 + (z4 ? 0 : iArr6[i13]), j2) + duration;
                                i13++;
                                iArr4 = iArr;
                                iArr5 = iArr2;
                                iArr6 = iArr3;
                                length5 = length5;
                            }
                            i12++;
                            iArr4 = iArr;
                            iArr5 = iArr2;
                            iArr6 = iArr3;
                            length5 = length5;
                        }
                        i11++;
                        iArr4 = iArr;
                        iArr5 = iArr2;
                        iArr6 = iArr3;
                        length5 = length5;
                        j3 = duration;
                    }
                    printWriter.print("\t");
                    printWriter.print(j3);
                    i4++;
                    iArr4 = iArr;
                    iArr5 = iArr2;
                    iArr6 = iArr3;
                    length3 = i10;
                    length = i8;
                    length2 = i9;
                }
                i3++;
                iArr4 = iArr;
                iArr5 = iArr2;
                iArr6 = iArr3;
            }
            i2++;
            iArr4 = iArr;
            iArr5 = iArr2;
            iArr6 = iArr3;
        }
    }

    public void dumpInternalLocked(PrintWriter printWriter, String str, boolean z2) {
        if (z2) {
            printWriter.print(str);
            printWriter.print("myID=");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.print(" mCommonProcess=");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.mCommonProcess)));
            printWriter.print(" mPackage=");
            printWriter.println(this.mPackage);
            if (this.mMultiPackage) {
                printWriter.print(str);
                printWriter.print("mMultiPackage=");
                printWriter.println(this.mMultiPackage);
            }
            if (this != this.mCommonProcess) {
                printWriter.print(str);
                printWriter.print("Common Proc: ");
                printWriter.print(this.mCommonProcess.mName);
                printWriter.print("/");
                printWriter.print(this.mCommonProcess.mUid);
                printWriter.print(" pkg=");
                printWriter.println(this.mCommonProcess.mPackage);
            }
        }
        if (this.mActive) {
            printWriter.print(str);
            printWriter.print("mActive=");
            printWriter.println(this.mActive);
        }
        if (this.mDead) {
            printWriter.print(str);
            printWriter.print("mDead=");
            printWriter.println(this.mDead);
        }
        if (this.mNumActiveServices == 0 && this.mNumStartedServices == 0) {
            return;
        }
        printWriter.print(str);
        printWriter.print("mNumActiveServices=");
        printWriter.print(this.mNumActiveServices);
        printWriter.print(" mNumStartedServices=");
        printWriter.println(this.mNumStartedServices);
    }

    public void dumpPackageProcCheckin(PrintWriter printWriter, String str, int i2, int i3, String str2, long j2) {
        printWriter.print("pkgproc,");
        printWriter.print(str);
        printWriter.print(",");
        printWriter.print(i2);
        printWriter.print(",");
        printWriter.print(i3);
        printWriter.print(",");
        printWriter.print(DumpUtils.collapseString(str, str2));
        dumpAllStateCheckin(printWriter, j2);
        printWriter.println();
        if (this.mPssTable.getKeyCount() > 0) {
            printWriter.print("pkgpss,");
            printWriter.print(str);
            printWriter.print(",");
            printWriter.print(i2);
            printWriter.print(",");
            printWriter.print(i3);
            printWriter.print(",");
            printWriter.print(DumpUtils.collapseString(str, str2));
            dumpAllPssCheckin(printWriter);
            printWriter.println();
        }
        if (this.mNumExcessiveCpu > 0 || this.mNumCachedKill > 0) {
            printWriter.print("pkgkills,");
            printWriter.print(str);
            printWriter.print(",");
            printWriter.print(i2);
            printWriter.print(",");
            printWriter.print(i3);
            printWriter.print(",");
            printWriter.print(DumpUtils.collapseString(str, str2));
            printWriter.print(",");
            printWriter.print(WifiEnterpriseConfig.ENGINE_DISABLE);
            printWriter.print(",");
            printWriter.print(this.mNumExcessiveCpu);
            printWriter.print(",");
            printWriter.print(this.mNumCachedKill);
            printWriter.print(",");
            printWriter.print(this.mMinCachedKillPss);
            printWriter.print(SettingsStringUtil.DELIMITER);
            printWriter.print(this.mAvgCachedKillPss);
            printWriter.print(SettingsStringUtil.DELIMITER);
            printWriter.print(this.mMaxCachedKillPss);
            printWriter.println();
        }
    }

    public void dumpProcCheckin(PrintWriter printWriter, String str, int i2, long j2) {
        if (this.mDurations.getKeyCount() > 0) {
            printWriter.print("proc,");
            printWriter.print(str);
            printWriter.print(",");
            printWriter.print(i2);
            dumpAllStateCheckin(printWriter, j2);
            printWriter.println();
        }
        if (this.mPssTable.getKeyCount() > 0) {
            printWriter.print("pss,");
            printWriter.print(str);
            printWriter.print(",");
            printWriter.print(i2);
            dumpAllPssCheckin(printWriter);
            printWriter.println();
        }
        if (this.mNumExcessiveCpu > 0 || this.mNumCachedKill > 0) {
            printWriter.print("kills,");
            printWriter.print(str);
            printWriter.print(",");
            printWriter.print(i2);
            printWriter.print(",");
            printWriter.print(WifiEnterpriseConfig.ENGINE_DISABLE);
            printWriter.print(",");
            printWriter.print(this.mNumExcessiveCpu);
            printWriter.print(",");
            printWriter.print(this.mNumCachedKill);
            printWriter.print(",");
            printWriter.print(this.mMinCachedKillPss);
            printWriter.print(SettingsStringUtil.DELIMITER);
            printWriter.print(this.mAvgCachedKillPss);
            printWriter.print(SettingsStringUtil.DELIMITER);
            printWriter.print(this.mMaxCachedKillPss);
            printWriter.println();
        }
    }

    public void dumpProcessState(PrintWriter printWriter, String str, int[] iArr, int[] iArr2, int[] iArr3, long j2) {
        int i2;
        int i3 = 0;
        long j3 = 0;
        int i4 = -1;
        while (i3 < iArr.length) {
            int i5 = 0;
            int i6 = -1;
            while (i5 < iArr2.length) {
                int i7 = i6;
                int i8 = 0;
                while (i8 < iArr3.length) {
                    int i9 = iArr[i3];
                    int i10 = iArr2[i5];
                    int i11 = ((i9 + i10) * 14) + iArr3[i8];
                    int i12 = i3;
                    long j4 = j3;
                    long valueForId = this.mDurations.getValueForId((byte) i11);
                    String str2 = this.mCurState == i11 ? " (running)" : "";
                    if (valueForId != 0) {
                        printWriter.print(str);
                        if (iArr.length > 1) {
                            DumpUtils.printScreenLabel(printWriter, i4 != i9 ? i9 : -1);
                            i4 = i9;
                        }
                        if (iArr2.length > 1) {
                            DumpUtils.printMemLabel(printWriter, i7 != i10 ? i10 : -1, '/');
                            i7 = i10;
                        }
                        printWriter.print(DumpUtils.STATE_NAMES[iArr3[i8]]);
                        printWriter.print(": ");
                        TimeUtils.formatDuration(valueForId, printWriter);
                        printWriter.println(str2);
                        j3 = j4 + valueForId;
                    } else {
                        j3 = j4;
                    }
                    i8++;
                    i3 = i12;
                }
                i5++;
                i6 = i7;
            }
            i3++;
        }
        if (j3 != 0) {
            printWriter.print(str);
            if (iArr.length > 1) {
                i2 = -1;
                DumpUtils.printScreenLabel(printWriter, -1);
            } else {
                i2 = -1;
            }
            if (iArr2.length > 1) {
                DumpUtils.printMemLabel(printWriter, i2, '/');
            }
            printWriter.print("TOTAL  : ");
            TimeUtils.formatDuration(j3, printWriter);
            printWriter.println();
        }
    }

    public void dumpPss(PrintWriter printWriter, String str, int[] iArr, int[] iArr2, int[] iArr3) {
        int i2 = 0;
        boolean z2 = false;
        int i3 = -1;
        while (i2 < iArr.length) {
            int i4 = 0;
            int i5 = -1;
            while (i4 < iArr2.length) {
                int i6 = 0;
                while (i6 < iArr3.length) {
                    int i7 = iArr[i2];
                    int i8 = iArr2[i4];
                    int i9 = ((i7 + i8) * 14) + iArr3[i6];
                    long pssSampleCount = getPssSampleCount(i9);
                    if (pssSampleCount > 0) {
                        if (!z2) {
                            printWriter.print(str);
                            printWriter.print("PSS/USS (");
                            printWriter.print(this.mPssTable.getKeyCount());
                            printWriter.println(" entries):");
                            z2 = true;
                        }
                        printWriter.print(str);
                        printWriter.print("  ");
                        if (iArr.length > 1) {
                            DumpUtils.printScreenLabel(printWriter, i3 != i7 ? i7 : -1);
                            i3 = i7;
                        }
                        if (iArr2.length > 1) {
                            DumpUtils.printMemLabel(printWriter, i5 != i8 ? i8 : -1, '/');
                            i5 = i8;
                        }
                        printWriter.print(DumpUtils.STATE_NAMES[iArr3[i6]]);
                        printWriter.print(": ");
                        printWriter.print(pssSampleCount);
                        printWriter.print(" samples ");
                        DebugUtils.printSizeValue(printWriter, getPssMinimum(i9) * 1024);
                        printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        DebugUtils.printSizeValue(printWriter, getPssAverage(i9) * 1024);
                        printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        DebugUtils.printSizeValue(printWriter, getPssMaximum(i9) * 1024);
                        printWriter.print(" / ");
                        DebugUtils.printSizeValue(printWriter, getPssUssMinimum(i9) * 1024);
                        printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        DebugUtils.printSizeValue(printWriter, getPssUssAverage(i9) * 1024);
                        printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        DebugUtils.printSizeValue(printWriter, getPssUssMaximum(i9) * 1024);
                        printWriter.println();
                    }
                    i6++;
                    iArr = iArr;
                    i2 = i2;
                }
                i4++;
                iArr = iArr;
            }
            i2++;
        }
        if (this.mNumExcessiveCpu != 0) {
            printWriter.print(str);
            printWriter.print("Killed for excessive CPU use: ");
            printWriter.print(this.mNumExcessiveCpu);
            printWriter.println(" times");
        }
        if (this.mNumCachedKill != 0) {
            printWriter.print(str);
            printWriter.print("Killed from cached state: ");
            printWriter.print(this.mNumCachedKill);
            printWriter.print(" times from pss ");
            DebugUtils.printSizeValue(printWriter, this.mMinCachedKillPss * 1024);
            printWriter.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            DebugUtils.printSizeValue(printWriter, this.mAvgCachedKillPss * 1024);
            printWriter.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            DebugUtils.printSizeValue(printWriter, this.mMaxCachedKillPss * 1024);
            printWriter.println();
        }
    }

    public void dumpSummary(PrintWriter printWriter, String str, int[] iArr, int[] iArr2, int[] iArr3, long j2, long j3) {
        printWriter.print(str);
        printWriter.print("* ");
        printWriter.print(this.mName);
        printWriter.print(" / ");
        UserHandle.formatUid(printWriter, this.mUid);
        printWriter.print(" / v");
        printWriter.print(this.mVersion);
        printWriter.println(SettingsStringUtil.DELIMITER);
        dumpProcessSummaryDetails(printWriter, str, "         TOTAL: ", iArr, iArr2, iArr3, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "    Persistent: ", iArr, iArr2, new int[]{0}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "           Top: ", iArr, iArr2, new int[]{1}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "        Imp Fg: ", iArr, iArr2, new int[]{2}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "        Imp Bg: ", iArr, iArr2, new int[]{3}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "        Backup: ", iArr, iArr2, new int[]{4}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "     Heavy Wgt: ", iArr, iArr2, new int[]{5}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "       Service: ", iArr, iArr2, new int[]{6}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "    Service Rs: ", iArr, iArr2, new int[]{7}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "      Receiver: ", iArr, iArr2, new int[]{8}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "        (Home): ", iArr, iArr2, new int[]{9}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "    (Last Act): ", iArr, iArr2, new int[]{10}, j2, j3, true);
        dumpProcessSummaryDetails(printWriter, str, "      (Cached): ", iArr, iArr2, new int[]{11, 12, 13}, j2, j3, true);
    }

    public ProcessState getCommonProcess() {
        return this.mCommonProcess;
    }

    public long getDuration(int i2, long j2) {
        long valueForId = this.mDurations.getValueForId((byte) i2);
        return this.mCurState == i2 ? valueForId + (j2 - this.mStartTime) : valueForId;
    }

    public int getDurationsBucketCount() {
        return this.mDurations.getKeyCount();
    }

    public String getName() {
        return this.mName;
    }

    public String getPackage() {
        return this.mPackage;
    }

    public long getPssAverage(int i2) {
        return this.mPssTable.getValueForId((byte) i2, 2);
    }

    public long getPssMaximum(int i2) {
        return this.mPssTable.getValueForId((byte) i2, 3);
    }

    public long getPssMinimum(int i2) {
        return this.mPssTable.getValueForId((byte) i2, 1);
    }

    public long getPssSampleCount(int i2) {
        return this.mPssTable.getValueForId((byte) i2, 0);
    }

    public long getPssUssAverage(int i2) {
        return this.mPssTable.getValueForId((byte) i2, 5);
    }

    public long getPssUssMaximum(int i2) {
        return this.mPssTable.getValueForId((byte) i2, 6);
    }

    public long getPssUssMinimum(int i2) {
        return this.mPssTable.getValueForId((byte) i2, 4);
    }

    public int getUid() {
        return this.mUid;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public boolean hasAnyData() {
        return (this.mDurations.getKeyCount() == 0 && this.mCurState == -1 && this.mPssTable.getKeyCount() == 0) ? false : true;
    }

    public void incActiveServices(String str) {
        ProcessState processState = this.mCommonProcess;
        if (processState != this) {
            processState.incActiveServices(str);
        }
        this.mNumActiveServices++;
    }

    public void incStartedServices(int i2, long j2, String str) {
        ProcessState processState = this.mCommonProcess;
        if (processState != this) {
            processState.incStartedServices(i2, j2, str);
        }
        int i3 = this.mNumStartedServices + 1;
        this.mNumStartedServices = i3;
        if (i3 == 1 && this.mCurState == -1) {
            setState((i2 * 14) + 7, j2);
        }
    }

    public boolean isActive() {
        return this.mActive;
    }

    public boolean isInUse() {
        return this.mActive || this.mNumActiveServices > 0 || this.mNumStartedServices > 0 || this.mCurState != -1;
    }

    public boolean isMultiPackage() {
        return this.mMultiPackage;
    }

    public void makeActive() {
        ensureNotDead();
        this.mActive = true;
    }

    public void makeDead() {
        this.mDead = true;
    }

    public void makeInactive() {
        this.mActive = false;
    }

    public void makeStandalone() {
        this.mCommonProcess = this;
    }

    public ProcessState pullFixedProc(String str) {
        if (!this.mMultiPackage) {
            return this;
        }
        SparseArray<ProcessStats.PackageState> sparseArray = this.mStats.mPackages.get(str, this.mUid);
        if (sparseArray == null) {
            StringBuilder sbV = c.v("Didn't find package ", str, " / ");
            sbV.append(this.mUid);
            throw new IllegalStateException(sbV.toString());
        }
        ProcessStats.PackageState packageState = sparseArray.get(this.mVersion);
        if (packageState == null) {
            StringBuilder sbV2 = c.v("Didn't find package ", str, " / ");
            sbV2.append(this.mUid);
            sbV2.append(" vers ");
            sbV2.append(this.mVersion);
            throw new IllegalStateException(sbV2.toString());
        }
        ProcessState processState = packageState.mProcesses.get(this.mName);
        if (processState != null) {
            return processState;
        }
        throw new IllegalStateException("Didn't create per-package process " + this.mName + " in pkg " + str + " / " + this.mUid + " vers " + this.mVersion);
    }

    public boolean readFromParcel(Parcel parcel, boolean z2) {
        boolean z3 = parcel.readInt() != 0;
        if (z2) {
            this.mMultiPackage = z3;
        }
        if (!this.mDurations.readFromParcel(parcel) || !this.mPssTable.readFromParcel(parcel)) {
            return false;
        }
        parcel.readInt();
        this.mNumExcessiveCpu = parcel.readInt();
        int i2 = parcel.readInt();
        this.mNumCachedKill = i2;
        if (i2 > 0) {
            this.mMinCachedKillPss = parcel.readLong();
            this.mAvgCachedKillPss = parcel.readLong();
            this.mMaxCachedKillPss = parcel.readLong();
        } else {
            this.mMaxCachedKillPss = 0L;
            this.mAvgCachedKillPss = 0L;
            this.mMinCachedKillPss = 0L;
        }
        return true;
    }

    public void reportCachedKill(ArrayMap<String, ProcessStats.ProcessStateHolder> arrayMap, long j2) {
        ensureNotDead();
        this.mCommonProcess.addCachedKill(1, j2, j2, j2);
        if (this.mCommonProcess.mMultiPackage) {
            for (int size = arrayMap.size() - 1; size >= 0; size--) {
                pullFixedProc(arrayMap, size).addCachedKill(1, j2, j2, j2);
            }
        }
    }

    public void reportExcessiveCpu(ArrayMap<String, ProcessStats.ProcessStateHolder> arrayMap) {
        ensureNotDead();
        ProcessState processState = this.mCommonProcess;
        processState.mNumExcessiveCpu++;
        if (processState.mMultiPackage) {
            for (int size = arrayMap.size() - 1; size >= 0; size--) {
                pullFixedProc(arrayMap, size).mNumExcessiveCpu++;
            }
        }
    }

    public void resetSafely(long j2) {
        this.mDurations.resetTable();
        this.mPssTable.resetTable();
        this.mStartTime = j2;
        this.mLastPssState = -1;
        this.mLastPssTime = 0L;
        this.mNumExcessiveCpu = 0;
        this.mNumCachedKill = 0;
        this.mMaxCachedKillPss = 0L;
        this.mAvgCachedKillPss = 0L;
        this.mMinCachedKillPss = 0L;
    }

    public void setMultiPackage(boolean z2) {
        this.mMultiPackage = z2;
    }

    public void setState(int i2, int i3, long j2, ArrayMap<String, ProcessStats.ProcessStateHolder> arrayMap) {
        int i4 = i2 < 0 ? this.mNumStartedServices > 0 ? (i3 * 14) + 7 : -1 : (i3 * 14) + PROCESS_STATE_TO_STATE[i2];
        this.mCommonProcess.setState(i4, j2);
        if (this.mCommonProcess.mMultiPackage && arrayMap != null) {
            for (int size = arrayMap.size() - 1; size >= 0; size--) {
                pullFixedProc(arrayMap, size).setState(i4, j2);
            }
        }
    }

    public String toString() {
        StringBuilder sbQ = c.q(128, "ProcessState{");
        sbQ.append(Integer.toHexString(System.identityHashCode(this)));
        sbQ.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sbQ.append(this.mName);
        sbQ.append("/");
        sbQ.append(this.mUid);
        sbQ.append(" pkg=");
        sbQ.append(this.mPackage);
        if (this.mMultiPackage) {
            sbQ.append(" (multi)");
        }
        if (this.mCommonProcess != this) {
            sbQ.append(" (sub)");
        }
        sbQ.append("}");
        return sbQ.toString();
    }

    public void writeToParcel(Parcel parcel, long j2) {
        parcel.writeInt(this.mMultiPackage ? 1 : 0);
        this.mDurations.writeToParcel(parcel);
        this.mPssTable.writeToParcel(parcel);
        parcel.writeInt(0);
        parcel.writeInt(this.mNumExcessiveCpu);
        parcel.writeInt(this.mNumCachedKill);
        if (this.mNumCachedKill > 0) {
            parcel.writeLong(this.mMinCachedKillPss);
            parcel.writeLong(this.mAvgCachedKillPss);
            parcel.writeLong(this.mMaxCachedKillPss);
        }
    }

    public void setState(int i2, long j2) {
        ensureNotDead();
        if (this.mDead || this.mCurState == i2) {
            return;
        }
        commitStateTime(j2);
        this.mCurState = i2;
    }

    public ProcessState(ProcessState processState, String str, int i2, int i3, String str2, long j2) {
        this.mCurState = -1;
        this.mLastPssState = -1;
        this.mStats = processState.mStats;
        this.mName = str2;
        this.mCommonProcess = processState;
        this.mPackage = str;
        this.mUid = i2;
        this.mVersion = i3;
        this.mCurState = processState.mCurState;
        this.mStartTime = j2;
        this.mDurations = new DurationsTable(processState.mStats.mTableData);
        this.mPssTable = new PssTable(processState.mStats.mTableData);
    }

    private ProcessState pullFixedProc(ArrayMap<String, ProcessStats.ProcessStateHolder> arrayMap, int i2) {
        ProcessStats.ProcessStateHolder processStateHolderValueAt = arrayMap.valueAt(i2);
        ProcessState processStateLocked = processStateHolderValueAt.state;
        if (this.mDead && processStateLocked.mCommonProcess != processStateLocked) {
            Log.wtf("ProcessStats", "Pulling dead proc: name=" + this.mName + " pkg=" + this.mPackage + " uid=" + this.mUid + " common.name=" + this.mCommonProcess.mName);
            processStateLocked = this.mStats.getProcessStateLocked(processStateLocked.mPackage, processStateLocked.mUid, processStateLocked.mVersion, processStateLocked.mName);
        }
        if (processStateLocked.mMultiPackage) {
            SparseArray<ProcessStats.PackageState> sparseArray = this.mStats.mPackages.get(arrayMap.keyAt(i2), processStateLocked.mUid);
            if (sparseArray != null) {
                ProcessStats.PackageState packageState = sparseArray.get(processStateLocked.mVersion);
                if (packageState != null) {
                    String str = processStateLocked.mName;
                    processStateLocked = packageState.mProcesses.get(str);
                    if (processStateLocked != null) {
                        processStateHolderValueAt.state = processStateLocked;
                    } else {
                        StringBuilder sbV = c.v("Didn't create per-package process ", str, " in pkg ");
                        sbV.append(packageState.mPackageName);
                        sbV.append("/");
                        sbV.append(packageState.mUid);
                        throw new IllegalStateException(sbV.toString());
                    }
                } else {
                    throw new IllegalStateException("No existing package " + arrayMap.keyAt(i2) + "/" + processStateLocked.mUid + " for multi-proc " + processStateLocked.mName + " version " + processStateLocked.mVersion);
                }
            } else {
                throw new IllegalStateException("No existing package " + arrayMap.keyAt(i2) + "/" + processStateLocked.mUid + " for multi-proc " + processStateLocked.mName);
            }
        }
        return processStateLocked;
    }
}
