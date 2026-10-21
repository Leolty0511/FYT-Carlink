package android.util;

import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import java.util.ArrayDeque;
import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public class TimingsTraceLog {
    private static final boolean DEBUG_BOOT_TIME = !Build.IS_USER;
    private final Deque<Pair<String, Long>> mStartTimes;
    private final String mTag;
    private long mTraceTag;

    public TimingsTraceLog(String str, long j2) {
        this.mStartTimes = DEBUG_BOOT_TIME ? new ArrayDeque() : null;
        this.mTag = str;
        this.mTraceTag = j2;
    }

    public void logDuration(String str, long j2) {
        Slog.d(this.mTag, str + " took to complete: " + j2 + "ms");
    }

    public void traceBegin(String str) {
        Trace.traceBegin(this.mTraceTag, str);
        if (DEBUG_BOOT_TIME) {
            this.mStartTimes.push(Pair.create(str, Long.valueOf(SystemClock.elapsedRealtime())));
        }
    }

    public void traceEnd() {
        Trace.traceEnd(this.mTraceTag);
        if (DEBUG_BOOT_TIME) {
            if (this.mStartTimes.peek() == null) {
                Slog.w(this.mTag, "traceEnd called more times than traceBegin");
            } else {
                Pair<String, Long> pairPop = this.mStartTimes.pop();
                logDuration(pairPop.first, SystemClock.elapsedRealtime() - pairPop.second.longValue());
            }
        }
    }
}
