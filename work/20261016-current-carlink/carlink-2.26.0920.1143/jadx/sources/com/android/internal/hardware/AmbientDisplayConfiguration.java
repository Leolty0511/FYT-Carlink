package com.android.internal.hardware;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class AmbientDisplayConfiguration {
    private final Context mContext;

    public AmbientDisplayConfiguration(Context context) {
        this.mContext = context;
    }

    private boolean alwaysOnDisplayAvailable() {
        return this.mContext.getResources().getBoolean(R.bool.config_dozeAlwaysOnDisplayAvailable);
    }

    private boolean alwaysOnDisplayDebuggingEnabled() {
        return SystemProperties.getBoolean("debug.doze.aod", false) && Build.IS_DEBUGGABLE;
    }

    private boolean ambientDisplayAvailable() {
        return !TextUtils.isEmpty(ambientDisplayComponent());
    }

    private boolean boolSetting(String str, int i2, int i3) {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), str, i3, i2) != 0;
    }

    private boolean boolSettingDefaultOff(String str, int i2) {
        return boolSetting(str, i2, 0);
    }

    private boolean boolSettingDefaultOn(String str, int i2) {
        return boolSetting(str, i2, 1);
    }

    private boolean pulseOnLongPressAvailable() {
        return !TextUtils.isEmpty(longPressSensorType());
    }

    public boolean accessibilityInversionEnabled(int i2) {
        return boolSettingDefaultOff(Settings.Secure.ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, i2);
    }

    public boolean alwaysOnAvailable() {
        return (alwaysOnDisplayDebuggingEnabled() || alwaysOnDisplayAvailable()) && ambientDisplayAvailable();
    }

    public boolean alwaysOnAvailableForUser(int i2) {
        return alwaysOnAvailable() && !accessibilityInversionEnabled(i2);
    }

    public boolean alwaysOnEnabled(int i2) {
        return boolSettingDefaultOn(Settings.Secure.DOZE_ALWAYS_ON, i2) && alwaysOnAvailable() && !accessibilityInversionEnabled(i2);
    }

    public String ambientDisplayComponent() {
        return this.mContext.getResources().getString(R.string.config_dozeComponent);
    }

    public boolean available() {
        return pulseOnNotificationAvailable() || pulseOnPickupAvailable() || pulseOnDoubleTapAvailable();
    }

    public String doubleTapSensorType() {
        return this.mContext.getResources().getString(R.string.config_dozeDoubleTapSensorType);
    }

    public boolean enabled(int i2) {
        return pulseOnNotificationEnabled(i2) || pulseOnPickupEnabled(i2) || pulseOnDoubleTapEnabled(i2) || pulseOnLongPressEnabled(i2) || alwaysOnEnabled(i2);
    }

    public String longPressSensorType() {
        return this.mContext.getResources().getString(R.string.config_dozeLongPressSensorType);
    }

    public boolean pulseOnDoubleTapAvailable() {
        return !TextUtils.isEmpty(doubleTapSensorType()) && ambientDisplayAvailable();
    }

    public boolean pulseOnDoubleTapEnabled(int i2) {
        return boolSettingDefaultOn(Settings.Secure.DOZE_PULSE_ON_DOUBLE_TAP, i2) && pulseOnDoubleTapAvailable();
    }

    public boolean pulseOnLongPressEnabled(int i2) {
        return pulseOnLongPressAvailable() && boolSettingDefaultOff(Settings.Secure.DOZE_PULSE_ON_LONG_PRESS, i2);
    }

    public boolean pulseOnNotificationAvailable() {
        return ambientDisplayAvailable();
    }

    public boolean pulseOnNotificationEnabled(int i2) {
        return boolSettingDefaultOn(Settings.Secure.DOZE_ENABLED, i2) && pulseOnNotificationAvailable();
    }

    public boolean pulseOnPickupAvailable() {
        return this.mContext.getResources().getBoolean(R.bool.config_dozePulsePickup) && ambientDisplayAvailable();
    }

    public boolean pulseOnPickupCanBeModified(int i2) {
        return !alwaysOnEnabled(i2);
    }

    public boolean pulseOnPickupEnabled(int i2) {
        return (boolSettingDefaultOn(Settings.Secure.DOZE_PULSE_ON_PICK_UP, i2) || alwaysOnEnabled(i2)) && pulseOnPickupAvailable();
    }
}
