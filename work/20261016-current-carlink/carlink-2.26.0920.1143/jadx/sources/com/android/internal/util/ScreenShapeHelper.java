package com.android.internal.util;

import android.content.res.Resources;
import android.os.Build;
import android.os.SystemProperties;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenShapeHelper {
    public static int getWindowOutsetBottomPx(Resources resources) {
        return Build.IS_EMULATOR ? SystemProperties.getInt("ro.emu.win_outset_bottom_px", 0) : resources.getInteger(R.integer.config_windowOutsetBottom);
    }
}
