package android.view;

import android.util.Slog;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class k {
    public static int a(WindowManagerPolicy windowManagerPolicy, int i2) {
        switch (i2) {
            case 1000:
            case 1003:
                return 1;
            case 1001:
                return -2;
            case 1002:
                return 2;
            case 1004:
                return -1;
            case 1005:
                return 3;
            default:
                Slog.e("WindowManager", "Unknown sub-window type: " + i2);
                return 0;
        }
    }

    public static int b(WindowManagerPolicy windowManagerPolicy, int i2) {
        if (WindowManager.LayoutParams.isSystemAlertWindowType(i2)) {
            throw new IllegalArgumentException("Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types");
        }
        return windowManagerPolicy.getWindowLayerFromTypeLw(i2, false);
    }

    public static int c(WindowManagerPolicy windowManagerPolicy, int i2, boolean z2) {
        if (i2 >= 1 && i2 <= 99) {
            return 2;
        }
        switch (i2) {
            case 2000:
                return 18;
            case 2001:
            case WindowManager.LayoutParams.TYPE_VOICE_INTERACTION_STARTING /* 2033 */:
                return 4;
            case 2002:
                return 3;
            case 2003:
                return z2 ? 11 : 10;
            case 2004:
            case 2025:
            case 2028:
            case 2029:
            default:
                Slog.e("WindowManager", "Unknown window type: " + i2);
                return 2;
            case 2005:
                return 8;
            case 2006:
                return z2 ? 22 : 11;
            case 2007:
                return 9;
            case 2008:
                return 7;
            case WindowManager.LayoutParams.TYPE_KEYGUARD_DIALOG /* 2009 */:
                return 20;
            case WindowManager.LayoutParams.TYPE_SYSTEM_ERROR /* 2010 */:
                return z2 ? 26 : 10;
            case WindowManager.LayoutParams.TYPE_INPUT_METHOD /* 2011 */:
                return 14;
            case WindowManager.LayoutParams.TYPE_INPUT_METHOD_DIALOG /* 2012 */:
                return 15;
            case WindowManager.LayoutParams.TYPE_WALLPAPER /* 2013 */:
                return 1;
            case WindowManager.LayoutParams.TYPE_STATUS_BAR_PANEL /* 2014 */:
                return 19;
            case WindowManager.LayoutParams.TYPE_SECURE_SYSTEM_OVERLAY /* 2015 */:
                return 31;
            case WindowManager.LayoutParams.TYPE_DRAG /* 2016 */:
                return 29;
            case WindowManager.LayoutParams.TYPE_STATUS_BAR_SUB_PANEL /* 2017 */:
                return 17;
            case WindowManager.LayoutParams.TYPE_POINTER /* 2018 */:
                return 33;
            case WindowManager.LayoutParams.TYPE_NAVIGATION_BAR /* 2019 */:
                return 23;
            case WindowManager.LayoutParams.TYPE_VOLUME_OVERLAY /* 2020 */:
                return 21;
            case WindowManager.LayoutParams.TYPE_BOOT_PROGRESS /* 2021 */:
                return 32;
            case WindowManager.LayoutParams.TYPE_INPUT_CONSUMER /* 2022 */:
                return 6;
            case WindowManager.LayoutParams.TYPE_DREAM /* 2023 */:
                return 13;
            case WindowManager.LayoutParams.TYPE_NAVIGATION_BAR_PANEL /* 2024 */:
                return 24;
            case WindowManager.LayoutParams.TYPE_DISPLAY_OVERLAY /* 2026 */:
                return 28;
            case WindowManager.LayoutParams.TYPE_MAGNIFICATION_OVERLAY /* 2027 */:
                return 27;
            case WindowManager.LayoutParams.TYPE_PRIVATE_PRESENTATION /* 2030 */:
            case WindowManager.LayoutParams.TYPE_PRESENTATION /* 2037 */:
                return 2;
            case WindowManager.LayoutParams.TYPE_VOICE_INTERACTION /* 2031 */:
                return 5;
            case WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY /* 2032 */:
                return 30;
            case WindowManager.LayoutParams.TYPE_DOCK_DIVIDER /* 2034 */:
            case WindowManager.LayoutParams.TYPE_QS_DIALOG /* 2035 */:
                return 2;
            case WindowManager.LayoutParams.TYPE_SCREENSHOT /* 2036 */:
                return 25;
            case WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY /* 2038 */:
                return 12;
        }
    }

    public static int d(WindowManagerPolicy windowManagerPolicy, WindowManagerPolicy.WindowState windowState) {
        return windowManagerPolicy.getWindowLayerFromTypeLw(windowState.getBaseType(), windowState.canAddInternalSystemWindow());
    }

    public static void e(WindowManagerPolicy windowManagerPolicy, boolean z2) {
    }
}
