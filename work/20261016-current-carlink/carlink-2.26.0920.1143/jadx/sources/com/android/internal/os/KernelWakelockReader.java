package com.android.internal.os;

import android.mtp.MtpConstants;
import android.os.Process;
import android.os.SystemClock;
import android.util.Slog;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class KernelWakelockReader {
    private static final String TAG = "KernelWakelockReader";
    private static int sKernelWakelockUpdateVersion = 0;
    private static final String sWakelockFile = "/proc/wakelocks";
    private static final String sWakeupSourceFile = "/d/wakeup_sources";
    private static final int[] PROC_WAKELOCKS_FORMAT = {5129, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE, 9, 9, 9, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE};
    private static final int[] WAKEUP_SOURCES_FORMAT = {MtpConstants.OPERATION_GET_OBJECT, 8457, 265, 265, 265, 265, 8457};
    private final String[] mProcWakelocksName = new String[3];
    private final long[] mProcWakelocksData = new long[3];

    public KernelWakelockStats parseProcWakelocks(byte[] bArr, int i2, boolean z2, KernelWakelockStats kernelWakelockStats) {
        byte b2;
        int i3 = 0;
        while (i3 < i2 && (b2 = bArr[i3]) != 10 && b2 != 0) {
            i3++;
        }
        int i4 = i3 + 1;
        synchronized (this) {
            sKernelWakelockUpdateVersion++;
            int i5 = i4;
            while (i4 < i2) {
                int i6 = i5;
                while (i6 < i2) {
                    byte b3 = bArr[i6];
                    if (b3 == 10 || b3 == 0) {
                        break;
                    }
                    i6++;
                }
                if (i6 > i2 - 1) {
                    break;
                }
                String[] strArr = this.mProcWakelocksName;
                long[] jArr = this.mProcWakelocksData;
                for (int i7 = i5; i7 < i6; i7++) {
                    if ((bArr[i7] & 128) != 0) {
                        bArr[i7] = 63;
                    }
                }
                boolean procLine = Process.parseProcLine(bArr, i5, i6, z2 ? WAKEUP_SOURCES_FORMAT : PROC_WAKELOCKS_FORMAT, strArr, jArr, null);
                String str = strArr[0];
                int i8 = (int) jArr[1];
                long j2 = z2 ? jArr[2] * 1000 : (jArr[2] + 500) / 1000;
                if (!procLine || str.length() <= 0) {
                    if (!procLine) {
                        try {
                            Slog.wtf(TAG, "Failed to parse proc line: " + new String(bArr, i5, i6 - i5));
                        } catch (Exception unused) {
                            Slog.wtf(TAG, "Failed to parse proc line!");
                        }
                    }
                } else if (kernelWakelockStats.containsKey(str)) {
                    KernelWakelockStats.Entry entry = (KernelWakelockStats.Entry) kernelWakelockStats.get(str);
                    int i9 = entry.mVersion;
                    int i10 = sKernelWakelockUpdateVersion;
                    if (i9 == i10) {
                        entry.mCount += i8;
                        entry.mTotalTime += j2;
                    } else {
                        entry.mCount = i8;
                        entry.mTotalTime = j2;
                        entry.mVersion = i10;
                    }
                } else {
                    kernelWakelockStats.put(str, new KernelWakelockStats.Entry(i8, j2, sKernelWakelockUpdateVersion));
                }
                i5 = i6 + 1;
                i4 = i6;
                throw th;
            }
            Iterator it = kernelWakelockStats.values().iterator();
            while (it.hasNext()) {
                if (((KernelWakelockStats.Entry) it.next()).mVersion != sKernelWakelockUpdateVersion) {
                    it.remove();
                }
            }
            kernelWakelockStats.kernelWakelockVersion = sKernelWakelockUpdateVersion;
        }
        return kernelWakelockStats;
    }

    public final KernelWakelockStats readKernelWakelockStats(KernelWakelockStats kernelWakelockStats) {
        FileInputStream fileInputStream;
        boolean z2;
        byte[] bArr = new byte[32768];
        long jUptimeMillis = SystemClock.uptimeMillis();
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(sWakelockFile);
                    z2 = false;
                } catch (FileNotFoundException unused) {
                    Slog.wtf(TAG, "neither /proc/wakelocks nor /d/wakeup_sources exists");
                    return null;
                }
            } catch (IOException e2) {
                Slog.wtf(TAG, "failed to read kernel wakelocks", e2);
                return null;
            }
        } catch (FileNotFoundException unused2) {
            fileInputStream = new FileInputStream(sWakeupSourceFile);
            z2 = true;
        }
        int i2 = fileInputStream.read(bArr);
        fileInputStream.close();
        long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
        if (jUptimeMillis2 > 100) {
            Slog.w(TAG, "Reading wakelock stats took " + jUptimeMillis2 + "ms");
        }
        if (i2 > 0) {
            if (i2 >= 32768) {
                Slog.wtf(TAG, "Kernel wake locks exceeded buffer size 32768");
            }
            for (int i3 = 0; i3 < i2; i3++) {
                if (bArr[i3] == 0) {
                    i2 = i3;
                    break;
                }
            }
        }
        return parseProcWakelocks(bArr, i2, z2, kernelWakelockStats);
    }
}
