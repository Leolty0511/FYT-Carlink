package com.android.internal.logging;

import android.content.Context;
import android.metrics.LogMaker;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class MetricsLogger {
    public static final int LOGTAG = 524292;
    public static final int VIEW_UNKNOWN = 0;
    public static final int WIFI_HOTSPOT_CONTROL = 245;
    private static MetricsLogger sMetricsLogger;

    private static MetricsLogger getLogger() {
        if (sMetricsLogger == null) {
            sMetricsLogger = new MetricsLogger();
        }
        return sMetricsLogger;
    }

    public void action(int i2) {
        EventLogTags.writeSysuiAction(i2, "");
        saveLog(new LogMaker(i2).setType(4).serialize());
    }

    public void count(String str, int i2) {
        EventLogTags.writeSysuiCount(str, i2);
        saveLog(new LogMaker(803).setCounterName(str).setCounterValue(i2).serialize());
    }

    public void hidden(int i2) {
        if (Build.IS_DEBUGGABLE && i2 == 0) {
            throw new IllegalArgumentException("Must define metric category");
        }
        EventLogTags.writeSysuiViewVisibility(i2, 0);
        saveLog(new LogMaker(i2).setType(2).serialize());
    }

    public void histogram(String str, int i2) {
        EventLogTags.writeSysuiHistogram(str, i2);
        saveLog(new LogMaker(804).setCounterName(str).setCounterBucket(i2).setCounterValue(1).serialize());
    }

    public void saveLog(Object[] objArr) {
        EventLogTags.writeSysuiMultiAction(objArr);
    }

    public void visibility(int i2, boolean z2) {
        if (z2) {
            visible(i2);
        } else {
            hidden(i2);
        }
    }

    public void visible(int i2) {
        if (Build.IS_DEBUGGABLE && i2 == 0) {
            throw new IllegalArgumentException("Must define metric category");
        }
        EventLogTags.writeSysuiViewVisibility(i2, 100);
        saveLog(new LogMaker(i2).setType(1).serialize());
    }

    public void write(LogMaker logMaker) {
        if (logMaker.getType() == 0) {
            logMaker.setType(4);
        }
        saveLog(logMaker.serialize());
    }

    public void visibility(int i2, int i3) {
        visibility(i2, i3 == 0);
    }

    @Deprecated
    public static void visibility(Context context, int i2, boolean z2) {
        getLogger().visibility(i2, z2);
    }

    @Deprecated
    public static void visibility(Context context, int i2, int i3) {
        visibility(context, i2, i3 == 0);
    }

    public void action(int i2, int i3) {
        EventLogTags.writeSysuiAction(i2, Integer.toString(i3));
        saveLog(new LogMaker(i2).setType(4).setSubtype(i3).serialize());
    }

    @Deprecated
    public static void count(Context context, String str, int i2) {
        getLogger().count(str, i2);
    }

    @Deprecated
    public static void hidden(Context context, int i2) {
        getLogger().hidden(i2);
    }

    @Deprecated
    public static void histogram(Context context, String str, int i2) {
        getLogger().histogram(str, i2);
    }

    @Deprecated
    public static void visible(Context context, int i2) {
        getLogger().visible(i2);
    }

    public void action(int i2, boolean z2) {
        EventLogTags.writeSysuiAction(i2, Boolean.toString(z2));
        saveLog(new LogMaker(i2).setType(4).setSubtype(z2 ? 1 : 0).serialize());
    }

    public void action(int i2, String str) {
        if (Build.IS_DEBUGGABLE && i2 == 0) {
            throw new IllegalArgumentException("Must define metric category");
        }
        EventLogTags.writeSysuiAction(i2, str);
        saveLog(new LogMaker(i2).setType(4).setPackageName(str).serialize());
    }

    @Deprecated
    public static void action(Context context, int i2) {
        getLogger().action(i2);
    }

    @Deprecated
    public static void action(Context context, int i2, int i3) {
        getLogger().action(i2, i3);
    }

    @Deprecated
    public static void action(Context context, int i2, boolean z2) {
        getLogger().action(i2, z2);
    }

    @Deprecated
    public static void action(LogMaker logMaker) {
        getLogger().write(logMaker);
    }

    @Deprecated
    public static void action(Context context, int i2, String str) {
        getLogger().action(i2, str);
    }
}
