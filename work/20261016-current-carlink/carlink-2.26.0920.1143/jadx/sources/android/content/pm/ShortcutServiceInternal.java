package android.content.pm;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ShortcutServiceInternal {

    public interface ShortcutChangeListener {
        void onShortcutChanged(String str, int i2);
    }

    public abstract void addListener(ShortcutChangeListener shortcutChangeListener);

    public abstract Intent[] createShortcutIntents(int i2, String str, String str2, String str3, int i3);

    public abstract ParcelFileDescriptor getShortcutIconFd(int i2, String str, String str2, String str3, int i3);

    public abstract int getShortcutIconResId(int i2, String str, String str2, String str3, int i3);

    public abstract List<ShortcutInfo> getShortcuts(int i2, String str, long j2, String str2, List<String> list, ComponentName componentName, int i3, int i4);

    public abstract boolean hasShortcutHostPermission(int i2, String str);

    public abstract boolean isPinnedByCaller(int i2, String str, String str2, String str3, int i3);

    public abstract boolean isRequestPinItemSupported(int i2, int i3);

    public abstract void pinShortcuts(int i2, String str, String str2, List<String> list, int i3);

    public abstract boolean requestPinAppWidget(String str, AppWidgetProviderInfo appWidgetProviderInfo, Bundle bundle, IntentSender intentSender, int i2);
}
