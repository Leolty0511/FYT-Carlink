package org.greenrobot.eventbus.android;

import android.accessibilityservice.c;
import android.util.Log;
import java.util.logging.Level;
import org.greenrobot.eventbus.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidLogger implements Logger {
    private static final boolean ANDROID_LOG_AVAILABLE;
    private final String tag;

    static {
        boolean z2;
        try {
            int i2 = Log.VERBOSE;
            z2 = true;
        } catch (ClassNotFoundException unused) {
            z2 = false;
        }
        ANDROID_LOG_AVAILABLE = z2;
    }

    public AndroidLogger(String str) {
        this.tag = str;
    }

    public static boolean isAndroidLogAvailable() {
        return ANDROID_LOG_AVAILABLE;
    }

    private int mapLevel(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }

    @Override // org.greenrobot.eventbus.Logger
    public void log(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(mapLevel(level), this.tag, str);
        }
    }

    @Override // org.greenrobot.eventbus.Logger
    public void log(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            int iMapLevel = mapLevel(level);
            String str2 = this.tag;
            StringBuilder sbU = c.u(str, "\n");
            sbU.append(Log.getStackTraceString(th));
            Log.println(iMapLevel, str2, sbU.toString());
        }
    }
}
