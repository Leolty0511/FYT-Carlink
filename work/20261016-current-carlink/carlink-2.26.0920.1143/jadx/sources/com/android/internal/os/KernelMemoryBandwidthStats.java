package com.android.internal.os;

import android.os.StrictMode;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.LongSparseLongArray;
import android.util.Slog;
import android.util.TimeUtils;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class KernelMemoryBandwidthStats {
    private static final boolean DEBUG = false;
    private static final String TAG = "KernelMemoryBandwidthStats";
    private static final String mSysfsFile = "/sys/kernel/memory_state_time/show_stat";
    protected final LongSparseLongArray mBandwidthEntries = new LongSparseLongArray();
    private boolean mStatsDoNotExist = false;

    public LongSparseLongArray getBandwidthEntries() {
        return this.mBandwidthEntries;
    }

    public void parseStats(BufferedReader bufferedReader) throws IOException {
        TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(' ');
        this.mBandwidthEntries.clear();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return;
            }
            simpleStringSplitter.setString(line);
            simpleStringSplitter.next();
            int i2 = 0;
            do {
                long j2 = i2;
                int iIndexOfKey = this.mBandwidthEntries.indexOfKey(j2);
                if (iIndexOfKey >= 0) {
                    LongSparseLongArray longSparseLongArray = this.mBandwidthEntries;
                    longSparseLongArray.put(j2, (Long.parseLong(simpleStringSplitter.next()) / TimeUtils.NANOS_PER_MS) + longSparseLongArray.valueAt(iIndexOfKey));
                } else {
                    this.mBandwidthEntries.put(j2, Long.parseLong(simpleStringSplitter.next()) / TimeUtils.NANOS_PER_MS);
                }
                i2++;
            } while (simpleStringSplitter.hasNext());
        }
    }

    public void updateStats() {
        if (this.mStatsDoNotExist) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(mSysfsFile));
                    try {
                        parseStats(bufferedReader);
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
                } catch (Throwable th4) {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    throw th4;
                }
            } catch (IOException e2) {
                Slog.e(TAG, "Failed to read memory bandwidth: " + e2.getMessage());
                this.mBandwidthEntries.clear();
            }
        } catch (FileNotFoundException unused) {
            Slog.w(TAG, "No kernel memory bandwidth stats available");
            this.mBandwidthEntries.clear();
            this.mStatsDoNotExist = true;
        }
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
        if (jUptimeMillis2 > 100) {
            Slog.w(TAG, "Reading memory bandwidth file took " + jUptimeMillis2 + "ms");
        }
    }
}
