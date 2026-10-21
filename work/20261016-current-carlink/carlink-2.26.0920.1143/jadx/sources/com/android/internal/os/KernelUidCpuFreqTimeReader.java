package com.android.internal.os;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.SystemClock;
import android.util.Slog;
import android.util.SparseArray;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class KernelUidCpuFreqTimeReader {
    private static final boolean DEBUG = false;
    private static final String TAG = "KernelUidCpuFreqTimeReader";
    private static final int TOTAL_READ_ERROR_COUNT = 5;
    private static final String UID_TIMES_PROC_FILE = "/proc/uid_time_in_state";
    private long[] mCpuFreqs;
    private int mCpuFreqsCount;
    private long mLastTimeReadMs;
    private SparseArray<long[]> mLastUidCpuFreqTimeMs = new SparseArray<>();
    private long mNowTimeMs;
    private boolean mProcFileAvailable;
    private int mReadErrorCounter;

    public interface Callback {
        void onCpuFreqs(long[] jArr);

        void onUidCpuFreqTime(int i2, long[] jArr);
    }

    private void readCpuFreqs(String str, Callback callback) {
        if (this.mCpuFreqs == null) {
            String[] strArrSplit = str.split(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            int length = strArrSplit.length - 1;
            this.mCpuFreqsCount = length;
            this.mCpuFreqs = new long[length];
            int i2 = 0;
            while (i2 < this.mCpuFreqsCount) {
                int i3 = i2 + 1;
                this.mCpuFreqs[i2] = Long.parseLong(strArrSplit[i3], 10);
                i2 = i3;
            }
        }
        if (callback != null) {
            callback.onCpuFreqs(this.mCpuFreqs);
        }
    }

    private void readTimesForUid(int i2, String str, Callback callback) {
        long[] jArr = this.mLastUidCpuFreqTimeMs.get(i2);
        if (jArr == null) {
            jArr = new long[this.mCpuFreqsCount];
            this.mLastUidCpuFreqTimeMs.put(i2, jArr);
        }
        String[] strArrSplit = str.split(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        int length = strArrSplit.length;
        if (length != jArr.length) {
            StringBuilder sbS = c.s("No. of readings don't match cpu freqs, readings: ", length, " cpuFreqsCount: ");
            sbS.append(jArr.length);
            Slog.e(TAG, sbS.toString());
            return;
        }
        long[] jArr2 = new long[length];
        long[] jArr3 = new long[length];
        boolean z2 = false;
        for (int i3 = 0; i3 < length; i3++) {
            long j2 = Long.parseLong(strArrSplit[i3], 10) * 10;
            long j3 = j2 - jArr[i3];
            jArr2[i3] = j3;
            if (j3 < 0 || j2 < 0) {
                return;
            }
            jArr3[i3] = j2;
            z2 = z2 || jArr2[i3] > 0;
        }
        if (z2) {
            System.arraycopy(jArr3, 0, jArr, 0, length);
            if (callback != null) {
                callback.onUidCpuFreqTime(i2, jArr2);
            }
        }
    }

    public void readDelta(Callback callback) {
        if (this.mProcFileAvailable || this.mReadErrorCounter < 5) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(UID_TIMES_PROC_FILE));
                try {
                    this.mNowTimeMs = SystemClock.elapsedRealtime();
                    readDelta(bufferedReader, callback);
                    this.mLastTimeReadMs = this.mNowTimeMs;
                    this.mProcFileAvailable = true;
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
                this.mReadErrorCounter++;
                Slog.e(TAG, "Failed to read /proc/uid_time_in_state: " + e2);
            }
        }
    }

    public void removeUid(int i2) {
        this.mLastUidCpuFreqTimeMs.delete(i2);
    }

    public void removeUidsInRange(int i2, int i3) {
        if (i3 < i2) {
            return;
        }
        this.mLastUidCpuFreqTimeMs.put(i2, null);
        this.mLastUidCpuFreqTimeMs.put(i3, null);
        int iIndexOfKey = this.mLastUidCpuFreqTimeMs.indexOfKey(i2);
        this.mLastUidCpuFreqTimeMs.removeAtRange(iIndexOfKey, (this.mLastUidCpuFreqTimeMs.indexOfKey(i3) - iIndexOfKey) + 1);
    }

    public void readDelta(BufferedReader bufferedReader, Callback callback) throws IOException {
        String line = bufferedReader.readLine();
        if (line == null) {
            return;
        }
        readCpuFreqs(line, callback);
        while (true) {
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                return;
            }
            int iIndexOf = line2.indexOf(32);
            readTimesForUid(Integer.parseInt(line2.substring(0, iIndexOf - 1), 10), line2.substring(iIndexOf + 1, line2.length()), callback);
        }
    }
}
