package com.google.android.projection.logging;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Process;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class Log {
    private static final Log INSTANCE = new Log();
    private static final int MAX_ERROR_LOGS_ENTRIES = 10;

    @VisibleForTesting
    static final int MAX_LOGS_ENTRIES = 100;
    private final Object lock = new Object();

    @GuardedBy("lock")
    private final ArrayDeque<LogEntry> stdLogBuffer = new ArrayDeque<>();

    @GuardedBy("lock")
    private final ArrayDeque<LogEntry> errLogBuffer = new ArrayDeque<>();

    public static class LogEntry {

        @Nullable
        final Throwable exception;
        final boolean mainThread;
        final String message;
        final int severity;
        final String tag;
        final long threadId;
        final long timestamp;

        public LogEntry(long j2, int i2, String str, String str2, long j3, boolean z2, @Nullable Throwable th) {
            this.timestamp = j2;
            this.severity = i2;
            this.tag = str;
            this.message = str2;
            this.threadId = j3;
            this.mainThread = z2;
            this.exception = th;
        }

        public static LogEntry create(int i2, String str, String str2, @Nullable Throwable th) {
            int iMyTid = Process.myTid();
            return new LogEntry(new Date().getTime(), i2, str, str2, iMyTid, iMyTid == Process.myPid(), th);
        }
    }

    private Log() {
    }

    private static void addLog(int i2, String str, String str2) {
        addLog(i2, str, str2, null);
    }

    private void addLogEntry(LogEntry logEntry) {
        toLogcat(logEntry);
        synchronized (this.lock) {
            addLogEntryToRingBuffer(logEntry, this.stdLogBuffer, 100);
            if (logEntry.severity >= 5) {
                addLogEntryToRingBuffer(logEntry, this.errLogBuffer, 10);
            }
        }
    }

    private static void addLogEntryToRingBuffer(LogEntry logEntry, ArrayDeque<LogEntry> arrayDeque, int i2) {
        while (arrayDeque.size() >= i2) {
            arrayDeque.removeFirst();
        }
        arrayDeque.addLast(logEntry);
    }

    public static void d(String str, String str2) {
        addLog(3, str, str2);
    }

    public static void dumpRecentLogs(PrintWriter printWriter) {
        getInstance().internalDumpRecentLogs(printWriter);
    }

    public static void e(String str, String str2) {
        addLog(6, str, str2);
    }

    private static Log getInstance() {
        return INSTANCE;
    }

    public static void i(String str, String str2) {
        addLog(4, str, str2);
    }

    private void internalDumpRecentLogs(PrintWriter printWriter) {
        ArrayList arrayList;
        ArrayList arrayList2;
        synchronized (this.lock) {
            arrayList = new ArrayList(this.stdLogBuffer);
            arrayList2 = new ArrayList(this.errLogBuffer);
        }
        printWriter.println();
        printWriter.println("*** Recent Logs: warnings and errors ***");
        internalDumpRecentLogs(printWriter, arrayList2);
        printWriter.println();
        printWriter.println("*** Recent Logs: all ***");
        internalDumpRecentLogs(printWriter, arrayList);
    }

    private static String severityToString(int i2) {
        if (i2 == 2) {
            return "V";
        }
        if (i2 == 3) {
            return "D";
        }
        if (i2 == 4) {
            return "I";
        }
        if (i2 == 5) {
            return "W";
        }
        if (i2 == 6) {
            return "E";
        }
        throw new IllegalArgumentException(c.d("Unexpected severity: ", i2));
    }

    private static void toLogcat(LogEntry logEntry) {
        int i2 = logEntry.severity;
        if (i2 == 2) {
            android.util.Log.v(logEntry.tag, logEntry.message);
            return;
        }
        if (i2 == 3) {
            android.util.Log.d(logEntry.tag, logEntry.message);
            return;
        }
        if (i2 == 4) {
            android.util.Log.i(logEntry.tag, logEntry.message);
            return;
        }
        if (i2 == 5) {
            Throwable th = logEntry.exception;
            if (th == null) {
                android.util.Log.w(logEntry.tag, logEntry.message);
                return;
            } else {
                android.util.Log.w(logEntry.tag, logEntry.message, th);
                return;
            }
        }
        if (i2 != 6) {
            throw new IllegalArgumentException("Unexpected severity: " + logEntry.severity);
        }
        Throwable th2 = logEntry.exception;
        if (th2 == null) {
            android.util.Log.e(logEntry.tag, logEntry.message);
        } else {
            android.util.Log.e(logEntry.tag, logEntry.message, th2);
        }
    }

    public static void v(String str, String str2) {
        addLog(2, str, str2);
    }

    public static void w(String str, String str2) {
        addLog(5, str, str2);
    }

    private static void addLog(int i2, String str, String str2, @Nullable Throwable th) {
        getInstance().addLogEntry(LogEntry.create(i2, str, str2, th));
    }

    public static void e(String str, String str2, Throwable th) {
        addLog(6, str, str2, th);
    }

    public static void w(String str, String str2, Throwable th) {
        addLog(5, str, str2, th);
    }

    private static void internalDumpRecentLogs(PrintWriter printWriter, List<LogEntry> list) {
        for (LogEntry logEntry : list) {
            printWriter.println(new SimpleDateFormat("MM:dd HH:mm:ss.SSS", Locale.US).format(new Date(logEntry.timestamp)) + (logEntry.mainThread ? " main" : WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + logEntry.threadId) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + severityToString(logEntry.severity) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + logEntry.tag + ": " + (logEntry.exception == null ? logEntry.message : logEntry.message + '\n' + android.util.Log.getStackTraceString(logEntry.exception)));
        }
    }
}
