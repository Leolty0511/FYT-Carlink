package com.android.internal.app.procstats;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.SystemClock;
import android.provider.SettingsStringUtil;
import android.util.Slog;
import android.util.TimeUtils;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class ServiceState {
    private static final boolean DEBUG = false;
    public static final int SERVICE_BOUND = 2;
    public static final int SERVICE_COUNT = 4;
    public static final int SERVICE_EXEC = 3;
    public static final int SERVICE_RUN = 0;
    public static final int SERVICE_STARTED = 1;
    private static final String TAG = "ProcessStats";
    private int mBoundCount;
    private long mBoundStartTime;
    private final DurationsTable mDurations;
    private int mExecCount;
    private long mExecStartTime;
    private final String mName;
    private Object mOwner;
    private final String mPackage;
    private ProcessState mProc;
    private final String mProcessName;
    private boolean mRestarting;
    private int mRunCount;
    private long mRunStartTime;
    private boolean mStarted;
    private int mStartedCount;
    private long mStartedStartTime;
    private int mRunState = -1;
    private int mStartedState = -1;
    private int mBoundState = -1;
    private int mExecState = -1;

    public ServiceState(ProcessStats processStats, String str, String str2, String str3, ProcessState processState) {
        this.mPackage = str;
        this.mName = str2;
        this.mProcessName = str3;
        this.mProc = processState;
        this.mDurations = new DurationsTable(processStats.mTableData);
    }

    private void dumpTimeCheckin(PrintWriter printWriter, String str, String str2, int i2, int i3, String str3, int i4, int i5, int i6, long j2, long j3) {
        if (i5 <= 0) {
            return;
        }
        printWriter.print(str);
        printWriter.print(",");
        printWriter.print(str2);
        printWriter.print(",");
        printWriter.print(i2);
        printWriter.print(",");
        printWriter.print(i3);
        printWriter.print(",");
        printWriter.print(str3);
        printWriter.print(",");
        printWriter.print(i5);
        int keyCount = this.mDurations.getKeyCount();
        boolean z2 = false;
        for (int i7 = 0; i7 < keyCount; i7++) {
            int keyAt = this.mDurations.getKeyAt(i7);
            long value = this.mDurations.getValue(keyAt);
            byte idFromKey = SparseMappingTable.getIdFromKey(keyAt);
            int i8 = idFromKey / 4;
            if (idFromKey % 4 == i4) {
                if (i6 == i8) {
                    value += j3 - j2;
                    z2 = true;
                }
                DumpUtils.printAdjTagAndValue(printWriter, i8, value);
            }
        }
        if (!z2 && i6 != -1) {
            DumpUtils.printAdjTagAndValue(printWriter, i6, j3 - j2);
        }
        printWriter.println();
    }

    private void updateRunning(int i2, long j2) {
        if (this.mStartedState == -1 && this.mBoundState == -1 && this.mExecState == -1) {
            i2 = -1;
        }
        int i3 = this.mRunState;
        if (i3 != i2) {
            if (i3 != -1) {
                this.mDurations.addDuration((i3 * 4) + 0, j2 - this.mRunStartTime);
            } else if (i2 != -1) {
                this.mRunCount++;
            }
            this.mRunState = i2;
            this.mRunStartTime = j2;
        }
    }

    public void add(ServiceState serviceState) {
        this.mDurations.addDurations(serviceState.mDurations);
        this.mRunCount += serviceState.mRunCount;
        this.mStartedCount += serviceState.mStartedCount;
        this.mBoundCount += serviceState.mBoundCount;
        this.mExecCount += serviceState.mExecCount;
    }

    public void applyNewOwner(Object obj) {
        Object obj2 = this.mOwner;
        if (obj2 != obj) {
            if (obj2 == null) {
                this.mOwner = obj;
                this.mProc.incActiveServices(this.mName);
                return;
            }
            this.mOwner = obj;
            if (!this.mStarted && this.mBoundState == -1 && this.mExecState == -1) {
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (this.mStarted) {
                setStarted(false, 0, jUptimeMillis);
            }
            if (this.mBoundState != -1) {
                setBound(false, 0, jUptimeMillis);
            }
            if (this.mExecState != -1) {
                setExecuting(false, 0, jUptimeMillis);
            }
        }
    }

    public void clearCurrentOwner(Object obj, boolean z2) {
        if (this.mOwner == obj) {
            this.mProc.decActiveServices(this.mName);
            if (this.mStarted || this.mBoundState != -1 || this.mExecState != -1) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (this.mStarted) {
                    if (!z2) {
                        Slog.wtfStack("ProcessStats", "Service owner " + obj + " cleared while started: pkg=" + this.mPackage + " service=" + this.mName + " proc=" + this.mProc);
                    }
                    setStarted(false, 0, jUptimeMillis);
                }
                if (this.mBoundState != -1) {
                    if (!z2) {
                        Slog.wtfStack("ProcessStats", "Service owner " + obj + " cleared while bound: pkg=" + this.mPackage + " service=" + this.mName + " proc=" + this.mProc);
                    }
                    setBound(false, 0, jUptimeMillis);
                }
                if (this.mExecState != -1) {
                    if (!z2) {
                        Slog.wtfStack("ProcessStats", "Service owner " + obj + " cleared while exec: pkg=" + this.mPackage + " service=" + this.mName + " proc=" + this.mProc);
                    }
                    setExecuting(false, 0, jUptimeMillis);
                }
            }
            this.mOwner = null;
        }
    }

    public void commitStateTime(long j2) {
        int i2 = this.mRunState;
        if (i2 != -1) {
            this.mDurations.addDuration((i2 * 4) + 0, j2 - this.mRunStartTime);
            this.mRunStartTime = j2;
        }
        int i3 = this.mStartedState;
        if (i3 != -1) {
            this.mDurations.addDuration((i3 * 4) + 1, j2 - this.mStartedStartTime);
            this.mStartedStartTime = j2;
        }
        int i4 = this.mBoundState;
        if (i4 != -1) {
            this.mDurations.addDuration((i4 * 4) + 2, j2 - this.mBoundStartTime);
            this.mBoundStartTime = j2;
        }
        int i5 = this.mExecState;
        if (i5 != -1) {
            this.mDurations.addDuration((i5 * 4) + 3, j2 - this.mExecStartTime);
            this.mExecStartTime = j2;
        }
    }

    public void dumpStats(PrintWriter printWriter, String str, String str2, String str3, long j2, long j3, boolean z2, boolean z3) {
        PrintWriter printWriter2;
        dumpStats(printWriter, str, str2, str3, "Running", this.mRunCount, 0, this.mRunState, this.mRunStartTime, j2, j3, !z2 || z3);
        dumpStats(printWriter, str, str2, str3, "Started", this.mStartedCount, 1, this.mStartedState, this.mStartedStartTime, j2, j3, !z2 || z3);
        dumpStats(printWriter, str, str2, str3, "Bound", this.mBoundCount, 2, this.mBoundState, this.mBoundStartTime, j2, j3, !z2 || z3);
        dumpStats(printWriter, str, str2, str3, "Executing", this.mExecCount, 3, this.mExecState, this.mExecStartTime, j2, j3, !z2 || z3);
        if (z3) {
            if (this.mOwner != null) {
                printWriter2 = printWriter;
                printWriter2.print("        mOwner=");
                printWriter2.println(this.mOwner);
            } else {
                printWriter2 = printWriter;
            }
            if (this.mStarted || this.mRestarting) {
                printWriter2.print("        mStarted=");
                printWriter2.print(this.mStarted);
                printWriter2.print(" mRestarting=");
                printWriter2.println(this.mRestarting);
            }
        }
    }

    public long dumpTime(PrintWriter printWriter, String str, int i2, int i3, long j2, long j3) {
        long j4 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i5 < 8) {
            int i6 = -1;
            int i7 = 0;
            while (i7 < 4) {
                int i8 = i7 + i5;
                long duration = getDuration(i2, i3, j2, i8, j3);
                String str2 = (i3 != i8 || printWriter == null) ? "" : " (running)";
                if (duration != 0) {
                    if (printWriter != null) {
                        printWriter.print(str);
                        DumpUtils.printScreenLabel(printWriter, i4 != i5 ? i5 : -1);
                        DumpUtils.printMemLabel(printWriter, i6 != i7 ? i7 : -1, (char) 0);
                        printWriter.print(": ");
                        TimeUtils.formatDuration(duration, printWriter);
                        printWriter.println(str2);
                        i4 = i5;
                        i6 = i7;
                    }
                    j4 += duration;
                }
                i7++;
            }
            i5 += 4;
        }
        if (j4 != 0 && printWriter != null) {
            printWriter.print(str);
            printWriter.print("    TOTAL: ");
            TimeUtils.formatDuration(j4, printWriter);
            printWriter.println();
        }
        return j4;
    }

    public void dumpTimesCheckin(PrintWriter printWriter, String str, int i2, int i3, String str2, long j2) {
        dumpTimeCheckin(printWriter, "pkgsvc-run", str, i2, i3, str2, 0, this.mRunCount, this.mRunState, this.mRunStartTime, j2);
        dumpTimeCheckin(printWriter, "pkgsvc-start", str, i2, i3, str2, 1, this.mStartedCount, this.mStartedState, this.mStartedStartTime, j2);
        dumpTimeCheckin(printWriter, "pkgsvc-bound", str, i2, i3, str2, 2, this.mBoundCount, this.mBoundState, this.mBoundStartTime, j2);
        dumpTimeCheckin(printWriter, "pkgsvc-exec", str, i2, i3, str2, 3, this.mExecCount, this.mExecState, this.mExecStartTime, j2);
    }

    public long getDuration(int i2, int i3, long j2, int i4, long j3) {
        long valueForId = this.mDurations.getValueForId((byte) ((i4 * 4) + i2));
        return i3 == i4 ? valueForId + (j3 - j2) : valueForId;
    }

    public String getName() {
        return this.mName;
    }

    public String getPackage() {
        return this.mPackage;
    }

    public ProcessState getProcess() {
        return this.mProc;
    }

    public String getProcessName() {
        return this.mProcessName;
    }

    public boolean isInUse() {
        return this.mOwner != null || this.mRestarting;
    }

    public boolean isRestarting() {
        return this.mRestarting;
    }

    public boolean readFromParcel(Parcel parcel) {
        if (!this.mDurations.readFromParcel(parcel)) {
            return false;
        }
        this.mRunCount = parcel.readInt();
        this.mStartedCount = parcel.readInt();
        this.mBoundCount = parcel.readInt();
        this.mExecCount = parcel.readInt();
        return true;
    }

    public void resetSafely(long j2) {
        this.mDurations.resetTable();
        this.mRunCount = this.mRunState != -1 ? 1 : 0;
        this.mStartedCount = this.mStartedState != -1 ? 1 : 0;
        this.mBoundCount = this.mBoundState != -1 ? 1 : 0;
        this.mExecCount = this.mExecState == -1 ? 0 : 1;
        this.mExecStartTime = j2;
        this.mBoundStartTime = j2;
        this.mStartedStartTime = j2;
        this.mRunStartTime = j2;
    }

    public void setBound(boolean z2, int i2, long j2) {
        if (this.mOwner == null) {
            Slog.wtf("ProcessStats", "Binding service " + this + " without owner");
        }
        int i3 = z2 ? i2 : -1;
        int i4 = this.mBoundState;
        if (i4 != i3) {
            if (i4 != -1) {
                this.mDurations.addDuration((i4 * 4) + 2, j2 - this.mBoundStartTime);
            } else if (z2) {
                this.mBoundCount++;
            }
            this.mBoundState = i3;
            this.mBoundStartTime = j2;
            updateRunning(i2, j2);
        }
    }

    public void setExecuting(boolean z2, int i2, long j2) {
        if (this.mOwner == null) {
            Slog.wtf("ProcessStats", "Executing service " + this + " without owner");
        }
        int i3 = z2 ? i2 : -1;
        int i4 = this.mExecState;
        if (i4 != i3) {
            if (i4 != -1) {
                this.mDurations.addDuration((i4 * 4) + 3, j2 - this.mExecStartTime);
            } else if (z2) {
                this.mExecCount++;
            }
            this.mExecState = i3;
            this.mExecStartTime = j2;
            updateRunning(i2, j2);
        }
    }

    public void setMemFactor(int i2, long j2) {
        if (isRestarting()) {
            setRestarting(true, i2, j2);
            return;
        }
        if (isInUse()) {
            if (this.mStartedState != -1) {
                setStarted(true, i2, j2);
            }
            if (this.mBoundState != -1) {
                setBound(true, i2, j2);
            }
            if (this.mExecState != -1) {
                setExecuting(true, i2, j2);
            }
        }
    }

    public void setProcess(ProcessState processState) {
        this.mProc = processState;
    }

    public void setRestarting(boolean z2, int i2, long j2) {
        this.mRestarting = z2;
        updateStartedState(i2, j2);
    }

    public void setStarted(boolean z2, int i2, long j2) {
        if (this.mOwner == null) {
            Slog.wtf("ProcessStats", "Starting service " + this + " without owner");
        }
        this.mStarted = z2;
        updateStartedState(i2, j2);
    }

    public String toString() {
        return "ServiceState{" + Integer.toHexString(System.identityHashCode(this)) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.mName + " pkg=" + this.mPackage + " proc=" + Integer.toHexString(System.identityHashCode(this)) + "}";
    }

    public void updateStartedState(int i2, long j2) {
        int i3 = this.mStartedState;
        boolean z2 = i3 != -1;
        boolean z3 = this.mStarted || this.mRestarting;
        int i4 = z3 ? i2 : -1;
        if (i3 != i4) {
            if (i3 != -1) {
                this.mDurations.addDuration((i3 * 4) + 1, j2 - this.mStartedStartTime);
            } else if (z3) {
                this.mStartedCount++;
            }
            this.mStartedState = i4;
            this.mStartedStartTime = j2;
            ProcessState processStatePullFixedProc = this.mProc.pullFixedProc(this.mPackage);
            this.mProc = processStatePullFixedProc;
            if (z2 != z3) {
                if (z3) {
                    processStatePullFixedProc.incStartedServices(i2, j2, this.mName);
                } else {
                    processStatePullFixedProc.decStartedServices(i2, j2, this.mName);
                }
            }
            updateRunning(i2, j2);
        }
    }

    public void writeToParcel(Parcel parcel, long j2) {
        this.mDurations.writeToParcel(parcel);
        parcel.writeInt(this.mRunCount);
        parcel.writeInt(this.mStartedCount);
        parcel.writeInt(this.mBoundCount);
        parcel.writeInt(this.mExecCount);
    }

    private void dumpStats(PrintWriter printWriter, String str, String str2, String str3, String str4, int i2, int i3, int i4, long j2, long j3, long j4, boolean z2) {
        if (i2 != 0) {
            if (z2) {
                printWriter.print(str);
                printWriter.print(str4);
                printWriter.print(" op count ");
                printWriter.print(i2);
                printWriter.println(SettingsStringUtil.DELIMITER);
                dumpTime(printWriter, str2, i3, i4, j2, j3);
                return;
            }
            long jDumpTime = dumpTime(null, null, i3, i4, j2, j3);
            printWriter.print(str);
            printWriter.print(str3);
            printWriter.print(str4);
            printWriter.print(" count ");
            printWriter.print(i2);
            printWriter.print(" / time ");
            DumpUtils.printPercent(printWriter, jDumpTime / j4);
            printWriter.println();
        }
    }
}
