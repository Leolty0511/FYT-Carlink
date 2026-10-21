package com.android.internal.app;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeParseException;

/* JADX INFO: loaded from: classes2.dex */
public final class NightDisplayController {
    public static final int AUTO_MODE_CUSTOM = 1;
    public static final int AUTO_MODE_DISABLED = 0;
    public static final int AUTO_MODE_TWILIGHT = 2;
    public static final int COLOR_MODE_BOOSTED = 1;
    public static final int COLOR_MODE_NATURAL = 0;
    public static final int COLOR_MODE_SATURATED = 2;
    private static final boolean DEBUG = false;
    private static final String PERSISTENT_PROPERTY_NATIVE_MODE = "persist.sys.sf.native_mode";
    private static final String PERSISTENT_PROPERTY_SATURATION = "persist.sys.sf.color_saturation";
    private static final String TAG = "NightDisplayController";
    private static final boolean mEnhanceState = SystemProperties.getBoolean("ro.sprd.nightdisplay.enhance", false);
    private Callback mCallback;
    private final ContentObserver mContentObserver;
    private final Context mContext;
    private final int mUserId;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AutoMode {
    }

    public interface Callback {
        void onActivated(boolean z2);

        void onAutoModeChanged(int i2);

        void onColorTemperatureChanged(int i2);

        void onCustomEndTimeChanged(LocalTime localTime);

        void onCustomStartTimeChanged(LocalTime localTime);

        void onDisplayColorModeChanged(int i2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorMode {
    }

    public NightDisplayController(Context context) {
        this(context, ActivityManager.getCurrentUser());
    }

    public static boolean isAvailable(Context context) {
        return context.getResources().getBoolean(R.bool.config_nightDisplayAvailable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSettingChanged(String str) {
        if (this.mCallback != null) {
            str.getClass();
            switch (str) {
                case "night_display_auto_mode":
                    this.mCallback.onAutoModeChanged(getAutoMode());
                    break;
                case "night_display_custom_end_time":
                    this.mCallback.onCustomEndTimeChanged(getCustomEndTime());
                    break;
                case "night_display_color_temperature":
                    this.mCallback.onColorTemperatureChanged(getColorTemperature());
                    break;
                case "night_display_activated":
                    this.mCallback.onActivated(isActivated());
                    break;
                case "display_color_mode":
                    this.mCallback.onDisplayColorModeChanged(getColorMode());
                    break;
                case "night_display_custom_start_time":
                    this.mCallback.onCustomStartTimeChanged(getCustomStartTime());
                    break;
            }
        }
    }

    public int getAutoMode() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_AUTO_MODE, -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = this.mContext.getResources().getInteger(R.integer.config_defaultNightDisplayAutoMode);
        }
        if (intForUser == 0 || intForUser == 1 || intForUser == 2) {
            return intForUser;
        }
        Slog.e(TAG, "Invalid autoMode: " + intForUser);
        return 0;
    }

    public int getColorMode() {
        int intForUser = Settings.System.getIntForUser(this.mContext.getContentResolver(), Settings.System.DISPLAY_COLOR_MODE, -1, this.mUserId);
        if (intForUser >= 0 && intForUser <= 2) {
            return intForUser;
        }
        if (WifiEnterpriseConfig.ENGINE_ENABLE.equals(SystemProperties.get(PERSISTENT_PROPERTY_NATIVE_MODE))) {
            return 2;
        }
        return !"1.0".equals(SystemProperties.get(PERSISTENT_PROPERTY_SATURATION)) ? 1 : 0;
    }

    public int getColorTemperature() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_COLOR_TEMPERATURE, -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = getDefaultColorTemperature();
        }
        int minimumColorTemperature = getMinimumColorTemperature();
        int maximumColorTemperature = getMaximumColorTemperature();
        if (intForUser < minimumColorTemperature) {
            return minimumColorTemperature;
        }
        return intForUser > maximumColorTemperature ? maximumColorTemperature : intForUser;
    }

    public LocalTime getCustomEndTime() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_CUSTOM_END_TIME, -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = this.mContext.getResources().getInteger(R.integer.config_defaultNightDisplayCustomEndTime);
        }
        return LocalTime.ofSecondOfDay(intForUser / 1000);
    }

    public LocalTime getCustomStartTime() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_CUSTOM_START_TIME, -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = this.mContext.getResources().getInteger(R.integer.config_defaultNightDisplayCustomStartTime);
        }
        return LocalTime.ofSecondOfDay(intForUser / 1000);
    }

    public int getDefaultColorTemperature() {
        return mEnhanceState ? this.mContext.getResources().getInteger(R.integer.config_nightDisplayColorTemperatureDefault_sprd) : this.mContext.getResources().getInteger(R.integer.config_nightDisplayColorTemperatureDefault);
    }

    public LocalDateTime getLastActivatedTime() {
        String stringForUser = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_LAST_ACTIVATED_TIME, this.mUserId);
        if (stringForUser == null) {
            return null;
        }
        try {
            try {
                return LocalDateTime.parse(stringForUser);
            } catch (NumberFormatException | DateTimeException unused) {
                return null;
            }
        } catch (DateTimeParseException unused2) {
            return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(stringForUser)), ZoneId.systemDefault());
        }
    }

    public int getMaximumColorTemperature() {
        return mEnhanceState ? this.mContext.getResources().getInteger(R.integer.config_nightDisplayColorTemperatureMax_sprd) : this.mContext.getResources().getInteger(R.integer.config_nightDisplayColorTemperatureMax);
    }

    public int getMinimumColorTemperature() {
        return mEnhanceState ? this.mContext.getResources().getInteger(R.integer.config_nightDisplayColorTemperatureMin_sprd) : this.mContext.getResources().getInteger(R.integer.config_nightDisplayColorTemperatureMin);
    }

    public boolean isActivated() {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_ACTIVATED, 0, this.mUserId) == 1;
    }

    public boolean setActivated(boolean z2) {
        if (isActivated() != z2) {
            Settings.Secure.putStringForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_LAST_ACTIVATED_TIME, LocalDateTime.now().toString(), this.mUserId);
        }
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_ACTIVATED, z2 ? 1 : 0, this.mUserId);
    }

    public boolean setAutoMode(int i2) {
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException(c.d("Invalid autoMode: ", i2));
        }
        if (getAutoMode() != i2) {
            Settings.Secure.putStringForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_LAST_ACTIVATED_TIME, null, this.mUserId);
        }
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_AUTO_MODE, i2, this.mUserId);
    }

    public void setColorMode(int i2) {
        if (i2 < 0 || i2 > 2) {
            return;
        }
        Settings.System.putIntForUser(this.mContext.getContentResolver(), Settings.System.DISPLAY_COLOR_MODE, i2, this.mUserId);
    }

    public boolean setColorTemperature(int i2) {
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_COLOR_TEMPERATURE, i2, this.mUserId);
    }

    public boolean setCustomEndTime(LocalTime localTime) {
        if (localTime != null) {
            return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_CUSTOM_END_TIME, localTime.toSecondOfDay() * 1000, this.mUserId);
        }
        throw new IllegalArgumentException("endTime cannot be null");
    }

    public boolean setCustomStartTime(LocalTime localTime) {
        if (localTime != null) {
            return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), Settings.Secure.NIGHT_DISPLAY_CUSTOM_START_TIME, localTime.toSecondOfDay() * 1000, this.mUserId);
        }
        throw new IllegalArgumentException("startTime cannot be null");
    }

    public void setListener(Callback callback) {
        Callback callback2 = this.mCallback;
        if (callback2 != callback) {
            this.mCallback = callback;
            if (callback == null) {
                this.mContext.getContentResolver().unregisterContentObserver(this.mContentObserver);
                return;
            }
            if (callback2 == null) {
                ContentResolver contentResolver = this.mContext.getContentResolver();
                contentResolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.NIGHT_DISPLAY_ACTIVATED), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.NIGHT_DISPLAY_AUTO_MODE), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.NIGHT_DISPLAY_CUSTOM_START_TIME), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.NIGHT_DISPLAY_CUSTOM_END_TIME), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.NIGHT_DISPLAY_COLOR_TEMPERATURE), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.System.getUriFor(Settings.System.DISPLAY_COLOR_MODE), false, this.mContentObserver, this.mUserId);
            }
        }
    }

    public NightDisplayController(Context context, int i2) {
        this.mContext = context.getApplicationContext();
        this.mUserId = i2;
        this.mContentObserver = new ContentObserver(new Handler(Looper.getMainLooper())) { // from class: com.android.internal.app.NightDisplayController.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z2, Uri uri) {
                super.onChange(z2, uri);
                String lastPathSegment = uri == null ? null : uri.getLastPathSegment();
                if (lastPathSegment != null) {
                    NightDisplayController.this.onSettingChanged(lastPathSegment);
                }
            }
        };
    }
}
