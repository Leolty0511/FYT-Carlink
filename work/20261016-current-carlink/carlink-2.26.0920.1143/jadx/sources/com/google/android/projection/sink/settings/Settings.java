package com.google.android.projection.sink.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiEnterpriseConfig;
import android.preference.PreferenceManager;
import com.google.android.projection.proto.Protos;

/* JADX INFO: loaded from: classes3.dex */
public class Settings {
    public static final String AUDIO_AAC_ENABLED_MEDIA = "use_aac_for_media_stream";
    public static final String AUDIO_AAC_ENABLED_TTS = "use_aac_for_tts_stream";
    public static final String AUTO_START_LOCAL_MODE = "auto_start_local_mode";
    public static final String AUTO_START_PROJECTION = "auto_start_projection";
    public static final String CAR_BLUETOOTH_ADDRESS = "car_bluetooth_address";
    public static final String CAR_MODE = "car_mode";
    public static final String CAR_SUPPORTS_BLUETOOTH_NUMERIC_COMPARISON = "car_supports_bluetooth_numeric_comparison";
    public static final String CAR_SUPPORTS_BLUETOOTH_PIN = "car_supports_bluetooth_pin";
    public static final String CAR_WIFI_PASSWORD = "car_wifi_password";
    public static final String CAR_WIFI_SECURITY = "car_wifi_security";
    public static final String CAR_WIFI_SSID = "car_wifi_ssid";
    public static final String DEBUG_MODE = "debug_mode";
    public static final String GENERATE_MISSING_SENSORS = "generate_missing_sensors";
    public static final String GPS_SIMULATION = "simulation";
    public static final String GPS_TABLET = "gps";
    public static final String LISTEN_TCP_PORT = "listen_tcp_port";
    public static final String LOCATION_SOURCE = "location_source_list";
    public static final String OBD2_DEVICE = "obd2_device";
    public static final String OBD2_ENABLED = "use_obd2_enabled";
    public static final String PREF_KEY_FPS_30 = "framerate_restrict_to_30";
    public static final String PREF_KEY_USE_RESTRICTED_AUDIO_FOCUS_MODES = "audio_focus_use_restricted_mode";
    public static final String ROTARY_CONTROLLER_ENABLED = "rotary_controller_enabled";
    public static final String SCREEN_DPI = "screen_dpi";
    public static final String SCREEN_HEIGHT = "screen_height";
    public static final String SCREEN_SCALE = "scale_checkbox";
    public static final String SCREEN_WIDTH = "screen_width";
    private static final String SHOW_VIDEO_FOCUS_DIALOG = "show_vf_dialog";
    public static final String SIMULATION_FINISH = "simulation_end";
    public static final String SIMULATION_MISSING_ACCURACY = "missing_accuracy";
    public static final String SIMULATION_MISSING_BEARING = "missing_bearing";
    public static final String SIMULATION_MISSING_SPEED = "missing_speed";
    public static final String SIMULATION_START = "simulation_start";
    public static final String TOUCHPAD_NAVIGATION_ENABLED = "touchpad_navigation_enabled";
    public static final String TOUCH_SCREEN_ENABLED = "touch_screen_enabled";
    private static final String USE_SUN_CALCULATOR = "use_sun_calculator";
    public static final String USE_TABLET_COMPASS = "use_tablet_compass_enabled";
    private static final String VOLUME_TOGGLE_DEBUG = "volume_toggle_debug";
    public static final String WIFI_AUTO_START = "wifi_auto_start";
    public static final String WIFI_SUPPORT_BAND_5G = "wifi_baud_5G";
    public static final String WIFI_SUPPORT_DUAL_BAND = "wifi_dual_baud";
    private final SharedPreferences mPreferences;

    public Settings(Context context) {
        this.mPreferences = PreferenceManager.getDefaultSharedPreferences(context);
    }

    private String getLocationSource() {
        return this.mPreferences.getString(LOCATION_SOURCE, "gps");
    }

    public boolean autoStartLocalMode() {
        return this.mPreferences.getBoolean(AUTO_START_LOCAL_MODE, false);
    }

    public String getCarBluetoothAddress() {
        return this.mPreferences.getString(CAR_BLUETOOTH_ADDRESS, "SKIP_THIS_BLUETOOTH");
    }

    public String getCarWifiPassword() {
        return this.mPreferences.getString(CAR_WIFI_PASSWORD, "wifiap1234");
    }

    public int getCarWifiSecurity() {
        return this.mPreferences.getInt(CAR_WIFI_SECURITY, 8);
    }

    public String getCarWifiSsid() {
        return this.mPreferences.getString(CAR_WIFI_SSID, "wifiap");
    }

    public float getEmulatedDpi() {
        try {
            return Integer.parseInt(this.mPreferences.getString(SCREEN_DPI, "240"));
        } catch (NumberFormatException unused) {
            return 160.0f;
        }
    }

    public int getEmulatedHeight() {
        try {
            return Integer.parseInt(this.mPreferences.getString(SCREEN_HEIGHT, "1080"));
        } catch (NumberFormatException unused) {
            return 480;
        }
    }

    public int getEmulatedWidth() {
        try {
            return Integer.parseInt(this.mPreferences.getString(SCREEN_WIDTH, "1920"));
        } catch (NumberFormatException unused) {
            return 800;
        }
    }

    public int getListenTcpPort() {
        int i2 = Integer.parseInt(this.mPreferences.getString(LISTEN_TCP_PORT, WifiEnterpriseConfig.ENGINE_DISABLE));
        if (i2 != 0) {
            return i2;
        }
        return 3333;
    }

    public String getObd2Device() {
        return this.mPreferences.getString(OBD2_DEVICE, null);
    }

    public String getSimulationFinish() {
        return this.mPreferences.getString(SIMULATION_FINISH, "");
    }

    public String getSimulationStart() {
        return this.mPreferences.getString(SIMULATION_START, "");
    }

    public int[] getSupportedBluetoothPairingMethods() {
        if (isBluetoothNumericComparisonSupported()) {
            return isBluetoothPinSupported() ? new int[]{Protos.BluetoothPairingMethod.BLUETOOTH_PAIRING_NUMERIC_COMPARISON.getNumber(), Protos.BluetoothPairingMethod.BLUETOOTH_PAIRING_PIN.getNumber()} : new int[]{Protos.BluetoothPairingMethod.BLUETOOTH_PAIRING_NUMERIC_COMPARISON.getNumber()};
        }
        return isBluetoothPinSupported() ? new int[]{Protos.BluetoothPairingMethod.BLUETOOTH_PAIRING_PIN.getNumber()} : new int[0];
    }

    public boolean getWifiAutoStart() {
        return this.mPreferences.getBoolean(WIFI_AUTO_START, true);
    }

    public boolean grantFocusOnStart() {
        return this.mPreferences.getBoolean(AUTO_START_PROJECTION, true);
    }

    public boolean isAAcEnabledForMedia() {
        return this.mPreferences.getBoolean(AUDIO_AAC_ENABLED_MEDIA, true);
    }

    public boolean isAAcEnabledForTts() {
        return this.mPreferences.getBoolean(AUDIO_AAC_ENABLED_TTS, false);
    }

    public boolean isBluetoothNumericComparisonSupported() {
        return this.mPreferences.getBoolean(CAR_SUPPORTS_BLUETOOTH_NUMERIC_COMPARISON, true);
    }

    public boolean isBluetoothPinSupported() {
        return this.mPreferences.getBoolean(CAR_SUPPORTS_BLUETOOTH_PIN, true);
    }

    public boolean isDebugMode() {
        return this.mPreferences.getBoolean(DEBUG_MODE, false);
    }

    public boolean isDualBandSupported() {
        return this.mPreferences.getBoolean(WIFI_SUPPORT_DUAL_BAND, false);
    }

    public boolean isFpsLimited() {
        return this.mPreferences.getBoolean(PREF_KEY_FPS_30, false);
    }

    public boolean isGpsSimulationEnabled() {
        return GPS_SIMULATION.equals(getLocationSource());
    }

    public boolean isGpsTabletEnabled() {
        return "gps".equals(getLocationSource());
    }

    public boolean isLHD() {
        return this.mPreferences.getString(CAR_MODE, "LHD").equals("LHD");
    }

    public boolean isMissingSensorsGeneratorEnabled() {
        return this.mPreferences.getBoolean(GENERATE_MISSING_SENSORS, false);
    }

    public boolean isObd2Enabled() {
        return this.mPreferences.getBoolean(OBD2_ENABLED, false);
    }

    public boolean isRestrictedAudioFocusUsed() {
        return this.mPreferences.getBoolean(PREF_KEY_USE_RESTRICTED_AUDIO_FOCUS_MODES, false);
    }

    public boolean isRotaryControllerEnabled() {
        return this.mPreferences.getBoolean(ROTARY_CONTROLLER_ENABLED, false);
    }

    public boolean isScaledToScreen() {
        return this.mPreferences.getBoolean(SCREEN_SCALE, true);
    }

    public boolean isSimulateMissingAccuracyEnabled() {
        return this.mPreferences.getBoolean(SIMULATION_MISSING_ACCURACY, false);
    }

    public boolean isSimulateMissingBearingEnabled() {
        return this.mPreferences.getBoolean(SIMULATION_MISSING_BEARING, false);
    }

    public boolean isSimulateMissingSpeedEnabled() {
        return this.mPreferences.getBoolean(SIMULATION_MISSING_SPEED, false);
    }

    public boolean isSupport5GBand() {
        return this.mPreferences.getBoolean(WIFI_SUPPORT_BAND_5G, false);
    }

    public boolean isTouchScreenEnabled() {
        return this.mPreferences.getBoolean(TOUCH_SCREEN_ENABLED, true);
    }

    public boolean isTouchpadNavigationEnabled() {
        return this.mPreferences.getBoolean(TOUCHPAD_NAVIGATION_ENABLED, true);
    }

    public boolean isUseTabletCompassEnabled() {
        return this.mPreferences.getBoolean(USE_TABLET_COMPASS, false);
    }

    public boolean showVideoFocusDialog() {
        return this.mPreferences.getBoolean(SHOW_VIDEO_FOCUS_DIALOG, false);
    }

    public boolean useSunCalculator() {
        return this.mPreferences.getBoolean(USE_SUN_CALCULATOR, false);
    }

    public boolean volumeToggleDebug() {
        return this.mPreferences.getBoolean(VOLUME_TOGGLE_DEBUG, false);
    }

    public void writeKeyValue(String str, String str2) {
        this.mPreferences.edit().putString(str, str2).apply();
    }

    public void writeKeyValue(String str, Boolean bool) {
        this.mPreferences.edit().putBoolean(str, bool.booleanValue()).apply();
    }
}
