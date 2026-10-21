package com.android.internal.os;

import android.app.m;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Slog;
import android.util.SparseLongArray;
import android.util.TimeUtils;
import com.android.internal.content.NativeLibraryHelper;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class KernelUidCpuTimeReader {
    private static final String TAG = "KernelUidCpuTimeReader";
    private static final String sProcFile = "/proc/uid_cputime/show_uid_stat";
    private static final String sRemoveUidProcFile = "/proc/uid_cputime/remove_uid_range";
    private SparseLongArray mLastUserTimeUs = new SparseLongArray();
    private SparseLongArray mLastSystemTimeUs = new SparseLongArray();
    private long mLastTimeReadUs = 0;

    public interface Callback {
        void onUidCpuTime(int i2, long j2, long j3);
    }

    private void removeUidsFromKernelModule(int i2, int i3) {
        Slog.d(TAG, "Removing uids " + i2 + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + i3);
        try {
            FileWriter fileWriter = new FileWriter(sRemoveUidProcFile);
            try {
                fileWriter.write(i2 + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + i3);
                fileWriter.flush();
                fileWriter.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileWriter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e2) {
            Slog.e(TAG, m.f("failed to remove uids ", i2, " - ", i3, " from uid_cputime module"), e2);
        }
    }

    public void readDelta(Callback callback) {
        BufferedReader bufferedReader;
        long j2;
        long jValueAt;
        long j3;
        long j4;
        long j5 = 1000;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(sProcFile));
            try {
                TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(' ');
                while (true) {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        break;
                    }
                    simpleStringSplitter.setString(line);
                    String next = simpleStringSplitter.next();
                    int i2 = Integer.parseInt(next.substring(0, next.length() - 1), 10);
                    long j6 = Long.parseLong(simpleStringSplitter.next(), 10);
                    long j7 = Long.parseLong(simpleStringSplitter.next(), 10);
                    if (callback != null) {
                        if (this.mLastTimeReadUs != 0) {
                            int iIndexOfKey = this.mLastUserTimeUs.indexOfKey(i2);
                            if (iIndexOfKey >= 0) {
                                jValueAt = j6 - this.mLastUserTimeUs.valueAt(iIndexOfKey);
                                long jValueAt2 = j7 - this.mLastSystemTimeUs.valueAt(iIndexOfKey);
                                bufferedReader = bufferedReader2;
                                try {
                                    long j8 = jElapsedRealtime - this.mLastTimeReadUs;
                                    if (jValueAt < 0 || jValueAt2 < 0) {
                                        StringBuilder sb = new StringBuilder("Malformed cpu data for UID=");
                                        sb.append(i2);
                                        sb.append("!\n");
                                        sb.append("Time between reads: ");
                                        TimeUtils.formatDuration(j8 / 1000, sb);
                                        sb.append("\n");
                                        sb.append("Previous times: u=");
                                        j2 = 1000;
                                        TimeUtils.formatDuration(this.mLastUserTimeUs.valueAt(iIndexOfKey) / 1000, sb);
                                        sb.append(" s=");
                                        TimeUtils.formatDuration(this.mLastSystemTimeUs.valueAt(iIndexOfKey) / 1000, sb);
                                        sb.append("\nCurrent times: u=");
                                        TimeUtils.formatDuration(j6 / 1000, sb);
                                        sb.append(" s=");
                                        TimeUtils.formatDuration(j7 / 1000, sb);
                                        sb.append("\nDelta: u=");
                                        TimeUtils.formatDuration(jValueAt / 1000, sb);
                                        sb.append(" s=");
                                        TimeUtils.formatDuration(jValueAt2 / 1000, sb);
                                        Slog.e(TAG, sb.toString());
                                        j3 = 0;
                                        j4 = 0;
                                        jValueAt = 0;
                                    } else {
                                        j3 = 0;
                                        j4 = jValueAt2;
                                        j2 = 1000;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                }
                            } else {
                                bufferedReader = bufferedReader2;
                                j2 = 1000;
                                jValueAt = j6;
                                j3 = 0;
                                j4 = j7;
                            }
                            if (jValueAt != j3 || j4 != j3) {
                                j7 = j7;
                                callback.onUidCpuTime(i2, jValueAt, j4);
                            }
                        } else {
                            bufferedReader = bufferedReader2;
                            j2 = 1000;
                        }
                        this.mLastUserTimeUs.put(i2, j6);
                        this.mLastSystemTimeUs.put(i2, j7);
                        simpleStringSplitter = simpleStringSplitter;
                        j5 = j2;
                        bufferedReader2 = bufferedReader;
                    } else {
                        j2 = j5;
                        bufferedReader = bufferedReader2;
                    }
                    this.mLastUserTimeUs.put(i2, j6);
                    this.mLastSystemTimeUs.put(i2, j7);
                    simpleStringSplitter = simpleStringSplitter;
                    j5 = j2;
                    bufferedReader2 = bufferedReader;
                    Throwable th2 = th;
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        try {
                            bufferedReader.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                            throw th3;
                        }
                    }
                }
                bufferedReader2.close();
                this.mLastTimeReadUs = jElapsedRealtime;
            } catch (Throwable th5) {
                th = th5;
                bufferedReader = bufferedReader2;
            }
        } catch (IOException e2) {
            Slog.e(TAG, "Failed to read uid_cputime: " + e2.getMessage());
        }
    }

    public void removeUid(int i2) {
        int iIndexOfKey = this.mLastSystemTimeUs.indexOfKey(i2);
        if (iIndexOfKey >= 0) {
            this.mLastSystemTimeUs.removeAt(iIndexOfKey);
            this.mLastUserTimeUs.removeAt(iIndexOfKey);
        }
        removeUidsFromKernelModule(i2, i2);
    }

    public void removeUidsInRange(int i2, int i3) {
        if (i3 < i2) {
            return;
        }
        this.mLastSystemTimeUs.put(i2, 0L);
        this.mLastUserTimeUs.put(i2, 0L);
        this.mLastSystemTimeUs.put(i3, 0L);
        this.mLastUserTimeUs.put(i3, 0L);
        int iIndexOfKey = this.mLastSystemTimeUs.indexOfKey(i2);
        int iIndexOfKey2 = (this.mLastSystemTimeUs.indexOfKey(i3) - iIndexOfKey) + 1;
        this.mLastSystemTimeUs.removeAtRange(iIndexOfKey, iIndexOfKey2);
        this.mLastUserTimeUs.removeAtRange(iIndexOfKey, iIndexOfKey2);
        removeUidsFromKernelModule(i2, i3);
    }
}
