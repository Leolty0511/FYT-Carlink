package com.android.internal.os;

import android.os.StrictMode;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Slog;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import libcore.io.Libcore;

/* JADX INFO: loaded from: classes2.dex */
public class KernelCpuSpeedReader {
    private static final String TAG = "KernelCpuSpeedReader";
    private final long[] mDeltaSpeedTimesMs;
    private final long mJiffyMillis = 1000 / Libcore.os.sysconf(OsConstants._SC_CLK_TCK);
    private final long[] mLastSpeedTimesMs;
    private final String mProcFile;

    public KernelCpuSpeedReader(int i2, int i3) {
        this.mProcFile = String.format("/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state", Integer.valueOf(i2));
        this.mLastSpeedTimesMs = new long[i3];
        this.mDeltaSpeedTimesMs = new long[i3];
    }

    public long[] readDelta() {
        String line;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.mProcFile));
                try {
                    TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(' ');
                    for (int i2 = 0; i2 < this.mLastSpeedTimesMs.length && (line = bufferedReader.readLine()) != null; i2++) {
                        simpleStringSplitter.setString(line);
                        simpleStringSplitter.next();
                        long j2 = Long.parseLong(simpleStringSplitter.next()) * this.mJiffyMillis;
                        long[] jArr = this.mLastSpeedTimesMs;
                        long j3 = jArr[i2];
                        if (j2 < j3) {
                            this.mDeltaSpeedTimesMs[i2] = j2;
                        } else {
                            this.mDeltaSpeedTimesMs[i2] = j2 - j3;
                        }
                        jArr[i2] = j2;
                    }
                    bufferedReader.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e2) {
                Slog.e(TAG, "Failed to read cpu-freq: " + e2.getMessage());
                Arrays.fill(this.mDeltaSpeedTimesMs, 0L);
            }
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            return this.mDeltaSpeedTimesMs;
        } catch (Throwable th4) {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            throw th4;
        }
    }
}
