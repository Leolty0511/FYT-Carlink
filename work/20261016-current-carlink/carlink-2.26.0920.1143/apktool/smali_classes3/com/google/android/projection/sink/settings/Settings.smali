.class public Lcom/google/android/projection/sink/settings/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_AAC_ENABLED_MEDIA:Ljava/lang/String; = "use_aac_for_media_stream"

.field public static final AUDIO_AAC_ENABLED_TTS:Ljava/lang/String; = "use_aac_for_tts_stream"

.field public static final AUTO_START_LOCAL_MODE:Ljava/lang/String; = "auto_start_local_mode"

.field public static final AUTO_START_PROJECTION:Ljava/lang/String; = "auto_start_projection"

.field public static final CAR_BLUETOOTH_ADDRESS:Ljava/lang/String; = "car_bluetooth_address"

.field public static final CAR_MODE:Ljava/lang/String; = "car_mode"

.field public static final CAR_SUPPORTS_BLUETOOTH_NUMERIC_COMPARISON:Ljava/lang/String; = "car_supports_bluetooth_numeric_comparison"

.field public static final CAR_SUPPORTS_BLUETOOTH_PIN:Ljava/lang/String; = "car_supports_bluetooth_pin"

.field public static final CAR_WIFI_PASSWORD:Ljava/lang/String; = "car_wifi_password"

.field public static final CAR_WIFI_SECURITY:Ljava/lang/String; = "car_wifi_security"

.field public static final CAR_WIFI_SSID:Ljava/lang/String; = "car_wifi_ssid"

.field public static final DEBUG_MODE:Ljava/lang/String; = "debug_mode"

.field public static final GENERATE_MISSING_SENSORS:Ljava/lang/String; = "generate_missing_sensors"

.field public static final GPS_SIMULATION:Ljava/lang/String; = "simulation"

.field public static final GPS_TABLET:Ljava/lang/String; = "gps"

.field public static final LISTEN_TCP_PORT:Ljava/lang/String; = "listen_tcp_port"

.field public static final LOCATION_SOURCE:Ljava/lang/String; = "location_source_list"

.field public static final OBD2_DEVICE:Ljava/lang/String; = "obd2_device"

.field public static final OBD2_ENABLED:Ljava/lang/String; = "use_obd2_enabled"

.field public static final PREF_KEY_FPS_30:Ljava/lang/String; = "framerate_restrict_to_30"

.field public static final PREF_KEY_USE_RESTRICTED_AUDIO_FOCUS_MODES:Ljava/lang/String; = "audio_focus_use_restricted_mode"

.field public static final ROTARY_CONTROLLER_ENABLED:Ljava/lang/String; = "rotary_controller_enabled"

.field public static final SCREEN_DPI:Ljava/lang/String; = "screen_dpi"

.field public static final SCREEN_HEIGHT:Ljava/lang/String; = "screen_height"

.field public static final SCREEN_SCALE:Ljava/lang/String; = "scale_checkbox"

.field public static final SCREEN_WIDTH:Ljava/lang/String; = "screen_width"

.field private static final SHOW_VIDEO_FOCUS_DIALOG:Ljava/lang/String; = "show_vf_dialog"

.field public static final SIMULATION_FINISH:Ljava/lang/String; = "simulation_end"

.field public static final SIMULATION_MISSING_ACCURACY:Ljava/lang/String; = "missing_accuracy"

.field public static final SIMULATION_MISSING_BEARING:Ljava/lang/String; = "missing_bearing"

.field public static final SIMULATION_MISSING_SPEED:Ljava/lang/String; = "missing_speed"

.field public static final SIMULATION_START:Ljava/lang/String; = "simulation_start"

.field public static final TOUCHPAD_NAVIGATION_ENABLED:Ljava/lang/String; = "touchpad_navigation_enabled"

.field public static final TOUCH_SCREEN_ENABLED:Ljava/lang/String; = "touch_screen_enabled"

.field private static final USE_SUN_CALCULATOR:Ljava/lang/String; = "use_sun_calculator"

.field public static final USE_TABLET_COMPASS:Ljava/lang/String; = "use_tablet_compass_enabled"

.field private static final VOLUME_TOGGLE_DEBUG:Ljava/lang/String; = "volume_toggle_debug"

.field public static final WIFI_AUTO_START:Ljava/lang/String; = "wifi_auto_start"

.field public static final WIFI_SUPPORT_BAND_5G:Ljava/lang/String; = "wifi_baud_5G"

.field public static final WIFI_SUPPORT_DUAL_BAND:Ljava/lang/String; = "wifi_dual_baud"


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    return-void
.end method

.method private getLocationSource()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "location_source_list"

    const-string v2, "gps"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public autoStartLocalMode()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_start_local_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCarBluetoothAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_bluetooth_address"

    const-string v2, "SKIP_THIS_BLUETOOTH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarWifiPassword()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_wifi_password"

    const-string v2, "wifiap1234"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarWifiSecurity()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_wifi_security"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarWifiSsid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_wifi_ssid"

    const-string v2, "wifiap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmulatedDpi()F
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_dpi"

    const-string v2, "240"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    return v0

    :catch_0
    const/high16 v0, 0x43200000    # 160.0f

    return v0
.end method

.method public getEmulatedHeight()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_height"

    const-string v2, "1080"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 v0, 0x1e0

    return v0
.end method

.method public getEmulatedWidth()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_width"

    const-string v2, "1920"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 v0, 0x320

    return v0
.end method

.method public getListenTcpPort()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "listen_tcp_port"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd05

    :goto_0
    return v0
.end method

.method public getObd2Device()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "obd2_device"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimulationFinish()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "simulation_end"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimulationStart()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "simulation_start"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedBluetoothPairingMethods()[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/settings/Settings;->isBluetoothNumericComparisonSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/projection/sink/settings/Settings;->isBluetoothPinSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    sget-object v3, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_NUMERIC_COMPARISON:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->getNumber()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput v3, v0, v2

    .line 25
    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PIN:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->getNumber()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    aput v2, v0, v1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    new-array v0, v1, [I

    .line 36
    .line 37
    sget-object v1, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_NUMERIC_COMPARISON:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->getNumber()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aput v1, v0, v2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/settings/Settings;->isBluetoothPinSupported()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-array v0, v1, [I

    .line 53
    .line 54
    sget-object v1, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PIN:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->getNumber()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    aput v1, v0, v2

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    new-array v0, v2, [I

    .line 64
    .line 65
    return-object v0
.end method

.method public getWifiAutoStart()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wifi_auto_start"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public grantFocusOnStart()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_start_projection"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAAcEnabledForMedia()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_aac_for_media_stream"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAAcEnabledForTts()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_aac_for_tts_stream"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothNumericComparisonSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_supports_bluetooth_numeric_comparison"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothPinSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_supports_bluetooth_pin"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebugMode()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wifi_dual_baud"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFpsLimited()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "framerate_restrict_to_30"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGpsSimulationEnabled()Z
    .locals 2

    .line 1
    const-string v0, "simulation"

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/sink/settings/Settings;->getLocationSource()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isGpsTabletEnabled()Z
    .locals 2

    .line 1
    const-string v0, "gps"

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/sink/settings/Settings;->getLocationSource()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isLHD()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_mode"

    const-string v2, "LHD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMissingSensorsGeneratorEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "generate_missing_sensors"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isObd2Enabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_obd2_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRestrictedAudioFocusUsed()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "audio_focus_use_restricted_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRotaryControllerEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "rotary_controller_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isScaledToScreen()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "scale_checkbox"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSimulateMissingAccuracyEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "missing_accuracy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSimulateMissingBearingEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "missing_bearing"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSimulateMissingSpeedEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "missing_speed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSupport5GBand()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wifi_baud_5G"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTouchScreenEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "touch_screen_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTouchpadNavigationEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "touchpad_navigation_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUseTabletCompassEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_tablet_compass_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showVideoFocusDialog()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_vf_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useSunCalculator()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_sun_calculator"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public volumeToggleDebug()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "volume_toggle_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/Settings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
