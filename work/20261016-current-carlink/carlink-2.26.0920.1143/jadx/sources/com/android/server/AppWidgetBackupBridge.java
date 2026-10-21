package com.android.server;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AppWidgetBackupBridge {
    private static WidgetBackupProvider sAppWidgetService;

    public static List<String> getWidgetParticipants(int i2) {
        WidgetBackupProvider widgetBackupProvider = sAppWidgetService;
        if (widgetBackupProvider != null) {
            return widgetBackupProvider.getWidgetParticipants(i2);
        }
        return null;
    }

    public static byte[] getWidgetState(String str, int i2) {
        WidgetBackupProvider widgetBackupProvider = sAppWidgetService;
        if (widgetBackupProvider != null) {
            return widgetBackupProvider.getWidgetState(str, i2);
        }
        return null;
    }

    public static void register(WidgetBackupProvider widgetBackupProvider) {
        sAppWidgetService = widgetBackupProvider;
    }

    public static void restoreFinished(int i2) {
        WidgetBackupProvider widgetBackupProvider = sAppWidgetService;
        if (widgetBackupProvider != null) {
            widgetBackupProvider.restoreFinished(i2);
        }
    }

    public static void restoreStarting(int i2) {
        WidgetBackupProvider widgetBackupProvider = sAppWidgetService;
        if (widgetBackupProvider != null) {
            widgetBackupProvider.restoreStarting(i2);
        }
    }

    public static void restoreWidgetState(String str, byte[] bArr, int i2) {
        WidgetBackupProvider widgetBackupProvider = sAppWidgetService;
        if (widgetBackupProvider != null) {
            widgetBackupProvider.restoreWidgetState(str, bArr, i2);
        }
    }
}
