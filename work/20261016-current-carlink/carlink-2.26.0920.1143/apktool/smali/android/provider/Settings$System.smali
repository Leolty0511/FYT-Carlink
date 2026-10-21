.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$System$InclusiveFloatRangeValidator;,
        Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;,
        Landroid/provider/Settings$System$DiscreteValueValidator;,
        Landroid/provider/Settings$System$Validator;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field public static final ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field private static final ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field public static final ALARM_ALERT_CACHE:Ljava/lang/String; = "alarm_alert_cache"

.field public static final ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

.field private static final ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field private static final BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON_LIGHT_OFF_TIMEOUT:Ljava/lang/String; = "button_light_off_timeout"

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DISPLAY_COLOR_MODE:Ljava/lang/String; = "display_color_mode"

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final EGG_MODE:Ljava/lang/String; = "egg_mode"

.field public static final EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field private static final END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field private static final FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"

.field public static final LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"

.field public static final LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASTER_MONO:Ljava/lang/String; = "master_mono"

.field private static final MASTER_MONO_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field private static final MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field private static final MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final NOTIFICATION_SOUND_CACHE:Ljava/lang/String; = "notification_sound_cache"

.field public static final NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

.field private static final NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POINTER_SPEED:Ljava/lang/String; = "pointer_speed"

.field public static final POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final RINGTONE_CACHE:Ljava/lang/String; = "ringtone_cache"

.field public static final RINGTONE_CACHE_URI:Landroid/net/Uri;

.field private static final RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_FOR_VR:Ljava/lang/String; = "screen_brightness_for_vr"

.field private static final SCREEN_BRIGHTNESS_FOR_VR_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field private static final SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_BATTERY_PERCENT:Ljava/lang/String; = "status_bar_show_battery_percent"

.field private static final SHOW_BATTERY_PERCENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field private static final SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field public static final SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYSTEM_LOCALES:Ljava/lang/String; = "system_locales"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field private static final TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field private static final TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field private static final TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_ROTATION:Ljava/lang/String; = "user_rotation"

.field public static final USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$System$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"

.field private static final VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field private static final VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VOLUME_ACCESSIBILITY:Ljava/lang/String; = "volume_a11y"

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MASTER:Ljava/lang/String; = "volume_master"

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final VOLUME_SETTINGS_INT:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"

.field public static final WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final sBooleanValidator:Landroid/provider/Settings$System$Validator;

.field private static final sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

.field private static final sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private static final sUriValidator:Landroid/provider/Settings$System$Validator;


# direct methods
.method public static constructor <clinit>()V
    .locals 73

    .line 1
    const-string v0, "content://settings/system"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    new-instance v1, Landroid/provider/Settings$ContentProviderHolder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 15
    .line 16
    new-instance v2, Landroid/provider/Settings$NameValueCache;

    .line 17
    .line 18
    const-string v3, "GET_system"

    .line 19
    .line 20
    const-string v4, "PUT_system"

    .line 21
    .line 22
    invoke-direct {v2, v0, v3, v4, v1}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashSet;

    .line 28
    .line 29
    const/16 v1, 0x1e

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 35
    .line 36
    const-string v1, "android_id"

    .line 37
    .line 38
    const-string/jumbo v2, "http_proxy"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v3, "location_providers_allowed"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v4, "lock_biometric_weak_flags"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "lock_pattern_autolock"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v3, "lock_pattern_visible_pattern"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v4, "lock_pattern_tactile_feedback_enabled"

    .line 57
    .line 58
    .line 59
    const-string/jumbo v5, "logging_id"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "parental_control_enabled"

    .line 66
    .line 67
    .line 68
    const-string/jumbo v3, "parental_control_last_update"

    .line 69
    .line 70
    .line 71
    const-string/jumbo v4, "parental_control_redirect_url"

    .line 72
    .line 73
    .line 74
    const-string/jumbo v5, "settings_classname"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v1, "use_google_mail"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v3, "wifi_networks_available_notification_on"

    .line 84
    .line 85
    .line 86
    const-string/jumbo v4, "wifi_networks_available_repeat_delay"

    .line 87
    .line 88
    .line 89
    const-string/jumbo v5, "wifi_num_open_networks_kept"

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v1, "wifi_on"

    .line 96
    .line 97
    .line 98
    const-string/jumbo v3, "wifi_watchdog_acceptable_packet_loss_percentage"

    .line 99
    .line 100
    .line 101
    const-string/jumbo v4, "wifi_watchdog_ap_count"

    .line 102
    .line 103
    .line 104
    const-string/jumbo v5, "wifi_watchdog_background_check_delay_ms"

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "wifi_watchdog_background_check_enabled"

    .line 111
    .line 112
    .line 113
    const-string/jumbo v3, "wifi_watchdog_background_check_timeout_ms"

    .line 114
    .line 115
    .line 116
    const-string/jumbo v4, "wifi_watchdog_initial_ignored_ping_count"

    .line 117
    .line 118
    .line 119
    const-string/jumbo v5, "wifi_watchdog_max_ap_checks"

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v1, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string/jumbo v1, "wifi_watchdog_on"

    .line 126
    .line 127
    .line 128
    const-string/jumbo v3, "wifi_watchdog_ping_count"

    .line 129
    .line 130
    .line 131
    const-string/jumbo v4, "wifi_watchdog_ping_delay_ms"

    .line 132
    .line 133
    .line 134
    const-string/jumbo v5, "wifi_watchdog_ping_timeout_ms"

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo v1, "install_non_market_apps"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v0, Ljava/util/HashSet;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    .line 150
    .line 151
    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 152
    .line 153
    new-instance v1, Ljava/util/HashSet;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 156
    .line 157
    .line 158
    sput-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 159
    .line 160
    const-string v3, "adb_enabled"

    .line 161
    .line 162
    const-string v4, "bluetooth_on"

    .line 163
    .line 164
    const-string v5, "data_roaming"

    .line 165
    .line 166
    const-string v6, "device_provisioned"

    .line 167
    .line 168
    invoke-static {v1, v3, v4, v5, v6}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string/jumbo v3, "usb_mass_storage_enabled"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    const-string v1, "airplane_mode_on"

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    const-string v1, "airplane_mode_radios"

    .line 186
    .line 187
    const-string v2, "airplane_mode_toggleable_radios"

    .line 188
    .line 189
    const-string v3, "auto_time"

    .line 190
    .line 191
    const-string v4, "auto_time_zone"

    .line 192
    .line 193
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v1, "car_dock_sound"

    .line 197
    .line 198
    const-string v2, "car_undock_sound"

    .line 199
    .line 200
    const-string v3, "desk_dock_sound"

    .line 201
    .line 202
    const-string v4, "desk_undock_sound"

    .line 203
    .line 204
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v2, "dock_sounds_enabled"

    .line 208
    .line 209
    const-string/jumbo v3, "lock_sound"

    .line 210
    .line 211
    .line 212
    const-string/jumbo v4, "unlock_sound"

    .line 213
    .line 214
    .line 215
    const-string/jumbo v5, "low_battery_sound"

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string/jumbo v2, "power_sounds_enabled"

    .line 222
    .line 223
    .line 224
    const-string/jumbo v3, "stay_on_while_plugged_in"

    .line 225
    .line 226
    .line 227
    const-string/jumbo v4, "wifi_sleep_policy"

    .line 228
    .line 229
    .line 230
    const-string/jumbo v5, "mode_ringer"

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string/jumbo v2, "window_animation_scale"

    .line 237
    .line 238
    .line 239
    const-string/jumbo v3, "transition_animation_scale"

    .line 240
    .line 241
    .line 242
    const-string v4, "animator_duration_scale"

    .line 243
    .line 244
    const-string v5, "fancy_ime_animations"

    .line 245
    .line 246
    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v2, "compatibility_mode"

    .line 250
    .line 251
    const-string v3, "emergency_tone"

    .line 252
    .line 253
    const-string v4, "call_auto_retry"

    .line 254
    .line 255
    const-string v5, "debug_app"

    .line 256
    .line 257
    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string/jumbo v2, "wait_for_debugger"

    .line 261
    .line 262
    .line 263
    const-string v3, "always_finish_activities"

    .line 264
    .line 265
    const-string/jumbo v4, "tzinfo_content_url"

    .line 266
    .line 267
    .line 268
    const-string/jumbo v5, "tzinfo_metadata_url"

    .line 269
    .line 270
    .line 271
    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string/jumbo v2, "selinux_content_url"

    .line 275
    .line 276
    .line 277
    const-string/jumbo v3, "selinux_metadata_url"

    .line 278
    .line 279
    .line 280
    const-string/jumbo v4, "sms_short_codes_content_url"

    .line 281
    .line 282
    .line 283
    const-string/jumbo v5, "sms_short_codes_metadata_url"

    .line 284
    .line 285
    .line 286
    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/m;->y(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string v2, "cert_pin_content_url"

    .line 290
    .line 291
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    const-string v2, "cert_pin_metadata_url"

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    const-string/jumbo v2, "hostapd_support_channels"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    const-string/jumbo v2, "is_support_5g_channel_choose"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    .line 312
    .line 313
    const-string v2, "0"

    .line 314
    .line 315
    const-string v3, "1"

    .line 316
    .line 317
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-direct {v0, v2}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sput-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    .line 325
    .line 326
    new-instance v2, Landroid/provider/Settings$System$1;

    .line 327
    .line 328
    invoke-direct {v2}, Landroid/provider/Settings$System$1;-><init>()V

    .line 329
    .line 330
    .line 331
    sput-object v2, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    .line 332
    .line 333
    new-instance v3, Landroid/provider/Settings$System$2;

    .line 334
    .line 335
    invoke-direct {v3}, Landroid/provider/Settings$System$2;-><init>()V

    .line 336
    .line 337
    .line 338
    sput-object v3, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    .line 339
    .line 340
    new-instance v4, Landroid/provider/Settings$System$3;

    .line 341
    .line 342
    invoke-direct {v4}, Landroid/provider/Settings$System$3;-><init>()V

    .line 343
    .line 344
    .line 345
    sput-object v4, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    .line 346
    .line 347
    new-instance v5, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    .line 348
    .line 349
    const/4 v6, 0x0

    .line 350
    const/4 v7, 0x3

    .line 351
    invoke-direct {v5, v6, v7}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 352
    .line 353
    .line 354
    sput-object v5, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 355
    .line 356
    sput-object v0, Landroid/provider/Settings$System;->ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 357
    .line 358
    sput-object v0, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 359
    .line 360
    sput-object v4, Landroid/provider/Settings$System;->WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 361
    .line 362
    sput-object v4, Landroid/provider/Settings$System;->WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 363
    .line 364
    sput-object v4, Landroid/provider/Settings$System;->WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 365
    .line 366
    sput-object v4, Landroid/provider/Settings$System;->WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 367
    .line 368
    sput-object v4, Landroid/provider/Settings$System;->WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 369
    .line 370
    new-instance v7, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    .line 371
    .line 372
    const/4 v8, 0x2

    .line 373
    invoke-direct {v7, v6, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 374
    .line 375
    .line 376
    sput-object v7, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 377
    .line 378
    sput-object v2, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 379
    .line 380
    new-instance v8, Landroid/provider/Settings$System$4;

    .line 381
    .line 382
    invoke-direct {v8}, Landroid/provider/Settings$System$4;-><init>()V

    .line 383
    .line 384
    .line 385
    sput-object v8, Landroid/provider/Settings$System;->NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 386
    .line 387
    new-instance v9, Landroid/provider/Settings$System$5;

    .line 388
    .line 389
    invoke-direct {v9}, Landroid/provider/Settings$System$5;-><init>()V

    .line 390
    .line 391
    .line 392
    sput-object v9, Landroid/provider/Settings$System;->FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 393
    .line 394
    sput-object v0, Landroid/provider/Settings$System;->DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 395
    .line 396
    sput-object v2, Landroid/provider/Settings$System;->SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 397
    .line 398
    new-instance v10, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    .line 399
    .line 400
    const/16 v11, 0xff

    .line 401
    .line 402
    invoke-direct {v10, v6, v11}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 403
    .line 404
    .line 405
    sput-object v10, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 406
    .line 407
    new-instance v11, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    .line 408
    .line 409
    const/16 v12, 0xff

    .line 410
    .line 411
    invoke-direct {v11, v6, v12}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 412
    .line 413
    .line 414
    sput-object v11, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_FOR_VR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 415
    .line 416
    sput-object v0, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 417
    .line 418
    new-instance v6, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    .line 419
    .line 420
    const/high16 v12, -0x40800000    # -1.0f

    .line 421
    .line 422
    const/high16 v13, 0x3f800000    # 1.0f

    .line 423
    .line 424
    invoke-direct {v6, v12, v13}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    .line 425
    .line 426
    .line 427
    sput-object v6, Landroid/provider/Settings$System;->SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 428
    .line 429
    sput-object v2, Landroid/provider/Settings$System;->MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 430
    .line 431
    sput-object v2, Landroid/provider/Settings$System;->MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 432
    .line 433
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 434
    .line 435
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 436
    .line 437
    sput-object v0, Landroid/provider/Settings$System;->MASTER_MONO_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 438
    .line 439
    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 440
    .line 441
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 442
    .line 443
    const-string/jumbo v14, "volume_voice"

    .line 444
    .line 445
    .line 446
    const-string/jumbo v15, "volume_system"

    .line 447
    .line 448
    .line 449
    const-string/jumbo v16, "volume_ring"

    .line 450
    .line 451
    .line 452
    const-string/jumbo v17, "volume_music"

    .line 453
    .line 454
    .line 455
    const-string/jumbo v18, "volume_alarm"

    .line 456
    .line 457
    .line 458
    const-string/jumbo v19, "volume_notification"

    .line 459
    .line 460
    .line 461
    const-string/jumbo v20, "volume_bluetooth_sco"

    .line 462
    .line 463
    .line 464
    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v12

    .line 468
    sput-object v12, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 469
    .line 470
    const-string/jumbo v13, "volume_voice"

    .line 471
    .line 472
    .line 473
    const-string/jumbo v14, "volume_system"

    .line 474
    .line 475
    .line 476
    const-string/jumbo v15, "volume_ring"

    .line 477
    .line 478
    .line 479
    const-string/jumbo v16, "volume_music"

    .line 480
    .line 481
    .line 482
    const-string/jumbo v17, "volume_alarm"

    .line 483
    .line 484
    .line 485
    const-string/jumbo v18, "volume_notification"

    .line 486
    .line 487
    .line 488
    const-string/jumbo v19, "volume_bluetooth_sco"

    .line 489
    .line 490
    .line 491
    const-string v20, ""

    .line 492
    .line 493
    const-string v21, ""

    .line 494
    .line 495
    const-string v22, ""

    .line 496
    .line 497
    const-string/jumbo v23, "volume_a11y"

    .line 498
    .line 499
    .line 500
    filled-new-array/range {v13 .. v23}, [Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v12

    .line 504
    sput-object v12, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    .line 505
    .line 506
    sput-object v3, Landroid/provider/Settings$System;->RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 507
    .line 508
    const-string/jumbo v12, "ringtone"

    .line 509
    .line 510
    .line 511
    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 512
    .line 513
    .line 514
    move-result-object v13

    .line 515
    sput-object v13, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 516
    .line 517
    const-string/jumbo v13, "ringtone_cache"

    .line 518
    .line 519
    .line 520
    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 521
    .line 522
    .line 523
    move-result-object v13

    .line 524
    sput-object v13, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    .line 525
    .line 526
    sput-object v3, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 527
    .line 528
    const-string/jumbo v13, "notification_sound"

    .line 529
    .line 530
    .line 531
    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 532
    .line 533
    .line 534
    move-result-object v14

    .line 535
    sput-object v14, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 536
    .line 537
    const-string/jumbo v14, "notification_sound_cache"

    .line 538
    .line 539
    .line 540
    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 541
    .line 542
    .line 543
    move-result-object v14

    .line 544
    sput-object v14, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    .line 545
    .line 546
    sput-object v3, Landroid/provider/Settings$System;->ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 547
    .line 548
    const-string v14, "alarm_alert"

    .line 549
    .line 550
    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 551
    .line 552
    .line 553
    move-result-object v15

    .line 554
    sput-object v15, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 555
    .line 556
    const-string v15, "alarm_alert_cache"

    .line 557
    .line 558
    invoke-static {v15}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 559
    .line 560
    .line 561
    move-result-object v15

    .line 562
    sput-object v15, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    .line 563
    .line 564
    new-instance v15, Landroid/provider/Settings$System$6;

    .line 565
    .line 566
    invoke-direct {v15}, Landroid/provider/Settings$System$6;-><init>()V

    .line 567
    .line 568
    .line 569
    sput-object v15, Landroid/provider/Settings$System;->MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 570
    .line 571
    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 572
    .line 573
    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 574
    .line 575
    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 576
    .line 577
    sput-object v0, Landroid/provider/Settings$System;->TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 578
    .line 579
    sput-object v0, Landroid/provider/Settings$System;->SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 580
    .line 581
    move-object/from16 v16, v4

    .line 582
    .line 583
    new-instance v4, Landroid/provider/Settings$System$7;

    .line 584
    .line 585
    invoke-direct {v4}, Landroid/provider/Settings$System$7;-><init>()V

    .line 586
    .line 587
    .line 588
    sput-object v4, Landroid/provider/Settings$System;->WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 589
    .line 590
    move-object/from16 v17, v15

    .line 591
    .line 592
    new-instance v15, Landroid/provider/Settings$System$DiscreteValueValidator;

    .line 593
    .line 594
    move-object/from16 v18, v6

    .line 595
    .line 596
    const-string v6, "12"

    .line 597
    .line 598
    move-object/from16 v19, v4

    .line 599
    .line 600
    const-string v4, "24"

    .line 601
    .line 602
    filled-new-array {v6, v4}, [Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    invoke-direct {v15, v4}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    sput-object v15, Landroid/provider/Settings$System;->TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 610
    .line 611
    new-instance v4, Landroid/provider/Settings$System$8;

    .line 612
    .line 613
    invoke-direct {v4}, Landroid/provider/Settings$System$8;-><init>()V

    .line 614
    .line 615
    .line 616
    sput-object v4, Landroid/provider/Settings$System;->DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 617
    .line 618
    sput-object v0, Landroid/provider/Settings$System;->SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 619
    .line 620
    sput-object v0, Landroid/provider/Settings$System;->ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 621
    .line 622
    new-instance v6, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    .line 623
    .line 624
    move-object/from16 v20, v4

    .line 625
    .line 626
    const/4 v4, 0x0

    .line 627
    move-object/from16 v21, v15

    .line 628
    .line 629
    const/4 v15, 0x3

    .line 630
    invoke-direct {v6, v4, v15}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 631
    .line 632
    .line 633
    sput-object v6, Landroid/provider/Settings$System;->USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 634
    .line 635
    sput-object v0, Landroid/provider/Settings$System;->HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 636
    .line 637
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 638
    .line 639
    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 640
    .line 641
    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 642
    .line 643
    sput-object v0, Landroid/provider/Settings$System;->HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 644
    .line 645
    move-object/from16 v22, v6

    .line 646
    .line 647
    new-instance v6, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    .line 648
    .line 649
    invoke-direct {v6, v4, v15}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 650
    .line 651
    .line 652
    sput-object v6, Landroid/provider/Settings$System;->TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 653
    .line 654
    sput-object v0, Landroid/provider/Settings$System;->SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 655
    .line 656
    sput-object v0, Landroid/provider/Settings$System;->HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 657
    .line 658
    sput-object v0, Landroid/provider/Settings$System;->SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 659
    .line 660
    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 661
    .line 662
    sput-object v0, Landroid/provider/Settings$System;->POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 663
    .line 664
    sput-object v0, Landroid/provider/Settings$System;->SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 665
    .line 666
    sput-object v0, Landroid/provider/Settings$System;->WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 667
    .line 668
    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 669
    .line 670
    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 671
    .line 672
    sput-object v0, Landroid/provider/Settings$System;->SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 673
    .line 674
    new-instance v4, Landroid/provider/Settings$System$DiscreteValueValidator;

    .line 675
    .line 676
    const-string v15, "SIP_ALWAYS"

    .line 677
    .line 678
    move-object/from16 v23, v6

    .line 679
    .line 680
    const-string v6, "SIP_ADDRESS_ONLY"

    .line 681
    .line 682
    move-object/from16 v24, v3

    .line 683
    .line 684
    filled-new-array {v15, v6}, [Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-direct {v4, v3}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    sput-object v4, Landroid/provider/Settings$System;->SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 692
    .line 693
    sput-object v0, Landroid/provider/Settings$System;->SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 694
    .line 695
    sput-object v0, Landroid/provider/Settings$System;->SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 696
    .line 697
    sput-object v0, Landroid/provider/Settings$System;->SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 698
    .line 699
    new-instance v3, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    .line 700
    .line 701
    move-object/from16 v25, v4

    .line 702
    .line 703
    const/high16 v4, -0x3f200000    # -7.0f

    .line 704
    .line 705
    move-object/from16 v26, v11

    .line 706
    .line 707
    const/high16 v11, 0x40e00000    # 7.0f

    .line 708
    .line 709
    invoke-direct {v3, v4, v11}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    .line 710
    .line 711
    .line 712
    sput-object v3, Landroid/provider/Settings$System;->POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 713
    .line 714
    sput-object v0, Landroid/provider/Settings$System;->LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 715
    .line 716
    new-instance v4, Landroid/provider/Settings$System$9;

    .line 717
    .line 718
    invoke-direct {v4}, Landroid/provider/Settings$System$9;-><init>()V

    .line 719
    .line 720
    .line 721
    sput-object v4, Landroid/provider/Settings$System;->EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 722
    .line 723
    sput-object v0, Landroid/provider/Settings$System;->SHOW_BATTERY_PERCENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 724
    .line 725
    const-string/jumbo v27, "stay_on_while_plugged_in"

    .line 726
    .line 727
    .line 728
    const-string/jumbo v28, "wifi_use_static_ip"

    .line 729
    .line 730
    .line 731
    const-string/jumbo v29, "wifi_static_ip"

    .line 732
    .line 733
    .line 734
    const-string/jumbo v30, "wifi_static_gateway"

    .line 735
    .line 736
    .line 737
    const-string/jumbo v31, "wifi_static_netmask"

    .line 738
    .line 739
    .line 740
    const-string/jumbo v32, "wifi_static_dns1"

    .line 741
    .line 742
    .line 743
    const-string/jumbo v33, "wifi_static_dns2"

    .line 744
    .line 745
    .line 746
    const-string v34, "bluetooth_discoverability"

    .line 747
    .line 748
    const-string v35, "bluetooth_discoverability_timeout"

    .line 749
    .line 750
    const-string v36, "font_scale"

    .line 751
    .line 752
    const-string v37, "dim_screen"

    .line 753
    .line 754
    const-string/jumbo v38, "screen_off_timeout"

    .line 755
    .line 756
    .line 757
    const-string/jumbo v39, "screen_brightness"

    .line 758
    .line 759
    .line 760
    const-string/jumbo v40, "screen_brightness_mode"

    .line 761
    .line 762
    .line 763
    const-string/jumbo v41, "screen_auto_brightness_adj"

    .line 764
    .line 765
    .line 766
    const-string/jumbo v42, "screen_brightness_for_vr"

    .line 767
    .line 768
    .line 769
    const-string/jumbo v43, "vibrate_input_devices"

    .line 770
    .line 771
    .line 772
    const-string/jumbo v44, "mode_ringer_streams_affected"

    .line 773
    .line 774
    .line 775
    const-string v45, "auto_replace"

    .line 776
    .line 777
    const-string v46, "auto_caps"

    .line 778
    .line 779
    const-string v47, "auto_punctuate"

    .line 780
    .line 781
    const-string/jumbo v48, "show_password"

    .line 782
    .line 783
    .line 784
    const-string v49, "auto_time"

    .line 785
    .line 786
    const-string v50, "auto_time_zone"

    .line 787
    .line 788
    const-string/jumbo v51, "time_12_24"

    .line 789
    .line 790
    .line 791
    const-string v52, "date_format"

    .line 792
    .line 793
    const-string v53, "dtmf_tone"

    .line 794
    .line 795
    const-string v54, "dtmf_tone_type"

    .line 796
    .line 797
    const-string/jumbo v55, "hearing_aid"

    .line 798
    .line 799
    .line 800
    const-string/jumbo v56, "tty_mode"

    .line 801
    .line 802
    .line 803
    const-string/jumbo v57, "master_mono"

    .line 804
    .line 805
    .line 806
    const-string/jumbo v58, "sound_effects_enabled"

    .line 807
    .line 808
    .line 809
    const-string/jumbo v59, "haptic_feedback_enabled"

    .line 810
    .line 811
    .line 812
    const-string/jumbo v60, "power_sounds_enabled"

    .line 813
    .line 814
    .line 815
    const-string v61, "dock_sounds_enabled"

    .line 816
    .line 817
    const-string/jumbo v62, "lockscreen_sounds_enabled"

    .line 818
    .line 819
    .line 820
    const-string/jumbo v63, "show_web_suggestions"

    .line 821
    .line 822
    .line 823
    const-string/jumbo v64, "sip_call_options"

    .line 824
    .line 825
    .line 826
    const-string/jumbo v65, "sip_receive_calls"

    .line 827
    .line 828
    .line 829
    const-string/jumbo v66, "pointer_speed"

    .line 830
    .line 831
    .line 832
    const-string/jumbo v67, "vibrate_when_ringing"

    .line 833
    .line 834
    .line 835
    const-string/jumbo v68, "ringtone"

    .line 836
    .line 837
    .line 838
    const-string/jumbo v69, "lock_to_app_enabled"

    .line 839
    .line 840
    .line 841
    const-string/jumbo v70, "notification_sound"

    .line 842
    .line 843
    .line 844
    const-string v71, "accelerometer_rotation"

    .line 845
    .line 846
    const-string/jumbo v72, "status_bar_show_battery_percent"

    .line 847
    .line 848
    .line 849
    filled-new-array/range {v27 .. v72}, [Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v11

    .line 853
    sput-object v11, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 854
    .line 855
    const/4 v11, 0x0

    .line 856
    new-array v11, v11, [Ljava/lang/String;

    .line 857
    .line 858
    sput-object v11, Landroid/provider/Settings$System;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    .line 859
    .line 860
    new-instance v11, Landroid/util/ArraySet;

    .line 861
    .line 862
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 863
    .line 864
    .line 865
    sput-object v11, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    .line 866
    .line 867
    move-object/from16 v27, v4

    .line 868
    .line 869
    const-string v4, "end_button_behavior"

    .line 870
    .line 871
    move-object/from16 v28, v3

    .line 872
    .line 873
    const-string/jumbo v3, "wifi_use_static_ip"

    .line 874
    .line 875
    .line 876
    move-object/from16 v29, v10

    .line 877
    .line 878
    const-string/jumbo v10, "wifi_static_ip"

    .line 879
    .line 880
    .line 881
    move-object/from16 v30, v9

    .line 882
    .line 883
    const-string/jumbo v9, "wifi_static_gateway"

    .line 884
    .line 885
    .line 886
    invoke-static {v11, v4, v3, v10, v9}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    const-string/jumbo v9, "wifi_static_netmask"

    .line 890
    .line 891
    .line 892
    const-string/jumbo v10, "wifi_static_dns1"

    .line 893
    .line 894
    .line 895
    move-object/from16 v31, v8

    .line 896
    .line 897
    const-string/jumbo v8, "wifi_static_dns2"

    .line 898
    .line 899
    .line 900
    move-object/from16 v32, v2

    .line 901
    .line 902
    const-string v2, "bluetooth_discoverability"

    .line 903
    .line 904
    invoke-static {v11, v9, v10, v8, v2}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    const-string v2, "bluetooth_discoverability_timeout"

    .line 908
    .line 909
    const-string/jumbo v8, "next_alarm_formatted"

    .line 910
    .line 911
    .line 912
    const-string v9, "font_scale"

    .line 913
    .line 914
    const-string v10, "dim_screen"

    .line 915
    .line 916
    invoke-static {v11, v2, v8, v9, v10}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    const-string/jumbo v2, "screen_off_timeout"

    .line 920
    .line 921
    .line 922
    const-string/jumbo v8, "screen_brightness"

    .line 923
    .line 924
    .line 925
    const-string/jumbo v10, "screen_brightness_mode"

    .line 926
    .line 927
    .line 928
    move-object/from16 v33, v9

    .line 929
    .line 930
    const-string/jumbo v9, "mode_ringer_streams_affected"

    .line 931
    .line 932
    .line 933
    invoke-static {v11, v2, v8, v10, v9}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    const-string/jumbo v2, "mute_streams_affected"

    .line 937
    .line 938
    .line 939
    const-string/jumbo v8, "vibrate_on"

    .line 940
    .line 941
    .line 942
    const-string/jumbo v9, "volume_ring"

    .line 943
    .line 944
    .line 945
    const-string/jumbo v10, "volume_system"

    .line 946
    .line 947
    .line 948
    invoke-static {v11, v2, v8, v9, v10}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    const-string/jumbo v2, "volume_voice"

    .line 952
    .line 953
    .line 954
    const-string/jumbo v8, "volume_music"

    .line 955
    .line 956
    .line 957
    const-string/jumbo v9, "volume_alarm"

    .line 958
    .line 959
    .line 960
    const-string/jumbo v10, "volume_notification"

    .line 961
    .line 962
    .line 963
    invoke-static {v11, v2, v8, v9, v10}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    const-string/jumbo v2, "volume_bluetooth_sco"

    .line 967
    .line 968
    .line 969
    const-string/jumbo v8, "ringtone0"

    .line 970
    .line 971
    .line 972
    const-string/jumbo v9, "ringtone1"

    .line 973
    .line 974
    .line 975
    invoke-static {v11, v2, v12, v8, v9}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    const-string v2, "auto_replace"

    .line 979
    .line 980
    const-string v8, "auto_caps"

    .line 981
    .line 982
    invoke-static {v11, v13, v14, v2, v8}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    const-string v9, "auto_punctuate"

    .line 986
    .line 987
    const-string/jumbo v10, "show_password"

    .line 988
    .line 989
    .line 990
    move-object/from16 v34, v8

    .line 991
    .line 992
    const-string v8, "SHOW_GTALK_SERVICE_STATUS"

    .line 993
    .line 994
    move-object/from16 v35, v2

    .line 995
    .line 996
    const-string/jumbo v2, "wallpaper_activity"

    .line 997
    .line 998
    .line 999
    invoke-static {v11, v9, v10, v8, v2}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    const-string/jumbo v2, "time_12_24"

    .line 1003
    .line 1004
    .line 1005
    const-string v8, "date_format"

    .line 1006
    .line 1007
    move-object/from16 v36, v10

    .line 1008
    .line 1009
    const-string/jumbo v10, "setup_wizard_has_run"

    .line 1010
    .line 1011
    .line 1012
    move-object/from16 v37, v9

    .line 1013
    .line 1014
    const-string v9, "accelerometer_rotation"

    .line 1015
    .line 1016
    invoke-static {v11, v2, v8, v10, v9}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    const-string/jumbo v10, "user_rotation"

    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v38, v9

    .line 1023
    .line 1024
    const-string v9, "dtmf_tone"

    .line 1025
    .line 1026
    move-object/from16 v39, v8

    .line 1027
    .line 1028
    const-string/jumbo v8, "sound_effects_enabled"

    .line 1029
    .line 1030
    .line 1031
    move-object/from16 v40, v2

    .line 1032
    .line 1033
    const-string/jumbo v2, "haptic_feedback_enabled"

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v11, v10, v9, v8, v2}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    const-string/jumbo v9, "show_web_suggestions"

    .line 1040
    .line 1041
    .line 1042
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    const-string/jumbo v9, "vibrate_when_ringing"

    .line 1046
    .line 1047
    .line 1048
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    new-instance v9, Landroid/util/ArraySet;

    .line 1052
    .line 1053
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 1054
    .line 1055
    .line 1056
    sput-object v9, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 1057
    .line 1058
    const-string v10, "advanced_settings"

    .line 1059
    .line 1060
    const-string/jumbo v11, "screen_auto_brightness_adj"

    .line 1061
    .line 1062
    .line 1063
    invoke-static {v9, v3, v4, v10, v11}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    const-string/jumbo v10, "vibrate_input_devices"

    .line 1067
    .line 1068
    .line 1069
    const-string/jumbo v11, "volume_master"

    .line 1070
    .line 1071
    .line 1072
    move-object/from16 v41, v2

    .line 1073
    .line 1074
    const-string/jumbo v2, "master_mono"

    .line 1075
    .line 1076
    .line 1077
    move-object/from16 v42, v8

    .line 1078
    .line 1079
    const-string/jumbo v8, "notifications_use_ring_volume"

    .line 1080
    .line 1081
    .line 1082
    invoke-static {v9, v10, v11, v2, v8}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    const-string/jumbo v2, "vibrate_in_silent"

    .line 1086
    .line 1087
    .line 1088
    const-string/jumbo v8, "media_button_receiver"

    .line 1089
    .line 1090
    .line 1091
    const-string/jumbo v10, "hide_rotation_lock_toggle_for_accessibility"

    .line 1092
    .line 1093
    .line 1094
    const-string v11, "dtmf_tone_type"

    .line 1095
    .line 1096
    invoke-static {v9, v2, v8, v10, v11}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    const-string/jumbo v2, "hearing_aid"

    .line 1100
    .line 1101
    .line 1102
    const-string/jumbo v8, "tty_mode"

    .line 1103
    .line 1104
    .line 1105
    const-string/jumbo v10, "notification_light_pulse"

    .line 1106
    .line 1107
    .line 1108
    const-string/jumbo v11, "pointer_location"

    .line 1109
    .line 1110
    .line 1111
    invoke-static {v9, v2, v8, v10, v11}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    const-string/jumbo v2, "show_touches"

    .line 1115
    .line 1116
    .line 1117
    const-string/jumbo v8, "window_orientation_listener_log"

    .line 1118
    .line 1119
    .line 1120
    const-string/jumbo v10, "power_sounds_enabled"

    .line 1121
    .line 1122
    .line 1123
    const-string v11, "dock_sounds_enabled"

    .line 1124
    .line 1125
    invoke-static {v9, v2, v8, v10, v11}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    const-string/jumbo v2, "lockscreen_sounds_enabled"

    .line 1129
    .line 1130
    .line 1131
    const-string/jumbo v8, "lockscreen.disabled"

    .line 1132
    .line 1133
    .line 1134
    const-string/jumbo v10, "low_battery_sound"

    .line 1135
    .line 1136
    .line 1137
    const-string v11, "desk_dock_sound"

    .line 1138
    .line 1139
    invoke-static {v9, v2, v8, v10, v11}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    const-string v2, "desk_undock_sound"

    .line 1143
    .line 1144
    const-string v8, "car_undock_sound"

    .line 1145
    .line 1146
    const-string/jumbo v10, "lock_sound"

    .line 1147
    .line 1148
    .line 1149
    invoke-static {v9, v2, v1, v8, v10}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    const-string/jumbo v1, "unlock_sound"

    .line 1153
    .line 1154
    .line 1155
    const-string/jumbo v2, "sip_receive_calls"

    .line 1156
    .line 1157
    .line 1158
    const-string/jumbo v8, "sip_call_options"

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v9, v1, v2, v8, v15}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    const-string v1, "SIP_ASK_ME_EACH_TIME"

    .line 1165
    .line 1166
    const-string/jumbo v2, "pointer_speed"

    .line 1167
    .line 1168
    .line 1169
    const-string/jumbo v8, "lock_to_app_enabled"

    .line 1170
    .line 1171
    .line 1172
    invoke-static {v9, v6, v1, v2, v8}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    const-string v1, "egg_mode"

    .line 1176
    .line 1177
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    const-string/jumbo v1, "status_bar_show_battery_percent"

    .line 1181
    .line 1182
    .line 1183
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    new-instance v1, Landroid/util/ArrayMap;

    .line 1187
    .line 1188
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1189
    .line 1190
    .line 1191
    sput-object v1, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    .line 1192
    .line 1193
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    const-string v2, "bluetooth_discoverability"

    .line 1200
    .line 1201
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    const-string v2, "bluetooth_discoverability_timeout"

    .line 1205
    .line 1206
    move-object/from16 v7, v32

    .line 1207
    .line 1208
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    const-string/jumbo v2, "next_alarm_formatted"

    .line 1212
    .line 1213
    .line 1214
    move-object/from16 v8, v31

    .line 1215
    .line 1216
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-object/from16 v2, v30

    .line 1220
    .line 1221
    move-object/from16 v8, v33

    .line 1222
    .line 1223
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    const-string v2, "dim_screen"

    .line 1227
    .line 1228
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    const-string/jumbo v2, "screen_off_timeout"

    .line 1232
    .line 1233
    .line 1234
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    const-string/jumbo v2, "screen_brightness"

    .line 1238
    .line 1239
    .line 1240
    move-object/from16 v9, v29

    .line 1241
    .line 1242
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    const-string/jumbo v2, "screen_brightness_for_vr"

    .line 1246
    .line 1247
    .line 1248
    move-object/from16 v9, v26

    .line 1249
    .line 1250
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    const-string/jumbo v2, "screen_brightness_mode"

    .line 1254
    .line 1255
    .line 1256
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    const-string/jumbo v2, "mode_ringer_streams_affected"

    .line 1260
    .line 1261
    .line 1262
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    const-string/jumbo v2, "mute_streams_affected"

    .line 1266
    .line 1267
    .line 1268
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    const-string/jumbo v2, "vibrate_on"

    .line 1272
    .line 1273
    .line 1274
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    move-object/from16 v2, v24

    .line 1278
    .line 1279
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    .line 1284
    .line 1285
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-object/from16 v2, v35

    .line 1289
    .line 1290
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-object/from16 v7, v34

    .line 1294
    .line 1295
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-object/from16 v9, v37

    .line 1299
    .line 1300
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    move-object/from16 v10, v36

    .line 1304
    .line 1305
    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    const-string v11, "SHOW_GTALK_SERVICE_STATUS"

    .line 1309
    .line 1310
    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    const-string/jumbo v11, "wallpaper_activity"

    .line 1314
    .line 1315
    .line 1316
    move-object/from16 v8, v19

    .line 1317
    .line 1318
    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-object/from16 v8, v21

    .line 1322
    .line 1323
    move-object/from16 v11, v40

    .line 1324
    .line 1325
    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-object/from16 v8, v20

    .line 1329
    .line 1330
    move-object/from16 v2, v39

    .line 1331
    .line 1332
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    const-string/jumbo v8, "setup_wizard_has_run"

    .line 1336
    .line 1337
    .line 1338
    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-object/from16 v8, v38

    .line 1342
    .line 1343
    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    const-string/jumbo v8, "user_rotation"

    .line 1347
    .line 1348
    .line 1349
    move-object/from16 v7, v22

    .line 1350
    .line 1351
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    const-string v7, "dtmf_tone"

    .line 1355
    .line 1356
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-object/from16 v7, v42

    .line 1360
    .line 1361
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-object/from16 v8, v41

    .line 1365
    .line 1366
    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    const-string/jumbo v9, "show_web_suggestions"

    .line 1370
    .line 1371
    .line 1372
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    .line 1374
    .line 1375
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    const-string v3, "advanced_settings"

    .line 1382
    .line 1383
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    const-string/jumbo v3, "screen_auto_brightness_adj"

    .line 1387
    .line 1388
    .line 1389
    move-object/from16 v4, v18

    .line 1390
    .line 1391
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    const-string/jumbo v3, "vibrate_input_devices"

    .line 1395
    .line 1396
    .line 1397
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    const-string/jumbo v3, "master_mono"

    .line 1401
    .line 1402
    .line 1403
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    const-string/jumbo v3, "notifications_use_ring_volume"

    .line 1407
    .line 1408
    .line 1409
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    .line 1411
    .line 1412
    const-string/jumbo v3, "vibrate_in_silent"

    .line 1413
    .line 1414
    .line 1415
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    .line 1417
    .line 1418
    const-string/jumbo v3, "media_button_receiver"

    .line 1419
    .line 1420
    .line 1421
    move-object/from16 v4, v17

    .line 1422
    .line 1423
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    const-string/jumbo v3, "hide_rotation_lock_toggle_for_accessibility"

    .line 1427
    .line 1428
    .line 1429
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 1433
    .line 1434
    .line 1435
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    const-string v3, "dtmf_tone_type"

    .line 1439
    .line 1440
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    const-string/jumbo v3, "hearing_aid"

    .line 1444
    .line 1445
    .line 1446
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    const-string/jumbo v3, "tty_mode"

    .line 1450
    .line 1451
    .line 1452
    move-object/from16 v4, v23

    .line 1453
    .line 1454
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    const-string/jumbo v3, "notification_light_pulse"

    .line 1458
    .line 1459
    .line 1460
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    const-string/jumbo v3, "pointer_location"

    .line 1464
    .line 1465
    .line 1466
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    const-string/jumbo v3, "show_touches"

    .line 1470
    .line 1471
    .line 1472
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    const-string/jumbo v3, "window_orientation_listener_log"

    .line 1476
    .line 1477
    .line 1478
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    .line 1480
    .line 1481
    const-string/jumbo v3, "lockscreen_sounds_enabled"

    .line 1482
    .line 1483
    .line 1484
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    const-string/jumbo v3, "lockscreen.disabled"

    .line 1488
    .line 1489
    .line 1490
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    const-string/jumbo v3, "sip_receive_calls"

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    const-string/jumbo v3, "sip_call_options"

    .line 1500
    .line 1501
    .line 1502
    move-object/from16 v4, v25

    .line 1503
    .line 1504
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    .line 1506
    .line 1507
    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    const-string v3, "SIP_ASK_ME_EACH_TIME"

    .line 1514
    .line 1515
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    const-string/jumbo v3, "pointer_speed"

    .line 1519
    .line 1520
    .line 1521
    move-object/from16 v4, v28

    .line 1522
    .line 1523
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    const-string/jumbo v3, "lock_to_app_enabled"

    .line 1527
    .line 1528
    .line 1529
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    const-string v3, "egg_mode"

    .line 1533
    .line 1534
    move-object/from16 v4, v27

    .line 1535
    .line 1536
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    const-string/jumbo v3, "wifi_static_ip"

    .line 1540
    .line 1541
    .line 1542
    move-object/from16 v4, v16

    .line 1543
    .line 1544
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    const-string/jumbo v3, "wifi_static_gateway"

    .line 1548
    .line 1549
    .line 1550
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    .line 1552
    .line 1553
    const-string/jumbo v3, "wifi_static_netmask"

    .line 1554
    .line 1555
    .line 1556
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    .line 1558
    .line 1559
    const-string/jumbo v3, "wifi_static_dns1"

    .line 1560
    .line 1561
    .line 1562
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    const-string/jumbo v3, "wifi_static_dns2"

    .line 1566
    .line 1567
    .line 1568
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    const-string/jumbo v3, "status_bar_show_battery_percent"

    .line 1572
    .line 1573
    .line 1574
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    new-instance v0, Landroid/util/ArraySet;

    .line 1578
    .line 1579
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1580
    .line 1581
    .line 1582
    sput-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 1583
    .line 1584
    invoke-static {v0, v2, v8, v7, v10}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    new-instance v0, Landroid/util/ArrayMap;

    .line 1591
    .line 1592
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1593
    .line 1594
    .line 1595
    sput-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    .line 1596
    .line 1597
    const-string/jumbo v1, "sync_parent_sounds"

    .line 1598
    .line 1599
    .line 1600
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    new-instance v0, Landroid/util/ArraySet;

    .line 1610
    .line 1611
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1612
    .line 1613
    .line 1614
    sput-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 1615
    .line 1616
    move-object/from16 v3, v34

    .line 1617
    .line 1618
    move-object/from16 v1, v35

    .line 1619
    .line 1620
    move-object/from16 v4, v37

    .line 1621
    .line 1622
    invoke-static {v0, v1, v3, v4, v10}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    .line 1624
    .line 1625
    move-object/from16 v1, v33

    .line 1626
    .line 1627
    invoke-static {v0, v2, v1, v8, v11}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    .line 1629
    .line 1630
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1631
    .line 1632
    .line 1633
    move-object/from16 v1, v38

    .line 1634
    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1636
    .line 1637
    .line 1638
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V
    .locals 3

    .line 1
    const-string v0, "font_scale"

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    cmpg-float v0, v0, v2

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 17
    .line 18
    :cond_0
    const-string/jumbo v0, "system_locales"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eqz p3, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public static canWrite(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/res/Configuration;->clearLocales()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static clearProviderForTest()V
    .locals 1

    .line 1
    sget-object v0, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static getCloneFromParentOnValueSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 5
    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 5
    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 1

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 5
    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method public static getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :cond_0
    return v1
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Setting "

    .line 8
    .line 9
    const-string v2, "Settings"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning read-only value."

    .line 14
    .line 15
    invoke-static {v1, p1, v0, v2}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 41
    .line 42
    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    :goto_0
    const-string v0, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only value."

    .line 48
    .line 49
    invoke-static {v1, p1, v0, v2}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Setting "

    .line 8
    .line 9
    const-string v2, "Settings"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning Secure URI."

    .line 14
    .line 15
    invoke-static {v1, p0, v0, v2}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_2
    :goto_0
    const-string v0, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only global URI."

    .line 50
    .line 51
    invoke-static {v1, p0, v0, v2}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result p0

    return p0
.end method

.method public static putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    .line 3
    const-string v1, "font_scale"

    .line 4
    .line 5
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string/jumbo v0, "system_locales"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    .line 1
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "Setting "

    .line 9
    .line 10
    const-string v3, "Settings"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p0, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, value is unchanged."

    .line 15
    .line 16
    invoke-static {v2, p1, p0, v3}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object v4, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v5, p0

    .line 42
    move-object v6, p1

    .line 43
    move-object v7, p2

    .line 44
    move v10, p3

    .line 45
    invoke-virtual/range {v4 .. v10}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    :goto_0
    const-string p0, " has moved from android.provider.Settings.System to android.provider.Settings.Global, value is unchanged."

    .line 51
    .line 52
    invoke-static {v2, p1, p0, v3}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    return-void
.end method

.method public static setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    .line 2
    .line 3
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
