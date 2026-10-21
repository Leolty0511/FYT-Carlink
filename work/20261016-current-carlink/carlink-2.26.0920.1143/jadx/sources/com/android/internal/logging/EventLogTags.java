package com.android.internal.logging;

import android.util.EventLog;

/* JADX INFO: loaded from: classes2.dex */
public class EventLogTags {
    public static final int SYSUI_ACTION = 524288;
    public static final int SYSUI_COUNT = 524290;
    public static final int SYSUI_HISTOGRAM = 524291;
    public static final int SYSUI_MULTI_ACTION = 524292;
    public static final int SYSUI_VIEW_VISIBILITY = 524287;

    private EventLogTags() {
    }

    public static void writeSysuiAction(int i2, String str) {
        EventLog.writeEvent(524288, Integer.valueOf(i2), str);
    }

    public static void writeSysuiCount(String str, int i2) {
        EventLog.writeEvent(524290, str, Integer.valueOf(i2));
    }

    public static void writeSysuiHistogram(String str, int i2) {
        EventLog.writeEvent(524291, str, Integer.valueOf(i2));
    }

    public static void writeSysuiMultiAction(Object[] objArr) {
        EventLog.writeEvent(524292, objArr);
    }

    public static void writeSysuiViewVisibility(int i2, int i3) {
        EventLog.writeEvent(SYSUI_VIEW_VISIBILITY, Integer.valueOf(i2), Integer.valueOf(i3));
    }
}
