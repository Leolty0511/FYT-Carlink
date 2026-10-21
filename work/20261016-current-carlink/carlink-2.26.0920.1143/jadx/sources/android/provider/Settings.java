package android.provider;

import android.Manifest;
import android.app.ActivityThread;
import android.app.AppOpsManager;
import android.app.Application;
import android.app.m;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.IContentProvider;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.SQLException;
import android.location.LocationManager;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.AndroidException;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.MemoryIntArray;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.util.ArrayUtils;
import com.android.internal.widget.ILockSettings;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Settings {
    public static final String ACTION_ACCESSIBILITY_SETTINGS = "android.settings.ACCESSIBILITY_SETTINGS";
    public static final String ACTION_ADD_ACCOUNT = "android.settings.ADD_ACCOUNT_SETTINGS";
    public static final String ACTION_AIRPLANE_MODE_SETTINGS = "android.settings.AIRPLANE_MODE_SETTINGS";
    public static final String ACTION_APN_SETTINGS = "android.settings.APN_SETTINGS";
    public static final String ACTION_APPLICATION_DETAILS_SETTINGS = "android.settings.APPLICATION_DETAILS_SETTINGS";
    public static final String ACTION_APPLICATION_DEVELOPMENT_SETTINGS = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS";
    public static final String ACTION_APPLICATION_SETTINGS = "android.settings.APPLICATION_SETTINGS";
    public static final String ACTION_APP_NOTIFICATION_REDACTION = "android.settings.ACTION_APP_NOTIFICATION_REDACTION";
    public static final String ACTION_APP_NOTIFICATION_SETTINGS = "android.settings.APP_NOTIFICATION_SETTINGS";
    public static final String ACTION_APP_OPS_SETTINGS = "android.settings.APP_OPS_SETTINGS";
    public static final String ACTION_ASSIST_GESTURE_SETTINGS = "android.settings.ASSIST_GESTURE_SETTINGS";
    public static final String ACTION_BATTERY_SAVER_SETTINGS = "android.settings.BATTERY_SAVER_SETTINGS";
    public static final String ACTION_BLUETOOTH_SETTINGS = "android.settings.BLUETOOTH_SETTINGS";
    public static final String ACTION_CAPTIONING_SETTINGS = "android.settings.CAPTIONING_SETTINGS";
    public static final String ACTION_CAST_SETTINGS = "android.settings.CAST_SETTINGS";
    public static final String ACTION_CHANNEL_NOTIFICATION_SETTINGS = "android.settings.CHANNEL_NOTIFICATION_SETTINGS";
    public static final String ACTION_CONDITION_PROVIDER_SETTINGS = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS";
    public static final String ACTION_DATA_ROAMING_SETTINGS = "android.settings.DATA_ROAMING_SETTINGS";
    public static final String ACTION_DATE_SETTINGS = "android.settings.DATE_SETTINGS";
    public static final String ACTION_DEVICE_INFO_SETTINGS = "android.settings.DEVICE_INFO_SETTINGS";
    public static final String ACTION_DISPLAY_SETTINGS = "android.settings.DISPLAY_SETTINGS";
    public static final String ACTION_DREAM_SETTINGS = "android.settings.DREAM_SETTINGS";
    public static final String ACTION_ENTERPRISE_PRIVACY_SETTINGS = "android.settings.ENTERPRISE_PRIVACY_SETTINGS";
    public static final String ACTION_FOREGROUND_SERVICES_SETTINGS = "android.settings.FOREGROUND_SERVICES_SETTINGS";
    public static final String ACTION_HARD_KEYBOARD_SETTINGS = "android.settings.HARD_KEYBOARD_SETTINGS";
    public static final String ACTION_HOME_SETTINGS = "android.settings.HOME_SETTINGS";
    public static final String ACTION_IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS = "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS";
    public static final String ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS = "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS";
    public static final String ACTION_INPUT_METHOD_SETTINGS = "android.settings.INPUT_METHOD_SETTINGS";
    public static final String ACTION_INPUT_METHOD_SUBTYPE_SETTINGS = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS";
    public static final String ACTION_INTERNAL_STORAGE_SETTINGS = "android.settings.INTERNAL_STORAGE_SETTINGS";
    public static final String ACTION_LOCALE_SETTINGS = "android.settings.LOCALE_SETTINGS";
    public static final String ACTION_LOCATION_SOURCE_SETTINGS = "android.settings.LOCATION_SOURCE_SETTINGS";
    public static final String ACTION_MANAGED_PROFILE_SETTINGS = "android.settings.MANAGED_PROFILE_SETTINGS";
    public static final String ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS";
    public static final String ACTION_MANAGE_APPLICATIONS_SETTINGS = "android.settings.MANAGE_APPLICATIONS_SETTINGS";
    public static final String ACTION_MANAGE_DEFAULT_APPS_SETTINGS = "android.settings.MANAGE_DEFAULT_APPS_SETTINGS";
    public static final String ACTION_MANAGE_OVERLAY_PERMISSION = "android.settings.action.MANAGE_OVERLAY_PERMISSION";
    public static final String ACTION_MANAGE_UNKNOWN_APP_SOURCES = "android.settings.MANAGE_UNKNOWN_APP_SOURCES";
    public static final String ACTION_MANAGE_WRITE_SETTINGS = "android.settings.action.MANAGE_WRITE_SETTINGS";
    public static final String ACTION_MEMORY_CARD_SETTINGS = "android.settings.MEMORY_CARD_SETTINGS";
    public static final String ACTION_MOBILE_DATA_USAGE = "android.settings.MOBILE_DATA_USAGE";
    public static final String ACTION_MONITORING_CERT_INFO = "com.android.settings.MONITORING_CERT_INFO";
    public static final String ACTION_NETWORK_OPERATOR_SETTINGS = "android.settings.NETWORK_OPERATOR_SETTINGS";
    public static final String ACTION_NFCSHARING_SETTINGS = "android.settings.NFCSHARING_SETTINGS";
    public static final String ACTION_NFC_PAYMENT_SETTINGS = "android.settings.NFC_PAYMENT_SETTINGS";
    public static final String ACTION_NFC_SETTINGS = "android.settings.NFC_SETTINGS";
    public static final String ACTION_NIGHT_DISPLAY_SETTINGS = "android.settings.NIGHT_DISPLAY_SETTINGS";
    public static final String ACTION_NOTIFICATION_LISTENER_SETTINGS = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS";
    public static final String ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS = "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS";
    public static final String ACTION_NOTIFICATION_SETTINGS = "android.settings.NOTIFICATION_SETTINGS";
    public static final String ACTION_PAIRING_SETTINGS = "android.settings.PAIRING_SETTINGS";
    public static final String ACTION_PICTURE_IN_PICTURE_SETTINGS = "android.settings.PICTURE_IN_PICTURE_SETTINGS";
    public static final String ACTION_PRINT_SETTINGS = "android.settings.ACTION_PRINT_SETTINGS";
    public static final String ACTION_PRIVACY_SETTINGS = "android.settings.PRIVACY_SETTINGS";
    public static final String ACTION_QUICK_LAUNCH_SETTINGS = "android.settings.QUICK_LAUNCH_SETTINGS";
    public static final String ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS = "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS";
    public static final String ACTION_REQUEST_SET_AUTOFILL_SERVICE = "android.settings.REQUEST_SET_AUTOFILL_SERVICE";
    public static final String ACTION_SEARCH_SETTINGS = "android.search.action.SEARCH_SETTINGS";
    public static final String ACTION_SECURITY_SETTINGS = "android.settings.SECURITY_SETTINGS";
    public static final String ACTION_SETTINGS = "android.settings.SETTINGS";
    public static final String ACTION_SHOW_ADMIN_SUPPORT_DETAILS = "android.settings.SHOW_ADMIN_SUPPORT_DETAILS";
    public static final String ACTION_SHOW_REGULATORY_INFO = "android.settings.SHOW_REGULATORY_INFO";
    public static final String ACTION_SHOW_REMOTE_BUGREPORT_DIALOG = "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG";
    public static final String ACTION_SOUND_SETTINGS = "android.settings.SOUND_SETTINGS";
    public static final String ACTION_STORAGE_MANAGER_SETTINGS = "android.settings.STORAGE_MANAGER_SETTINGS";
    public static final String ACTION_SYNC_SETTINGS = "android.settings.SYNC_SETTINGS";
    public static final String ACTION_SYSTEM_UPDATE_SETTINGS = "android.settings.SYSTEM_UPDATE_SETTINGS";
    public static final String ACTION_TETHER_PROVISIONING = "android.settings.TETHER_PROVISIONING_UI";
    public static final String ACTION_TRUSTED_CREDENTIALS_USER = "com.android.settings.TRUSTED_CREDENTIALS_USER";
    public static final String ACTION_USAGE_ACCESS_SETTINGS = "android.settings.USAGE_ACCESS_SETTINGS";
    public static final String ACTION_USER_DICTIONARY_INSERT = "com.android.settings.USER_DICTIONARY_INSERT";
    public static final String ACTION_USER_DICTIONARY_SETTINGS = "android.settings.USER_DICTIONARY_SETTINGS";
    public static final String ACTION_USER_SETTINGS = "android.settings.USER_SETTINGS";
    public static final String ACTION_VOICE_CONTROL_AIRPLANE_MODE = "android.settings.VOICE_CONTROL_AIRPLANE_MODE";
    public static final String ACTION_VOICE_CONTROL_BATTERY_SAVER_MODE = "android.settings.VOICE_CONTROL_BATTERY_SAVER_MODE";
    public static final String ACTION_VOICE_CONTROL_DO_NOT_DISTURB_MODE = "android.settings.VOICE_CONTROL_DO_NOT_DISTURB_MODE";
    public static final String ACTION_VOICE_INPUT_SETTINGS = "android.settings.VOICE_INPUT_SETTINGS";
    public static final String ACTION_VPN_SETTINGS = "android.settings.VPN_SETTINGS";
    public static final String ACTION_VR_LISTENER_SETTINGS = "android.settings.VR_LISTENER_SETTINGS";
    public static final String ACTION_WEBVIEW_SETTINGS = "android.settings.WEBVIEW_SETTINGS";
    public static final String ACTION_WIFI_IP_SETTINGS = "android.settings.WIFI_IP_SETTINGS";
    public static final String ACTION_WIFI_SETTINGS = "android.settings.WIFI_SETTINGS";
    public static final String ACTION_WIRELESS_SETTINGS = "android.settings.WIRELESS_SETTINGS";
    public static final String ACTION_ZEN_MODE_AUTOMATION_SETTINGS = "android.settings.ZEN_MODE_AUTOMATION_SETTINGS";
    public static final String ACTION_ZEN_MODE_EVENT_RULE_SETTINGS = "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS";
    public static final String ACTION_ZEN_MODE_EXTERNAL_RULE_SETTINGS = "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS";
    public static final String ACTION_ZEN_MODE_PRIORITY_SETTINGS = "android.settings.ZEN_MODE_PRIORITY_SETTINGS";
    public static final String ACTION_ZEN_MODE_SCHEDULE_RULE_SETTINGS = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS";
    public static final String ACTION_ZEN_MODE_SETTINGS = "android.settings.ZEN_MODE_SETTINGS";
    public static final String AUTHORITY = "settings";
    public static final String CALL_METHOD_GENERATION_INDEX_KEY = "_generation_index";
    public static final String CALL_METHOD_GENERATION_KEY = "_generation";
    public static final String CALL_METHOD_GET_GLOBAL = "GET_global";
    public static final String CALL_METHOD_GET_SECURE = "GET_secure";
    public static final String CALL_METHOD_GET_SYSTEM = "GET_system";
    public static final String CALL_METHOD_MAKE_DEFAULT_KEY = "_make_default";
    public static final String CALL_METHOD_PUT_GLOBAL = "PUT_global";
    public static final String CALL_METHOD_PUT_SECURE = "PUT_secure";
    public static final String CALL_METHOD_PUT_SYSTEM = "PUT_system";
    public static final String CALL_METHOD_RESET_GLOBAL = "RESET_global";
    public static final String CALL_METHOD_RESET_MODE_KEY = "_reset_mode";
    public static final String CALL_METHOD_RESET_SECURE = "RESET_secure";
    public static final String CALL_METHOD_TAG_KEY = "_tag";
    public static final String CALL_METHOD_TRACK_GENERATION_KEY = "_track_generation";
    public static final String CALL_METHOD_USER_KEY = "_user";
    public static final String DEVICE_NAME_SETTINGS = "android.settings.DEVICE_NAME";
    public static final String EXTRA_ACCOUNT_TYPES = "account_types";
    public static final String EXTRA_AIRPLANE_MODE_ENABLED = "airplane_mode_enabled";
    public static final String EXTRA_APP_PACKAGE = "android.provider.extra.APP_PACKAGE";
    public static final String EXTRA_APP_UID = "app_uid";
    public static final String EXTRA_AUTHORITIES = "authorities";
    public static final String EXTRA_BATTERY_SAVER_MODE_ENABLED = "android.settings.extra.battery_saver_mode_enabled";
    public static final String EXTRA_CHANNEL_ID = "android.provider.extra.CHANNEL_ID";
    public static final String EXTRA_DO_NOT_DISTURB_MODE_ENABLED = "android.settings.extra.do_not_disturb_mode_enabled";
    public static final String EXTRA_DO_NOT_DISTURB_MODE_MINUTES = "android.settings.extra.do_not_disturb_mode_minutes";
    public static final String EXTRA_INPUT_DEVICE_IDENTIFIER = "input_device_identifier";
    public static final String EXTRA_INPUT_METHOD_ID = "input_method_id";
    public static final String EXTRA_NETWORK_TEMPLATE = "network_template";
    public static final String EXTRA_NUMBER_OF_CERTIFICATES = "android.settings.extra.number_of_certificates";
    public static final String EXTRA_SUB_ID = "sub_id";
    public static final String INTENT_CATEGORY_USAGE_ACCESS_CONFIG = "android.intent.category.USAGE_ACCESS_CONFIG";
    private static final String JID_RESOURCE_PREFIX = "android";
    private static final boolean LOCAL_LOGV = false;
    public static final String METADATA_USAGE_ACCESS_REASON = "android.settings.metadata.USAGE_ACCESS_REASON";
    public static final int RESET_MODE_PACKAGE_DEFAULTS = 1;
    public static final int RESET_MODE_TRUSTED_DEFAULTS = 4;
    public static final int RESET_MODE_UNTRUSTED_CHANGES = 3;
    public static final int RESET_MODE_UNTRUSTED_DEFAULTS = 2;
    private static final String TAG = "Settings";
    private static boolean sInSystemServer = false;
    private static final Object mLocationSettingsLock = new Object();
    private static final Object sInSystemServerLock = new Object();
    private static final String[] PM_WRITE_SETTINGS = {Manifest.permission.WRITE_SETTINGS};
    private static final String[] PM_CHANGE_NETWORK_STATE = {Manifest.permission.CHANGE_NETWORK_STATE, Manifest.permission.WRITE_SETTINGS};
    private static final String[] PM_SYSTEM_ALERT_WINDOW = {Manifest.permission.SYSTEM_ALERT_WINDOW};

    public static final class Bookmarks implements BaseColumns {
        public static final String FOLDER = "folder";
        public static final String ID = "_id";
        public static final String INTENT = "intent";
        public static final String ORDERING = "ordering";
        public static final String SHORTCUT = "shortcut";
        private static final String TAG = "Bookmarks";
        public static final String TITLE = "title";
        private static final String sShortcutSelection = "shortcut=?";
        public static final Uri CONTENT_URI = Uri.parse("content://settings/bookmarks");
        private static final String[] sIntentProjection = {"intent"};
        private static final String[] sShortcutProjection = {"_id", "shortcut"};

        public static Uri add(ContentResolver contentResolver, Intent intent, String str, String str2, char c, int i2) {
            if (c != 0) {
                contentResolver.delete(CONTENT_URI, sShortcutSelection, new String[]{String.valueOf((int) c)});
            }
            ContentValues contentValues = new ContentValues();
            if (str != null) {
                contentValues.put("title", str);
            }
            if (str2 != null) {
                contentValues.put("folder", str2);
            }
            contentValues.put("intent", intent.toUri(0));
            if (c != 0) {
                contentValues.put("shortcut", Integer.valueOf(c));
            }
            contentValues.put(ORDERING, Integer.valueOf(i2));
            return contentResolver.insert(CONTENT_URI, contentValues);
        }

        public static Intent getIntentForShortcut(ContentResolver contentResolver, char c) {
            Cursor cursorQuery = contentResolver.query(CONTENT_URI, sIntentProjection, sShortcutSelection, new String[]{String.valueOf((int) c)}, ORDERING);
            Intent uri = null;
            while (uri == null) {
                try {
                    if (!cursorQuery.moveToNext()) {
                        break;
                    }
                    try {
                        uri = Intent.parseUri(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("intent")), 0);
                    } catch (IllegalArgumentException e2) {
                        Log.w(TAG, "Intent column not found", e2);
                    } catch (URISyntaxException unused) {
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return uri;
        }

        public static CharSequence getLabelForFolder(Resources resources, String str) {
            return str;
        }

        public static CharSequence getTitle(Context context, Cursor cursor) {
            int columnIndex = cursor.getColumnIndex("title");
            int columnIndex2 = cursor.getColumnIndex("intent");
            if (columnIndex == -1 || columnIndex2 == -1) {
                throw new IllegalArgumentException("The cursor must contain the TITLE and INTENT columns.");
            }
            String string = cursor.getString(columnIndex);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String string2 = cursor.getString(columnIndex2);
            if (TextUtils.isEmpty(string2)) {
                return "";
            }
            try {
                Intent uri = Intent.parseUri(string2, 0);
                PackageManager packageManager = context.getPackageManager();
                ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(uri, 0);
                return resolveInfoResolveActivity != null ? resolveInfoResolveActivity.loadLabel(packageManager) : "";
            } catch (URISyntaxException unused) {
                return "";
            }
        }
    }

    public static final class ContentProviderHolder {

        @GuardedBy("mLock")
        private IContentProvider mContentProvider;
        private final Object mLock = new Object();

        @GuardedBy("mLock")
        private final Uri mUri;

        public ContentProviderHolder(Uri uri) {
            this.mUri = uri;
        }

        public void clearProviderForTest() {
            synchronized (this.mLock) {
                this.mContentProvider = null;
            }
        }

        public IContentProvider getProvider(ContentResolver contentResolver) {
            IContentProvider iContentProvider;
            synchronized (this.mLock) {
                if (this.mContentProvider == null) {
                    this.mContentProvider = contentResolver.acquireProvider(this.mUri.getAuthority());
                }
                iContentProvider = this.mContentProvider;
            }
            return iContentProvider;
        }
    }

    public static final class GenerationTracker {
        private final MemoryIntArray mArray;
        private int mCurrentGeneration;
        private final Runnable mErrorHandler;
        private final int mIndex;

        public GenerationTracker(MemoryIntArray memoryIntArray, int i2, int i3, Runnable runnable) {
            this.mArray = memoryIntArray;
            this.mIndex = i2;
            this.mErrorHandler = runnable;
            this.mCurrentGeneration = i3;
        }

        private int readCurrentGeneration() {
            try {
                if (!this.mArray.isClosed()) {
                    return this.mArray.get(this.mIndex);
                }
                Log.e(Settings.TAG, "Error getting current generation MemoryIntArray is closed");
                Runnable runnable = this.mErrorHandler;
                if (runnable != null) {
                    runnable.run();
                }
                return -1;
            } catch (IOException e2) {
                Log.e(Settings.TAG, "Error getting current generation", e2);
                Runnable runnable2 = this.mErrorHandler;
                if (runnable2 != null) {
                    runnable2.run();
                }
                return -1;
            }
        }

        public void destroy() {
            try {
                if (this.mArray.isClosed()) {
                    return;
                }
                this.mArray.close();
            } catch (IOException e2) {
                Log.e(Settings.TAG, "Error closing backing array", e2);
                Runnable runnable = this.mErrorHandler;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public boolean isGenerationChanged() {
            int currentGeneration = readCurrentGeneration();
            if (currentGeneration < 0) {
                return true;
            }
            if (currentGeneration == this.mCurrentGeneration) {
                return false;
            }
            this.mCurrentGeneration = currentGeneration;
            return true;
        }
    }

    public static final class Global extends NameValueTable {
        public static final String ACTIVITY_MANAGER_CONSTANTS = "activity_manager_constants";
        public static final String ADB_ENABLED = "adb_enabled";
        public static final String ADD_USERS_WHEN_LOCKED = "add_users_when_locked";
        public static final String AIRPLANE_MODE_ON = "airplane_mode_on";
        public static final String AIRPLANE_MODE_RADIOS = "airplane_mode_radios";
        public static final String AIRPLANE_MODE_TOGGLEABLE_RADIOS = "airplane_mode_toggleable_radios";
        public static final String ALARM_MANAGER_CONSTANTS = "alarm_manager_constants";
        public static final String ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED = "allow_user_switching_when_system_user_locked";
        public static final String ALWAYS_FINISH_ACTIVITIES = "always_finish_activities";
        public static final String ALWAYS_ON_DISPLAY_CONSTANTS = "always_on_display_constants";
        public static final String ANIMATOR_DURATION_SCALE = "animator_duration_scale";
        public static final String ANOMALY_DETECTION_CONSTANTS = "anomaly_detection_constants";
        public static final String APN_DB_UPDATE_CONTENT_URL = "apn_db_content_url";
        public static final String APN_DB_UPDATE_METADATA_URL = "apn_db_metadata_url";
        public static final String APP_IDLE_CONSTANTS = "app_idle_constants";
        public static final String ASSISTED_GPS_ENABLED = "assisted_gps_enabled";
        public static final String AUDIO_SAFE_VOLUME_STATE = "audio_safe_volume_state";
        public static final String AUTO_TIME = "auto_time";
        public static final String AUTO_TIME_GPS = "auto_time_gps";
        public static final String AUTO_TIME_ZONE = "auto_time_zone";
        public static final String BACKUP_REFACTORED_SERVICE_DISABLED = "backup_refactored_service_disabled";
        public static final String BATTERY_DISCHARGE_DURATION_THRESHOLD = "battery_discharge_duration_threshold";
        public static final String BATTERY_DISCHARGE_THRESHOLD = "battery_discharge_threshold";
        public static final String BATTERY_SAVER_CONSTANTS = "battery_saver_constants";
        public static final String BLE_SCAN_ALWAYS_AVAILABLE = "ble_scan_always_enabled";
        public static final String BLUETOOTH_A2DP_OPTIONAL_CODECS_ENABLED_PREFIX = "bluetooth_a2dp_optional_codecs_enabled_";
        public static final String BLUETOOTH_A2DP_SINK_PRIORITY_PREFIX = "bluetooth_a2dp_sink_priority_";
        public static final String BLUETOOTH_A2DP_SRC_PRIORITY_PREFIX = "bluetooth_a2dp_src_priority_";
        public static final String BLUETOOTH_A2DP_SUPPORTS_OPTIONAL_CODECS_PREFIX = "bluetooth_a2dp_supports_optional_codecs_";
        public static final String BLUETOOTH_DISABLED_PROFILES = "bluetooth_disabled_profiles";
        public static final String BLUETOOTH_HEADSET_PRIORITY_PREFIX = "bluetooth_headset_priority_";
        public static final String BLUETOOTH_INPUT_DEVICE_PRIORITY_PREFIX = "bluetooth_input_device_priority_";
        public static final String BLUETOOTH_INTEROPERABILITY_LIST = "bluetooth_interoperability_list";
        public static final String BLUETOOTH_MAP_CLIENT_PRIORITY_PREFIX = "bluetooth_map_client_priority_";
        public static final String BLUETOOTH_MAP_PRIORITY_PREFIX = "bluetooth_map_priority_";
        public static final String BLUETOOTH_ON = "bluetooth_on";
        public static final String BLUETOOTH_PAN_PRIORITY_PREFIX = "bluetooth_pan_priority_";
        public static final String BLUETOOTH_PBAP_CLIENT_PRIORITY_PREFIX = "bluetooth_pbap_client_priority_";
        public static final String BLUETOOTH_SAP_PRIORITY_PREFIX = "bluetooth_sap_priority_";
        public static final String BOOT_COUNT = "boot_count";
        public static final String BUGREPORT_IN_POWER_MENU = "bugreport_in_power_menu";
        public static final String CALL_AUTO_RETRY = "call_auto_retry";

        @Deprecated
        public static final String CAPTIVE_PORTAL_DETECTION_ENABLED = "captive_portal_detection_enabled";
        public static final String CAPTIVE_PORTAL_FALLBACK_URL = "captive_portal_fallback_url";
        public static final String CAPTIVE_PORTAL_HTTPS_URL = "captive_portal_https_url";
        public static final String CAPTIVE_PORTAL_HTTP_URL = "captive_portal_http_url";
        public static final String CAPTIVE_PORTAL_MODE = "captive_portal_mode";
        public static final int CAPTIVE_PORTAL_MODE_AVOID = 2;
        public static final int CAPTIVE_PORTAL_MODE_IGNORE = 0;
        public static final int CAPTIVE_PORTAL_MODE_PROMPT = 1;
        public static final String CAPTIVE_PORTAL_OTHER_FALLBACK_URLS = "captive_portal_other_fallback_urls";
        public static final String CAPTIVE_PORTAL_SERVER = "captive_portal_server";
        public static final String CAPTIVE_PORTAL_USER_AGENT = "captive_portal_user_agent";
        public static final String CAPTIVE_PORTAL_USE_HTTPS = "captive_portal_use_https";
        public static final String CARRIER_APP_WHITELIST = "carrier_app_whitelist";
        public static final String CAR_DOCK_SOUND = "car_dock_sound";
        public static final String CAR_UNDOCK_SOUND = "car_undock_sound";
        public static final String CDMA_CELL_BROADCAST_SMS = "cdma_cell_broadcast_sms";
        public static final String CDMA_ROAMING_MODE = "roaming_settings";
        public static final String CDMA_SUBSCRIPTION_MODE = "subscription_mode";
        public static final String CELL_ON = "cell_on";
        public static final String CERT_PIN_UPDATE_CONTENT_URL = "cert_pin_content_url";
        public static final String CERT_PIN_UPDATE_METADATA_URL = "cert_pin_metadata_url";
        public static final String CHARGING_SOUNDS_ENABLED = "charging_sounds_enabled";
        public static final String COMPATIBILITY_MODE = "compatibility_mode";
        public static final String CONNECTIVITY_CHANGE_DELAY = "connectivity_change_delay";
        public static final String CONNECTIVITY_METRICS_BUFFER_SIZE = "connectivity_metrics_buffer_size";
        public static final String CONNECTIVITY_SAMPLING_INTERVAL_IN_SECONDS = "connectivity_sampling_interval_in_seconds";
        public static final String CONTACTS_DATABASE_WAL_ENABLED = "contacts_database_wal_enabled";

        @Deprecated
        public static final String CONTACT_METADATA_SYNC = "contact_metadata_sync";
        public static final String CONTACT_METADATA_SYNC_ENABLED = "contact_metadata_sync_enabled";
        public static final Uri CONTENT_URI;
        public static final String DATABASE_CREATION_BUILDID = "database_creation_buildid";
        public static final String DATABASE_DOWNGRADE_REASON = "database_downgrade_reason";
        public static final String DATA_ACTIVITY_TIMEOUT_MOBILE = "data_activity_timeout_mobile";
        public static final String DATA_ACTIVITY_TIMEOUT_WIFI = "data_activity_timeout_wifi";
        public static final String DATA_ROAMING = "data_roaming";
        public static final String DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS = "data_stall_alarm_aggressive_delay_in_ms";
        public static final String DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS = "data_stall_alarm_non_aggressive_delay_in_ms";
        public static final String DEBUG_APP = "debug_app";
        public static final String DEBUG_VIEW_ATTRIBUTES = "debug_view_attributes";
        public static final String DEFAULT_DNS_SERVER = "default_dns_server";
        public static final String DEFAULT_INSTALL_LOCATION = "default_install_location";
        public static final String DEFAULT_RESTRICT_BACKGROUND_DATA = "default_restrict_background_data";
        public static final String DEFAULT_SM_DP_PLUS = "default_sm_dp_plus";
        public static final String DESK_DOCK_SOUND = "desk_dock_sound";
        public static final String DESK_UNDOCK_SOUND = "desk_undock_sound";
        public static final String DEVELOPMENT_ENABLE_FREEFORM_WINDOWS_SUPPORT = "enable_freeform_support";
        public static final String DEVELOPMENT_FORCE_RESIZABLE_ACTIVITIES = "force_resizable_activities";
        public static final String DEVELOPMENT_FORCE_RTL = "debug.force_rtl";
        public static final String DEVELOPMENT_SETTINGS_ENABLED = "development_settings_enabled";
        public static final String DEVICE_DEMO_MODE = "device_demo_mode";
        public static final String DEVICE_IDLE_CONSTANTS = "device_idle_constants";
        public static final String DEVICE_IDLE_CONSTANTS_WATCH = "device_idle_constants_watch";
        public static final String DEVICE_NAME = "device_name";
        public static final String DEVICE_POLICY_CONSTANTS = "device_policy_constants";
        public static final String DEVICE_PROVISIONED = "device_provisioned";
        public static final String DEVICE_PROVISIONING_MOBILE_DATA_ENABLED = "device_provisioning_mobile_data";
        public static final String DISK_FREE_CHANGE_REPORTING_THRESHOLD = "disk_free_change_reporting_threshold";
        public static final String DISPLAY_SCALING_FORCE = "display_scaling_force";
        public static final String DISPLAY_SIZE_FORCED = "display_size_forced";
        public static final String DNS_RESOLVER_MAX_SAMPLES = "dns_resolver_max_samples";
        public static final String DNS_RESOLVER_MIN_SAMPLES = "dns_resolver_min_samples";
        public static final String DNS_RESOLVER_SAMPLE_VALIDITY_SECONDS = "dns_resolver_sample_validity_seconds";
        public static final String DNS_RESOLVER_SUCCESS_THRESHOLD_PERCENT = "dns_resolver_success_threshold_percent";
        public static final String DOCK_AUDIO_MEDIA_ENABLED = "dock_audio_media_enabled";
        public static final String DOCK_SOUNDS_ENABLED = "dock_sounds_enabled";
        public static final String DOCK_SOUNDS_ENABLED_WHEN_ACCESSIBILITY = "dock_sounds_enabled_when_accessbility";
        public static final String DOWNLOAD_MAX_BYTES_OVER_MOBILE = "download_manager_max_bytes_over_mobile";
        public static final String DOWNLOAD_RECOMMENDED_MAX_BYTES_OVER_MOBILE = "download_manager_recommended_max_bytes_over_mobile";
        public static final String DROPBOX_AGE_SECONDS = "dropbox_age_seconds";
        public static final String DROPBOX_MAX_FILES = "dropbox_max_files";
        public static final String DROPBOX_QUOTA_KB = "dropbox_quota_kb";
        public static final String DROPBOX_QUOTA_PERCENT = "dropbox_quota_percent";
        public static final String DROPBOX_RESERVE_PERCENT = "dropbox_reserve_percent";
        public static final String DROPBOX_TAG_PREFIX = "dropbox:";
        public static final String EASY_ANSWER = "easy_answer";
        public static final String EASY_ANSWER_SWITCH = "easy_answer_switch";
        public static final String EASY_BELL = "easy_bell";
        public static final String EASY_BELL_SWITCH = "easy_bell_switch";
        public static final String EASY_CLEAR_MEMORY = "easy_clear_memory";
        public static final String EASY_CLEAR_MEMORY_SWITCH = "easy_clear_memory_switch";
        public static final String EASY_DIAL = "easy_dial";
        public static final String EASY_DIAL_SWITCH = "easy_dial_switch";
        public static final String EASY_START = "easy_start";
        public static final String EASY_START_SWITCH = "easy_start_switch";
        public static final String EMERGENCY_AFFORDANCE_NEEDED = "emergency_affordance_needed";
        public static final String EMERGENCY_TONE = "emergency_tone";
        public static final String ENABLE_ACCESSIBILITY_GLOBAL_GESTURE_ENABLED = "enable_accessibility_global_gesture_enabled";
        public static final String ENABLE_CACHE_QUOTA_CALCULATION = "enable_cache_quota_calculation";
        public static final String ENABLE_CELLULAR_ON_BOOT = "enable_cellular_on_boot";
        public static final String ENABLE_DELETION_HELPER_NO_THRESHOLD_TOGGLE = "enable_deletion_helper_no_threshold_toggle";
        public static final String ENABLE_DISKSTATS_LOGGING = "enable_diskstats_logging";
        public static final String ENABLE_EPHEMERAL_FEATURE = "enable_ephemeral_feature";
        public static final String ENCODED_SURROUND_OUTPUT = "encoded_surround_output";
        public static final int ENCODED_SURROUND_OUTPUT_ALWAYS = 2;
        public static final int ENCODED_SURROUND_OUTPUT_AUTO = 0;
        public static final int ENCODED_SURROUND_OUTPUT_NEVER = 1;
        public static final String ENHANCED_4G_MODE_ENABLED = "volte_vt_enabled";
        public static final String EPHEMERAL_COOKIE_MAX_SIZE_BYTES = "ephemeral_cookie_max_size_bytes";
        public static final String ERROR_LOGCAT_PREFIX = "logcat_for_";
        public static final String EUICC_FACTORY_RESET_TIMEOUT_MILLIS = "euicc_factory_reset_timeout_millis";
        public static final String EUICC_PROVISIONED = "euicc_provisioned";
        public static final String FANCY_IME_ANIMATIONS = "fancy_ime_animations";
        public static final String FORCE_ALLOW_ON_EXTERNAL = "force_allow_on_external";
        public static final String FSTRIM_MANDATORY_INTERVAL = "fstrim_mandatory_interval";
        public static final String GLOBAL_HTTP_PROXY_EXCLUSION_LIST = "global_http_proxy_exclusion_list";
        public static final String GLOBAL_HTTP_PROXY_HOST = "global_http_proxy_host";
        public static final String GLOBAL_HTTP_PROXY_PAC = "global_proxy_pac_url";
        public static final String GLOBAL_HTTP_PROXY_PORT = "global_http_proxy_port";
        public static final String GPRS_REGISTER_CHECK_PERIOD_MS = "gprs_register_check_period_ms";
        public static final String GSM_ROAMING_ENABLED = "gsm_roaming_enabled";
        public static final String HANDSFREE_SWITCH = "handsfree_switch";
        public static final String HANDSFREE_SWITCH_SWITCH = "handsfree_switch_switch";
        public static final String HDMI_CONTROL_AUTO_DEVICE_OFF_ENABLED = "hdmi_control_auto_device_off_enabled";
        public static final String HDMI_CONTROL_AUTO_WAKEUP_ENABLED = "hdmi_control_auto_wakeup_enabled";
        public static final String HDMI_CONTROL_ENABLED = "hdmi_control_enabled";
        public static final String HDMI_SYSTEM_AUDIO_CONTROL_ENABLED = "hdmi_system_audio_control_enabled";
        public static final String HEADS_UP_NOTIFICATIONS_ENABLED = "heads_up_notifications_enabled";
        public static final int HEADS_UP_OFF = 0;
        public static final int HEADS_UP_ON = 1;
        public static final String HTTP_PROXY = "http_proxy";
        public static final String INET_CONDITION_DEBOUNCE_DOWN_DELAY = "inet_condition_debounce_down_delay";
        public static final String INET_CONDITION_DEBOUNCE_UP_DELAY = "inet_condition_debounce_up_delay";
        public static final String INSTALLED_INSTANT_APP_MAX_CACHE_PERIOD = "installed_instant_app_max_cache_period";
        public static final String INSTALLED_INSTANT_APP_MIN_CACHE_PERIOD = "installed_instant_app_min_cache_period";

        @Deprecated
        public static final String INSTALL_NON_MARKET_APPS = "install_non_market_apps";
        public static final String INSTANT_APP_DEXOPT_ENABLED = "instant_app_dexopt_enabled";
        public static final Set<String> INSTANT_APP_SETTINGS;
        public static final String INTENT_FIREWALL_UPDATE_CONTENT_URL = "intent_firewall_content_url";
        public static final String INTENT_FIREWALL_UPDATE_METADATA_URL = "intent_firewall_metadata_url";
        public static final String JOB_SCHEDULER_CONSTANTS = "job_scheduler_constants";
        public static final String LANG_ID_UPDATE_CONTENT_URL = "lang_id_content_url";
        public static final String LANG_ID_UPDATE_METADATA_URL = "lang_id_metadata_url";
        public static final String[] LEGACY_RESTORE_SETTINGS;
        public static final String LOCATION_BACKGROUND_THROTTLE_INTERVAL_MS = "location_background_throttle_interval_ms";
        public static final String LOCATION_BACKGROUND_THROTTLE_PACKAGE_WHITELIST = "location_background_throttle_package_whitelist";
        public static final String LOCATION_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS = "location_background_throttle_proximity_alert_interval_ms";
        public static final String LOCATION_SETTINGS_LINK_TO_PERMISSIONS_ENABLED = "location_settings_link_to_permissions_enabled";
        public static final String LOCK_MUSIC_SWITCH = "lock_music_switch";
        public static final String LOCK_MUSIC_SWITCH_SWITCH = "lock_music_switch_switch";
        public static final String LOCK_SOUND = "lock_sound";
        public static final String LOW_BATTERY_SOUND = "low_battery_sound";
        public static final String LOW_BATTERY_SOUND_TIMEOUT = "low_battery_sound_timeout";
        public static final String LOW_POWER_MODE = "low_power";
        public static final String LOW_POWER_MODE_TRIGGER_LEVEL = "low_power_trigger_level";
        public static final String LTE_SERVICE_FORCED = "lte_service_forced";
        public static final String MAX_NOTIFICATION_ENQUEUE_RATE = "max_notification_enqueue_rate";
        public static final String MDC_INITIAL_MAX_RETRY = "mdc_initial_max_retry";
        public static final String MHL_INPUT_SWITCHING_ENABLED = "mhl_input_switching_enabled";
        public static final String MHL_POWER_CHARGE_ENABLED = "mhl_power_charge_enabled";
        public static final String MOBILE_DATA = "mobile_data";
        public static final String MOBILE_DATA_ALWAYS_ON = "mobile_data_always_on";
        public static final String MODE_RINGER = "mode_ringer";
        private static final HashSet<String> MOVED_TO_SECURE;
        public static final String MULTI_SIM_DATA_CALL_SUBSCRIPTION = "multi_sim_data_call";
        public static final String MULTI_SIM_SMS_PROMPT = "multi_sim_sms_prompt";
        public static final String MULTI_SIM_SMS_SUBSCRIPTION = "multi_sim_sms";
        public static final String[] MULTI_SIM_USER_PREFERRED_SUBS;
        public static final String MULTI_SIM_VOICE_CALL_SUBSCRIPTION = "multi_sim_voice_call";
        public static final String MULTI_SIM_VOICE_PROMPT = "multi_sim_voice_prompt";
        public static final String MUSIC_SWITCH = "music_switch";
        public static final String MUSIC_SWITCH_SWITCH = "music_switch_switch";
        public static final String MUTE_ALARMS = "mute_alarms";
        public static final String MUTE_ALARMS_SWITCH = "mute_alarms_switch";
        public static final String MUTE_INCOMING_CALLS = "mute_incoming_calls";
        public static final String MUTE_INCOMING_CALLS_SWITCH = "mute_incoming_calls_switch";
        public static final String NETSTATS_AUGMENT_ENABLED = "netstats_augment_enabled";
        public static final String NETSTATS_DEV_BUCKET_DURATION = "netstats_dev_bucket_duration";
        public static final String NETSTATS_DEV_DELETE_AGE = "netstats_dev_delete_age";
        public static final String NETSTATS_DEV_PERSIST_BYTES = "netstats_dev_persist_bytes";
        public static final String NETSTATS_DEV_ROTATE_AGE = "netstats_dev_rotate_age";
        public static final String NETSTATS_ENABLED = "netstats_enabled";
        public static final String NETSTATS_GLOBAL_ALERT_BYTES = "netstats_global_alert_bytes";
        public static final String NETSTATS_POLL_INTERVAL = "netstats_poll_interval";
        public static final String NETSTATS_SAMPLE_ENABLED = "netstats_sample_enabled";
        public static final String NETSTATS_TIME_CACHE_MAX_AGE = "netstats_time_cache_max_age";
        public static final String NETSTATS_UID_BUCKET_DURATION = "netstats_uid_bucket_duration";
        public static final String NETSTATS_UID_DELETE_AGE = "netstats_uid_delete_age";
        public static final String NETSTATS_UID_PERSIST_BYTES = "netstats_uid_persist_bytes";
        public static final String NETSTATS_UID_ROTATE_AGE = "netstats_uid_rotate_age";
        public static final String NETSTATS_UID_TAG_BUCKET_DURATION = "netstats_uid_tag_bucket_duration";
        public static final String NETSTATS_UID_TAG_DELETE_AGE = "netstats_uid_tag_delete_age";
        public static final String NETSTATS_UID_TAG_PERSIST_BYTES = "netstats_uid_tag_persist_bytes";
        public static final String NETSTATS_UID_TAG_ROTATE_AGE = "netstats_uid_tag_rotate_age";
        public static final String NETWORK_ACCESS_TIMEOUT_MS = "network_access_timeout_ms";
        public static final String NETWORK_AVOID_BAD_WIFI = "network_avoid_bad_wifi";
        public static final String NETWORK_METERED_MULTIPATH_PREFERENCE = "network_metered_multipath_preference";
        public static final String NETWORK_PREFERENCE = "network_preference";
        public static final String NETWORK_RECOMMENDATIONS_ENABLED = "network_recommendations_enabled";
        public static final String NETWORK_RECOMMENDATIONS_PACKAGE = "network_recommendations_package";
        public static final String NETWORK_RECOMMENDATION_REQUEST_TIMEOUT_MS = "network_recommendation_request_timeout_ms";
        public static final String NETWORK_SCORER_APP = "network_scorer_app";
        public static final String NETWORK_SCORING_PROVISIONED = "network_scoring_provisioned";
        public static final String NETWORK_SCORING_UI_ENABLED = "network_scoring_ui_enabled";
        public static final String NETWORK_SWITCH_NOTIFICATION_DAILY_LIMIT = "network_switch_notification_daily_limit";
        public static final String NETWORK_SWITCH_NOTIFICATION_RATE_LIMIT_MILLIS = "network_switch_notification_rate_limit_millis";
        public static final String NEW_CONTACT_AGGREGATOR = "new_contact_aggregator";
        public static final String NITZ_UPDATE_DIFF = "nitz_update_diff";
        public static final String NITZ_UPDATE_SPACING = "nitz_update_spacing";
        public static final String NOTIFICATION_SNOOZE_OPTIONS = "notification_snooze_options";
        public static final String NSD_ON = "nsd_on";
        public static final String NTP_SERVER = "ntp_server";
        public static final String NTP_TIMEOUT = "ntp_timeout";
        public static final String OTA_DISABLE_AUTOMATIC_UPDATE = "ota_disable_automatic_update";
        public static final String OVERLAY_DISPLAY_DEVICES = "overlay_display_devices";
        public static final String PACKAGE_VERIFIER_DEFAULT_RESPONSE = "verifier_default_response";
        public static final String PACKAGE_VERIFIER_ENABLE = "package_verifier_enable";
        public static final String PACKAGE_VERIFIER_INCLUDE_ADB = "verifier_verify_adb_installs";
        public static final String PACKAGE_VERIFIER_SETTING_VISIBLE = "verifier_setting_visible";
        public static final String PACKAGE_VERIFIER_TIMEOUT = "verifier_timeout";
        public static final String PAC_CHANGE_DELAY = "pac_change_delay";
        public static final String PDP_WATCHDOG_ERROR_POLL_COUNT = "pdp_watchdog_error_poll_count";
        public static final String PDP_WATCHDOG_ERROR_POLL_INTERVAL_MS = "pdp_watchdog_error_poll_interval_ms";
        public static final String PDP_WATCHDOG_LONG_POLL_INTERVAL_MS = "pdp_watchdog_long_poll_interval_ms";
        public static final String PDP_WATCHDOG_MAX_PDP_RESET_FAIL_COUNT = "pdp_watchdog_max_pdp_reset_fail_count";
        public static final String PDP_WATCHDOG_POLL_INTERVAL_MS = "pdp_watchdog_poll_interval_ms";
        public static final String PDP_WATCHDOG_TRIGGER_PACKET_COUNT = "pdp_watchdog_trigger_packet_count";
        public static final String PLAY_CONTROL = "play_control";
        public static final String PLAY_CONTROL_SWITCH = "play_control_switch";
        public static final String POCKET_MODE_ENABLED = "pocket_mode_enabled";
        public static final String POLICY_CONTROL = "policy_control";
        public static final String POWER_MANAGER_CONSTANTS = "power_manager_constants";
        public static final String POWER_SAVING = "power_saving";
        public static final String POWER_SAVING_SWITCH = "power_saving_switch";
        public static final String POWER_SOUNDS_ENABLED = "power_sounds_enabled";
        public static final String PREFERRED_NETWORK_MODE = "preferred_network_mode";
        public static final String PROVISIONING_APN_ALARM_DELAY_IN_MS = "provisioning_apn_alarm_delay_in_ms";
        public static final String QUICK_BROWSE = "quick_browse";
        public static final String QUICK_BROWSE_SWITCH = "quick_browse_switch";
        public static final String RADIO_BLUETOOTH = "bluetooth";
        public static final String RADIO_CELL = "cell";
        public static final String RADIO_NFC = "nfc";
        public static final String RADIO_WIFI = "wifi";
        public static final String RADIO_WIMAX = "wimax";
        public static final String READ_EXTERNAL_STORAGE_ENFORCED_DEFAULT = "read_external_storage_enforced_default";
        public static final String RECOMMENDED_NETWORK_EVALUATOR_CACHE_EXPIRY_MS = "recommended_network_evaluator_cache_expiry_ms";
        public static final String REQUIRE_PASSWORD_TO_DECRYPT = "require_password_to_decrypt";
        public static final String SAFE_BOOT_DISALLOWED = "safe_boot_disallowed";
        public static final String SAMPLING_PROFILER_MS = "sampling_profiler_ms";
        public static final String SELINUX_STATUS = "selinux_status";
        public static final String SELINUX_UPDATE_CONTENT_URL = "selinux_content_url";
        public static final String SELINUX_UPDATE_METADATA_URL = "selinux_metadata_url";
        public static final String SEND_ACTION_APP_ERROR = "send_action_app_error";
        public static final String[] SETTINGS_TO_BACKUP;
        public static final String SETUP_PREPAID_DATA_SERVICE_URL = "setup_prepaid_data_service_url";
        public static final String SETUP_PREPAID_DETECTION_REDIR_HOST = "setup_prepaid_detection_redir_host";
        public static final String SETUP_PREPAID_DETECTION_TARGET_URL = "setup_prepaid_detection_target_url";
        public static final String SET_GLOBAL_HTTP_PROXY = "set_global_http_proxy";
        public static final String SET_INSTALL_LOCATION = "set_install_location";
        public static final String SHAKE_TO_SWITCH = "shake_to_switch";
        public static final String SHAKE_TO_SWITCH_SWITCH = "shake_to_switch_switch";
        public static final String SHORTCUT_MANAGER_CONSTANTS = "shortcut_manager_constants";
        public static final String SHOW_NOTIFICATION_CHANNEL_WARNINGS = "show_notification_channel_warnings";

        @Deprecated
        public static final String SHOW_PROCESSES = "show_processes";
        public static final String SHOW_TEMPERATURE_WARNING = "show_temperature_warning";
        public static final String SMART_BELL = "smart_bell";
        public static final String SMART_BELL_SWITCH = "smart_bell_switch";
        public static final String SMART_CALL_RECORDER = "smart_call_recorder";
        public static final String SMART_CALL_RECORDER_SWITCH = "smart_call_recorder_switch";
        public static final String SMART_MOTION_ENABLED = "smart_motion_enabled";
        public static final String SMART_SELECTION_UPDATE_CONTENT_URL = "smart_selection_content_url";
        public static final String SMART_SELECTION_UPDATE_METADATA_URL = "smart_selection_metadata_url";
        public static final String SMART_WAKE = "smart_wake";
        public static final String SMS_OUTGOING_CHECK_INTERVAL_MS = "sms_outgoing_check_interval_ms";
        public static final String SMS_OUTGOING_CHECK_MAX_COUNT = "sms_outgoing_check_max_count";
        public static final String SMS_SHORT_CODES_UPDATE_CONTENT_URL = "sms_short_codes_content_url";
        public static final String SMS_SHORT_CODES_UPDATE_METADATA_URL = "sms_short_codes_metadata_url";
        public static final String SMS_SHORT_CODE_CONFIRMATION = "sms_short_code_confirmation";
        public static final String SMS_SHORT_CODE_RULE = "sms_short_code_rule";
        public static final String SOFTAP_5G_CHANNEL_SWITCH = "is_support_5g_channel_choose";
        public static final String SOFTAP_CHANNEL_UPDATE_FLAG = "softap_channel_update_flag";
        public static final String SOFTAP_ENABLING_OR_ENABLED = "softap_enabling_or_enabled";
        public static final String SOFTAP_REENABLING = "softap_reenabling";
        public static final String SOFTAP_SUPPORT_CHANNELS = "hostapd_support_channels";
        public static final String SPEED_LABEL_CACHE_EVICTION_AGE_MILLIS = "speed_label_cache_eviction_age_millis";
        public static final String STAY_ON_WHILE_PLUGGED_IN = "stay_on_while_plugged_in";
        public static final String STORAGE_BENCHMARK_INTERVAL = "storage_benchmark_interval";
        public static final String STORAGE_SETTINGS_CLOBBER_THRESHOLD = "storage_settings_clobber_threshold";
        public static final String SYNC_MAX_RETRY_DELAY_IN_SECONDS = "sync_max_retry_delay_in_seconds";
        public static final String SYS_FREE_STORAGE_LOG_INTERVAL = "sys_free_storage_log_interval";
        public static final String SYS_STORAGE_CACHE_MAX_BYTES = "sys_storage_cache_max_bytes";
        public static final String SYS_STORAGE_CACHE_PERCENTAGE = "sys_storage_cache_percentage";
        public static final String SYS_STORAGE_FULL_THRESHOLD_BYTES = "sys_storage_full_threshold_bytes";
        public static final String SYS_STORAGE_THRESHOLD_MAX_BYTES = "sys_storage_threshold_max_bytes";
        public static final String SYS_STORAGE_THRESHOLD_PERCENTAGE = "sys_storage_threshold_percentage";
        public static final String TCP_DEFAULT_INIT_RWND = "tcp_default_init_rwnd";
        public static final String TETHER_DUN_APN = "tether_dun_apn";
        public static final String TETHER_DUN_REQUIRED = "tether_dun_required";
        public static final String TETHER_OFFLOAD_DISABLED = "tether_offload_disabled";
        public static final String TETHER_SUPPORTED = "tether_supported";
        public static final String TEXT_CLASSIFIER_CONSTANTS = "text_classifier_constants";
        public static final String THEATER_MODE_ON = "theater_mode_on";
        public static final String TOUCH_DISABLE = "touch_disable";
        public static final String TOUCH_DISABLE_SWITCH = "touch_disable_switch";
        public static final String TRANSITION_ANIMATION_SCALE = "transition_animation_scale";
        public static final String TRUSTED_SOUND = "trusted_sound";
        public static final String TZINFO_UPDATE_CONTENT_URL = "tzinfo_content_url";
        public static final String TZINFO_UPDATE_METADATA_URL = "tzinfo_metadata_url";
        public static final String UNINSTALLED_INSTANT_APP_MAX_CACHE_PERIOD = "uninstalled_instant_app_max_cache_period";
        public static final String UNINSTALLED_INSTANT_APP_MIN_CACHE_PERIOD = "uninstalled_instant_app_min_cache_period";
        public static final String UNLOCK_SOUND = "unlock_sound";
        public static final String UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD = "unused_static_shared_lib_min_cache_period";
        public static final String USB_MASS_STORAGE_ENABLED = "usb_mass_storage_enabled";
        public static final String USE_GOOGLE_MAIL = "use_google_mail";
        public static final String USE_OPEN_WIFI_PACKAGE = "use_open_wifi_package";
        public static final String VT_IMS_ENABLED = "vt_ims_enabled";
        public static final String WAIT_FOR_DEBUGGER = "wait_for_debugger";
        public static final String WARNING_TEMPERATURE = "warning_temperature";
        public static final String WEBVIEW_DATA_REDUCTION_PROXY_KEY = "webview_data_reduction_proxy_key";
        public static final String WEBVIEW_FALLBACK_LOGIC_ENABLED = "webview_fallback_logic_enabled";
        public static final String WEBVIEW_MULTIPROCESS = "webview_multiprocess";
        public static final String WEBVIEW_PROVIDER = "webview_provider";
        public static final String WFC_IMS_ENABLED = "wfc_ims_enabled";
        public static final String WFC_IMS_MODE = "wfc_ims_mode";
        public static final String WFC_IMS_ROAMING_ENABLED = "wfc_ims_roaming_enabled";
        public static final String WFC_IMS_ROAMING_MODE = "wfc_ims_roaming_mode";
        public static final String WIFI_BADGING_THRESHOLDS = "wifi_badging_thresholds";
        public static final String WIFI_BOUNCE_DELAY_OVERRIDE_MS = "wifi_bounce_delay_override_ms";
        public static final String WIFI_COUNTRY_CODE = "wifi_country_code";
        public static final String WIFI_DEVICE_OWNER_CONFIGS_LOCKDOWN = "wifi_device_owner_configs_lockdown";
        public static final String WIFI_DISPLAY_CERTIFICATION_ON = "wifi_display_certification_on";
        public static final String WIFI_DISPLAY_ON = "wifi_display_on";
        public static final String WIFI_DISPLAY_WPS_CONFIG = "wifi_display_wps_config";
        public static final String WIFI_ENHANCED_AUTO_JOIN = "wifi_enhanced_auto_join";
        public static final String WIFI_EPHEMERAL_OUT_OF_RANGE_TIMEOUT_MS = "wifi_ephemeral_out_of_range_timeout_ms";
        public static final String WIFI_FRAMEWORK_SCAN_INTERVAL_MS = "wifi_framework_scan_interval_ms";
        public static final String WIFI_FREQUENCY_BAND = "wifi_frequency_band";
        public static final String WIFI_IDLE_MS = "wifi_idle_ms";
        public static final String WIFI_MAX_DHCP_RETRY_COUNT = "wifi_max_dhcp_retry_count";
        public static final String WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS = "wifi_mobile_data_transition_wakelock_timeout_ms";

        @Deprecated
        public static final String WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON = "wifi_networks_available_notification_on";
        public static final String WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY = "wifi_networks_available_repeat_delay";
        public static final String WIFI_NETWORK_SHOW_RSSI = "wifi_network_show_rssi";
        public static final String WIFI_NUM_OPEN_NETWORKS_KEPT = "wifi_num_open_networks_kept";
        public static final String WIFI_ON = "wifi_on";
        public static final String WIFI_P2P_DEVICE_NAME = "wifi_p2p_device_name";
        public static final String WIFI_REENABLE_DELAY_MS = "wifi_reenable_delay";
        public static final String WIFI_SAVED_STATE = "wifi_saved_state";
        public static final String WIFI_SCAN_ALWAYS_AVAILABLE = "wifi_scan_always_enabled";
        public static final String WIFI_SCAN_BACKGROUND_THROTTLE_INTERVAL_MS = "wifi_scan_background_throttle_interval_ms";
        public static final String WIFI_SCAN_BACKGROUND_THROTTLE_PACKAGE_WHITELIST = "wifi_scan_background_throttle_package_whitelist";
        public static final String WIFI_SCAN_INTERVAL_WHEN_P2P_CONNECTED_MS = "wifi_scan_interval_p2p_connected_ms";
        public static final String WIFI_SLEEP_POLICY = "wifi_sleep_policy";
        public static final int WIFI_SLEEP_POLICY_DEFAULT = 0;
        public static final int WIFI_SLEEP_POLICY_NEVER = 2;
        public static final int WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED = 1;
        public static final String WIFI_SUPPLICANT_SCAN_INTERVAL_MS = "wifi_supplicant_scan_interval_ms";
        public static final String WIFI_SUSPEND_OPTIMIZATIONS_ENABLED = "wifi_suspend_optimizations_enabled";
        public static final String WIFI_VERBOSE_LOGGING_ENABLED = "wifi_verbose_logging_enabled";
        public static final String WIFI_WAKEUP_AVAILABLE = "wifi_wakeup_available";
        public static final String WIFI_WAKEUP_ENABLED = "wifi_wakeup_enabled";
        public static final String WIFI_WATCHDOG_ON = "wifi_watchdog_on";
        public static final String WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED = "wifi_watchdog_poor_network_test_enabled";
        public static final String WIMAX_NETWORKS_AVAILABLE_NOTIFICATION_ON = "wimax_networks_available_notification_on";
        public static final String WINDOW_ANIMATION_SCALE = "window_animation_scale";
        public static final String WIRELESS_CHARGING_STARTED_SOUND = "wireless_charging_started_sound";
        public static final String WTF_IS_FATAL = "wtf_is_fatal";
        public static final String ZEN_MODE = "zen_mode";
        public static final int ZEN_MODE_ALARMS = 3;
        public static final String ZEN_MODE_CONFIG_ETAG = "zen_mode_config_etag";
        public static final int ZEN_MODE_IMPORTANT_INTERRUPTIONS = 1;
        public static final int ZEN_MODE_NO_INTERRUPTIONS = 2;
        public static final int ZEN_MODE_OFF = 0;
        public static final String ZEN_MODE_RINGER_LEVEL = "zen_mode_ringer_level";
        private static final NameValueCache sNameValueCache;
        private static final ContentProviderHolder sProviderHolder;

        static {
            Uri uri = Uri.parse("content://settings/global");
            CONTENT_URI = uri;
            SETTINGS_TO_BACKUP = new String[]{"bugreport_in_power_menu", "stay_on_while_plugged_in", "auto_time", "auto_time_zone", "power_sounds_enabled", "dock_sounds_enabled", CHARGING_SOUNDS_ENABLED, "usb_mass_storage_enabled", NETWORK_RECOMMENDATIONS_ENABLED, WIFI_WAKEUP_ENABLED, "wifi_networks_available_notification_on", USE_OPEN_WIFI_PACKAGE, WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED, EMERGENCY_TONE, CALL_AUTO_RETRY, DOCK_AUDIO_MEDIA_ENABLED, ENCODED_SURROUND_OUTPUT, LOW_POWER_MODE_TRIGGER_LEVEL, "bluetooth_on"};
            LEGACY_RESTORE_SETTINGS = new String[0];
            ContentProviderHolder contentProviderHolder = new ContentProviderHolder(uri);
            sProviderHolder = contentProviderHolder;
            sNameValueCache = new NameValueCache(uri, Settings.CALL_METHOD_GET_GLOBAL, Settings.CALL_METHOD_PUT_GLOBAL, contentProviderHolder);
            HashSet<String> hashSet = new HashSet<>(1);
            MOVED_TO_SECURE = hashSet;
            hashSet.add("install_non_market_apps");
            MULTI_SIM_USER_PREFERRED_SUBS = new String[]{"user_preferred_sub1", "user_preferred_sub2", "user_preferred_sub3"};
            ArraySet arraySet = new ArraySet();
            INSTANT_APP_SETTINGS = arraySet;
            m.n(arraySet, "wait_for_debugger", "device_provisioned", DEVELOPMENT_FORCE_RESIZABLE_ACTIVITIES, DEVELOPMENT_FORCE_RTL);
            m.n(arraySet, EPHEMERAL_COOKIE_MAX_SIZE_BYTES, "airplane_mode_on", "window_animation_scale", "transition_animation_scale");
            m.n(arraySet, "animator_duration_scale", DEBUG_VIEW_ATTRIBUTES, WTF_IS_FATAL, SEND_ACTION_APP_ERROR);
        }

        public static void clearProviderForTest() {
            sProviderHolder.clearProviderForTest();
            sNameValueCache.clearGenerationTrackerForTest();
        }

        public static final String getBluetoothA2dpOptionalCodecsEnabledKey(String str) {
            return BLUETOOTH_A2DP_OPTIONAL_CODECS_ENABLED_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothA2dpSinkPriorityKey(String str) {
            return BLUETOOTH_A2DP_SINK_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothA2dpSrcPriorityKey(String str) {
            return BLUETOOTH_A2DP_SRC_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothA2dpSupportsOptionalCodecsKey(String str) {
            return BLUETOOTH_A2DP_SUPPORTS_OPTIONAL_CODECS_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothHeadsetPriorityKey(String str) {
            return BLUETOOTH_HEADSET_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothInputDevicePriorityKey(String str) {
            return BLUETOOTH_INPUT_DEVICE_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothMapClientPriorityKey(String str) {
            return BLUETOOTH_MAP_CLIENT_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothMapPriorityKey(String str) {
            return BLUETOOTH_MAP_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothPanPriorityKey(String str) {
            return BLUETOOTH_PAN_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothPbapClientPriorityKey(String str) {
            return BLUETOOTH_PBAP_CLIENT_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static final String getBluetoothSapPriorityKey(String str) {
            return BLUETOOTH_SAP_PRIORITY_PREFIX + str.toUpperCase(Locale.ROOT);
        }

        public static float getFloat(ContentResolver contentResolver, String str, float f2) {
            String string = getString(contentResolver, str);
            if (string == null) {
                return f2;
            }
            try {
                return Float.parseFloat(string);
            } catch (NumberFormatException unused) {
                return f2;
            }
        }

        public static int getInt(ContentResolver contentResolver, String str, int i2) {
            String string = getString(contentResolver, str);
            if (string == null) {
                return i2;
            }
            try {
                return Integer.parseInt(string);
            } catch (NumberFormatException unused) {
                return i2;
            }
        }

        public static long getLong(ContentResolver contentResolver, String str, long j2) {
            String string = getString(contentResolver, str);
            if (string == null) {
                return j2;
            }
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException unused) {
                return j2;
            }
        }

        public static void getMovedToSecureSettings(Set<String> set) {
            set.addAll(MOVED_TO_SECURE);
        }

        public static String getString(ContentResolver contentResolver, String str) {
            return getStringForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static String getStringForUser(ContentResolver contentResolver, String str, int i2) {
            if (!MOVED_TO_SECURE.contains(str)) {
                return sNameValueCache.getStringForUser(contentResolver, str, i2);
            }
            m.s("Setting ", str, " has moved from android.provider.Settings.Global to android.provider.Settings.Secure, returning read-only value.", Settings.TAG);
            return Secure.getStringForUser(contentResolver, str, i2);
        }

        public static Uri getUriFor(String str) {
            return NameValueTable.getUriFor(CONTENT_URI, str);
        }

        public static boolean isValidZenMode(int i2) {
            return i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3;
        }

        public static boolean putFloat(ContentResolver contentResolver, String str, float f2) {
            return putString(contentResolver, str, Float.toString(f2));
        }

        public static boolean putInt(ContentResolver contentResolver, String str, int i2) {
            return putString(contentResolver, str, Integer.toString(i2));
        }

        public static boolean putLong(ContentResolver contentResolver, String str, long j2) {
            return putString(contentResolver, str, Long.toString(j2));
        }

        public static boolean putString(ContentResolver contentResolver, String str, String str2) {
            return putStringForUser(contentResolver, str, str2, null, false, UserHandle.myUserId());
        }

        public static boolean putStringForUser(ContentResolver contentResolver, String str, String str2, int i2) {
            return putStringForUser(contentResolver, str, str2, null, false, i2);
        }

        public static void resetToDefaults(ContentResolver contentResolver, String str) {
            resetToDefaultsAsUser(contentResolver, str, 1, UserHandle.myUserId());
        }

        public static void resetToDefaultsAsUser(ContentResolver contentResolver, String str, int i2, int i3) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt(Settings.CALL_METHOD_USER_KEY, i3);
                if (str != null) {
                    bundle.putString(Settings.CALL_METHOD_TAG_KEY, str);
                }
                bundle.putInt(Settings.CALL_METHOD_RESET_MODE_KEY, i2);
                sProviderHolder.getProvider(contentResolver).call(contentResolver.getPackageName(), Settings.CALL_METHOD_RESET_GLOBAL, null, bundle);
            } catch (RemoteException e2) {
                Log.w(Settings.TAG, "Can't reset do defaults for " + CONTENT_URI, e2);
            }
        }

        public static String zenModeToString(int i2) {
            if (i2 == 1) {
                return "ZEN_MODE_IMPORTANT_INTERRUPTIONS";
            }
            if (i2 == 3) {
                return "ZEN_MODE_ALARMS";
            }
            return i2 == 2 ? "ZEN_MODE_NO_INTERRUPTIONS" : "ZEN_MODE_OFF";
        }

        public static boolean putString(ContentResolver contentResolver, String str, String str2, String str3, boolean z2) {
            return putStringForUser(contentResolver, str, str2, str3, z2, UserHandle.myUserId());
        }

        public static boolean putStringForUser(ContentResolver contentResolver, String str, String str2, String str3, boolean z2, int i2) {
            if (!MOVED_TO_SECURE.contains(str)) {
                return sNameValueCache.putStringForUser(contentResolver, str, str2, str3, z2, i2);
            }
            m.s("Setting ", str, " has moved from android.provider.Settings.Global to android.provider.Settings.Secure, value is unchanged.", Settings.TAG);
            return Secure.putStringForUser(contentResolver, str, str2, str3, z2, i2);
        }

        public static float getFloat(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            String string = getString(contentResolver, str);
            if (string != null) {
                try {
                    return Float.parseFloat(string);
                } catch (NumberFormatException unused) {
                    throw new SettingNotFoundException(str);
                }
            }
            throw new SettingNotFoundException(str);
        }

        public static int getInt(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            try {
                return Integer.parseInt(getString(contentResolver, str));
            } catch (NumberFormatException unused) {
                throw new SettingNotFoundException(str);
            }
        }

        public static long getLong(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            try {
                return Long.parseLong(getString(contentResolver, str));
            } catch (NumberFormatException unused) {
                throw new SettingNotFoundException(str);
            }
        }
    }

    public static class NameValueCache {
        private static final boolean DEBUG = false;
        private static final String NAME_EQ_PLACEHOLDER = "name=?";
        private static final String[] SELECT_VALUE_PROJECTION = {"value"};
        private final String mCallGetCommand;
        private final String mCallSetCommand;

        @GuardedBy("this")
        private GenerationTracker mGenerationTracker;
        private final ContentProviderHolder mProviderHolder;
        private final Uri mUri;
        private final HashMap<String, String> mValues = new HashMap<>();

        public NameValueCache(Uri uri, String str, String str2, ContentProviderHolder contentProviderHolder) {
            this.mUri = uri;
            this.mCallGetCommand = str;
            this.mCallSetCommand = str2;
            this.mProviderHolder = contentProviderHolder;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getStringForUser$0() {
            synchronized (this) {
                Log.e(Settings.TAG, "Error accessing generation tracker - removing");
                GenerationTracker generationTracker = this.mGenerationTracker;
                if (generationTracker != null) {
                    this.mGenerationTracker = null;
                    generationTracker.destroy();
                    this.mValues.clear();
                }
            }
        }

        public void clearGenerationTrackerForTest() {
            synchronized (this) {
                GenerationTracker generationTracker = this.mGenerationTracker;
                if (generationTracker != null) {
                    generationTracker.destroy();
                }
                this.mValues.clear();
                this.mGenerationTracker = null;
            }
        }

        /* JADX WARN: Code duplicated, block: B:112:0x0194  */
        /* JADX WARN: Code duplicated, block: B:124:0x00a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:47:0x008d A[Catch: RemoteException -> 0x00e0, TryCatch #3 {RemoteException -> 0x00e0, blocks: (B:26:0x0042, B:28:0x004e, B:37:0x0066, B:39:0x006c, B:41:0x0076, B:43:0x0084, B:49:0x0099, B:51:0x00a2, B:65:0x00db, B:45:0x0089, B:46:0x008c, B:47:0x008d, B:69:0x00df, B:42:0x007a, B:53:0x00a5, B:56:0x00b8, B:58:0x00c2, B:59:0x00c5, B:60:0x00d2, B:61:0x00d7, B:30:0x0051, B:33:0x0057, B:34:0x005d, B:36:0x0065), top: B:120:0x0042, inners: #6, #8, #10 }] */
        /* JADX WARN: Code duplicated, block: B:49:0x0099 A[Catch: RemoteException -> 0x00e0, TryCatch #3 {RemoteException -> 0x00e0, blocks: (B:26:0x0042, B:28:0x004e, B:37:0x0066, B:39:0x006c, B:41:0x0076, B:43:0x0084, B:49:0x0099, B:51:0x00a2, B:65:0x00db, B:45:0x0089, B:46:0x008c, B:47:0x008d, B:69:0x00df, B:42:0x007a, B:53:0x00a5, B:56:0x00b8, B:58:0x00c2, B:59:0x00c5, B:60:0x00d2, B:61:0x00d7, B:30:0x0051, B:33:0x0057, B:34:0x005d, B:36:0x0065), top: B:120:0x0042, inners: #6, #8, #10 }] */
        /* JADX WARN: Code duplicated, block: B:51:0x00a2 A[Catch: RemoteException -> 0x00e0, TRY_LEAVE, TryCatch #3 {RemoteException -> 0x00e0, blocks: (B:26:0x0042, B:28:0x004e, B:37:0x0066, B:39:0x006c, B:41:0x0076, B:43:0x0084, B:49:0x0099, B:51:0x00a2, B:65:0x00db, B:45:0x0089, B:46:0x008c, B:47:0x008d, B:69:0x00df, B:42:0x007a, B:53:0x00a5, B:56:0x00b8, B:58:0x00c2, B:59:0x00c5, B:60:0x00d2, B:61:0x00d7, B:30:0x0051, B:33:0x0057, B:34:0x005d, B:36:0x0065), top: B:120:0x0042, inners: #6, #8, #10 }] */
        /* JADX WARN: Code duplicated, block: B:52:0x00a3 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:55:0x00b6 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:58:0x00c2 A[Catch: all -> 0x00d9, TryCatch #8 {, blocks: (B:53:0x00a5, B:56:0x00b8, B:58:0x00c2, B:59:0x00c5, B:60:0x00d2, B:61:0x00d7), top: B:124:0x00a5, outer: #3 }] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
        /* JADX WARN: Type inference failed for: r10v2 */
        public String getStringForUser(ContentResolver contentResolver, String str, int i2) throws Throwable {
            Cursor cursorQuery;
            Bundle bundle;
            boolean z2;
            Bundle bundleCall;
            String string;
            MemoryIntArray memoryIntArray;
            int i3;
            GenerationTracker generationTracker;
            boolean z3 = i2 == UserHandle.myUserId();
            if (z3) {
                synchronized (this) {
                    GenerationTracker generationTracker2 = this.mGenerationTracker;
                    if (generationTracker2 != null) {
                        if (generationTracker2.isGenerationChanged()) {
                            this.mValues.clear();
                        } else if (this.mValues.containsKey(str)) {
                            return this.mValues.get(str);
                        }
                    }
                }
            }
            IContentProvider provider = this.mProviderHolder.getProvider(contentResolver);
            ?? r10 = 0;
            if (this.mCallGetCommand != null) {
                if (z3) {
                    bundle = null;
                } else {
                    try {
                        bundle = new Bundle();
                        bundle.putInt(Settings.CALL_METHOD_USER_KEY, i2);
                    } catch (RemoteException unused) {
                    }
                }
                synchronized (this) {
                    if (z3) {
                        if (this.mGenerationTracker == null) {
                            if (bundle == null) {
                                bundle = new Bundle();
                            }
                            bundle.putString(Settings.CALL_METHOD_TRACK_GENERATION_KEY, null);
                            z2 = true;
                        }
                        if (Settings.isInSystemServer() || Binder.getCallingUid() == Process.myUid()) {
                            bundleCall = provider.call(contentResolver.getPackageName(), this.mCallGetCommand, str, bundle);
                        } else {
                            long jClearCallingIdentity = Binder.clearCallingIdentity();
                            try {
                                bundleCall = provider.call(contentResolver.getPackageName(), this.mCallGetCommand, str, bundle);
                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                            } catch (Throwable th) {
                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                                throw th;
                            }
                        }
                        if (bundleCall != null) {
                            string = bundleCall.getString("value");
                            if (z3) {
                                synchronized (this) {
                                    if (z2) {
                                        memoryIntArray = (MemoryIntArray) bundleCall.getParcelable(Settings.CALL_METHOD_TRACK_GENERATION_KEY);
                                        i3 = bundleCall.getInt(Settings.CALL_METHOD_GENERATION_INDEX_KEY, -1);
                                        if (memoryIntArray != null && i3 >= 0) {
                                            int i4 = bundleCall.getInt(Settings.CALL_METHOD_GENERATION_KEY, 0);
                                            generationTracker = this.mGenerationTracker;
                                            if (generationTracker != null) {
                                                generationTracker.destroy();
                                            }
                                            this.mGenerationTracker = new GenerationTracker(memoryIntArray, i3, i4, new b(this, 7));
                                        }
                                    }
                                    this.mValues.put(str, string);
                                }
                            }
                            return string;
                        }
                    }
                    z2 = false;
                    if (Settings.isInSystemServer()) {
                        bundleCall = provider.call(contentResolver.getPackageName(), this.mCallGetCommand, str, bundle);
                        if (bundleCall != null) {
                            string = bundleCall.getString("value");
                            if (z3) {
                                synchronized (this) {
                                    if (z2) {
                                        memoryIntArray = (MemoryIntArray) bundleCall.getParcelable(Settings.CALL_METHOD_TRACK_GENERATION_KEY);
                                        i3 = bundleCall.getInt(Settings.CALL_METHOD_GENERATION_INDEX_KEY, -1);
                                        if (memoryIntArray != null) {
                                            int i5 = bundleCall.getInt(Settings.CALL_METHOD_GENERATION_KEY, 0);
                                            generationTracker = this.mGenerationTracker;
                                            if (generationTracker != null) {
                                                generationTracker.destroy();
                                            }
                                            this.mGenerationTracker = new GenerationTracker(memoryIntArray, i3, i5, new b(this, 7));
                                        }
                                    }
                                    this.mValues.put(str, string);
                                }
                            }
                            return string;
                        }
                    } else {
                        bundleCall = provider.call(contentResolver.getPackageName(), this.mCallGetCommand, str, bundle);
                        if (bundleCall != null) {
                            string = bundleCall.getString("value");
                            if (z3) {
                                synchronized (this) {
                                    if (z2) {
                                        memoryIntArray = (MemoryIntArray) bundleCall.getParcelable(Settings.CALL_METHOD_TRACK_GENERATION_KEY);
                                        i3 = bundleCall.getInt(Settings.CALL_METHOD_GENERATION_INDEX_KEY, -1);
                                        if (memoryIntArray != null) {
                                            int i6 = bundleCall.getInt(Settings.CALL_METHOD_GENERATION_KEY, 0);
                                            generationTracker = this.mGenerationTracker;
                                            if (generationTracker != null) {
                                                generationTracker.destroy();
                                            }
                                            this.mGenerationTracker = new GenerationTracker(memoryIntArray, i3, i6, new b(this, 7));
                                        }
                                    }
                                    this.mValues.put(str, string);
                                }
                            }
                            return string;
                        }
                    }
                }
            }
            try {
                try {
                    Bundle bundleCreateSqlQueryBundle = ContentResolver.createSqlQueryBundle(NAME_EQ_PLACEHOLDER, new String[]{str}, null);
                    if (!Settings.isInSystemServer() || Binder.getCallingUid() == Process.myUid()) {
                        cursorQuery = provider.query(contentResolver.getPackageName(), this.mUri, SELECT_VALUE_PROJECTION, bundleCreateSqlQueryBundle, null);
                    } else {
                        long jClearCallingIdentity2 = Binder.clearCallingIdentity();
                        try {
                            cursorQuery = provider.query(contentResolver.getPackageName(), this.mUri, SELECT_VALUE_PROJECTION, bundleCreateSqlQueryBundle, null);
                            try {
                                Binder.restoreCallingIdentity(jClearCallingIdentity2);
                            } catch (RemoteException e2) {
                                e = e2;
                                Log.w(Settings.TAG, "Can't get key " + str + " from " + this.mUri, e);
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return null;
                            }
                        } catch (Throwable th2) {
                            Binder.restoreCallingIdentity(jClearCallingIdentity2);
                            throw th2;
                        }
                    }
                    if (cursorQuery != null) {
                        String string2 = cursorQuery.moveToNext() ? cursorQuery.getString(0) : null;
                        synchronized (this) {
                            this.mValues.put(str, string2);
                            cursorQuery.close();
                            return string2;
                        }
                    }
                    Log.w(Settings.TAG, "Can't get key " + str + " from " + this.mUri);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    r10 = contentResolver;
                    if (r10 != 0) {
                        r10.close();
                    }
                    throw th;
                }
            } catch (RemoteException e3) {
                e = e3;
                cursorQuery = null;
            } catch (Throwable th4) {
                th = th4;
                if (r10 != 0) {
                    r10.close();
                }
                throw th;
            }
        }

        public boolean putStringForUser(ContentResolver contentResolver, String str, String str2, String str3, boolean z2, int i2) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("value", str2);
                bundle.putInt(Settings.CALL_METHOD_USER_KEY, i2);
                if (str3 != null) {
                    bundle.putString(Settings.CALL_METHOD_TAG_KEY, str3);
                }
                if (z2) {
                    bundle.putBoolean(Settings.CALL_METHOD_MAKE_DEFAULT_KEY, true);
                }
                this.mProviderHolder.getProvider(contentResolver).call(contentResolver.getPackageName(), this.mCallSetCommand, str, bundle);
                return true;
            } catch (RemoteException e2) {
                StringBuilder sbV = android.accessibilityservice.c.v("Can't set key ", str, " in ");
                sbV.append(this.mUri);
                Log.w(Settings.TAG, sbV.toString(), e2);
                return false;
            }
        }
    }

    public static class NameValueTable implements BaseColumns {
        public static final String NAME = "name";
        public static final String VALUE = "value";

        public static Uri getUriFor(Uri uri, String str) {
            return Uri.withAppendedPath(uri, str);
        }

        public static boolean putString(ContentResolver contentResolver, Uri uri, String str, String str2) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("name", str);
                contentValues.put("value", str2);
                contentResolver.insert(uri, contentValues);
                return true;
            } catch (SQLException e2) {
                Log.w(Settings.TAG, "Can't set key " + str + " in " + uri, e2);
                return false;
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResetMode {
    }

    public static final class Secure extends NameValueTable {
        public static final String ACCESSIBILITY_AUTOCLICK_DELAY = "accessibility_autoclick_delay";
        public static final String ACCESSIBILITY_AUTOCLICK_ENABLED = "accessibility_autoclick_enabled";
        public static final String ACCESSIBILITY_BUTTON_TARGET_COMPONENT = "accessibility_button_target_component";
        public static final String ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR = "accessibility_captioning_background_color";
        public static final String ACCESSIBILITY_CAPTIONING_EDGE_COLOR = "accessibility_captioning_edge_color";
        public static final String ACCESSIBILITY_CAPTIONING_EDGE_TYPE = "accessibility_captioning_edge_type";
        public static final String ACCESSIBILITY_CAPTIONING_ENABLED = "accessibility_captioning_enabled";
        public static final String ACCESSIBILITY_CAPTIONING_FONT_SCALE = "accessibility_captioning_font_scale";
        public static final String ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR = "accessibility_captioning_foreground_color";
        public static final String ACCESSIBILITY_CAPTIONING_LOCALE = "accessibility_captioning_locale";
        public static final String ACCESSIBILITY_CAPTIONING_PRESET = "accessibility_captioning_preset";
        public static final String ACCESSIBILITY_CAPTIONING_TYPEFACE = "accessibility_captioning_typeface";
        public static final String ACCESSIBILITY_CAPTIONING_WINDOW_COLOR = "accessibility_captioning_window_color";
        public static final String ACCESSIBILITY_DISPLAY_DALTONIZER = "accessibility_display_daltonizer";
        public static final String ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED = "accessibility_display_daltonizer_enabled";
        public static final String ACCESSIBILITY_DISPLAY_INVERSION_ENABLED = "accessibility_display_inversion_enabled";

        @Deprecated
        public static final String ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE = "accessibility_display_magnification_auto_update";
        public static final String ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED = "accessibility_display_magnification_enabled";
        public static final String ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED = "accessibility_display_magnification_navbar_enabled";
        public static final String ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE = "accessibility_display_magnification_scale";
        public static final String ACCESSIBILITY_ENABLED = "accessibility_enabled";
        public static final String ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED = "high_text_contrast_enabled";
        public static final String ACCESSIBILITY_LARGE_POINTER_ICON = "accessibility_large_pointer_icon";
        public static final String ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN = "accessibility_shortcut_dialog_shown";
        public static final String ACCESSIBILITY_SHORTCUT_ENABLED = "accessibility_shortcut_enabled";
        public static final String ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN = "accessibility_shortcut_on_lock_screen";
        public static final String ACCESSIBILITY_SHORTCUT_TARGET_SERVICE = "accessibility_shortcut_target_service";
        public static final String ACCESSIBILITY_SOFT_KEYBOARD_MODE = "accessibility_soft_keyboard_mode";

        @Deprecated
        public static final String ACCESSIBILITY_SPEAK_PASSWORD = "speak_password";

        @Deprecated
        public static final String ADB_ENABLED = "adb_enabled";
        public static final String ALLOWED_GEOLOCATION_ORIGINS = "allowed_geolocation_origins";

        @Deprecated
        public static final String ALLOW_MOCK_LOCATION = "mock_location";
        public static final String ALWAYS_ON_VPN_APP = "always_on_vpn_app";
        public static final String ALWAYS_ON_VPN_LOCKDOWN = "always_on_vpn_lockdown";
        public static final String ANDROID_ID = "android_id";
        public static final String ANR_SHOW_BACKGROUND = "anr_show_background";
        public static final String ASSISTANT = "assistant";
        public static final String ASSISTANT_APP_BOTTOM = "assistant_app_bottom";
        public static final String ASSISTANT_APP_LEFT = "assistant_app_left";
        public static final String ASSISTANT_APP_RIGHT = "assistant_app_right";
        public static final String ASSISTANT_APP_TOP = "assistant_app_top";
        public static final String ASSISTANT_ON = "assistant_on";
        public static final String ASSISTANT_SHORTCUT_BOTTOM = "assistant_shortcut_bottom";
        public static final String ASSISTANT_SHORTCUT_LEFT = "assistant_shortcut_left";
        public static final String ASSISTANT_SHORTCUT_RIGHT = "assistant_shortcut_right";
        public static final String ASSISTANT_SHORTCUT_TOP = "assistant_shortcut_top";
        public static final String ASSIST_DISCLOSURE_ENABLED = "assist_disclosure_enabled";
        public static final String ASSIST_GESTURE_ENABLED = "assist_gesture_enabled";
        public static final String ASSIST_GESTURE_SENSITIVITY = "assist_gesture_sensitivity";
        public static final String ASSIST_GESTURE_SETUP_COMPLETE = "assist_gesture_setup_complete";
        public static final String ASSIST_GESTURE_SILENCE_ALERTS_ENABLED = "assist_gesture_silence_alerts_enabled";
        public static final String ASSIST_GESTURE_WAKE_ENABLED = "assist_gesture_wake_enabled";
        public static final String ASSIST_SCREENSHOT_ENABLED = "assist_screenshot_enabled";
        public static final String ASSIST_STRUCTURE_ENABLED = "assist_structure_enabled";
        public static final String AUTOFILL_SERVICE = "autofill_service";
        public static final String AUTOFILL_SERVICE_SEARCH_URI = "autofill_service_search_uri";
        public static final String AUTOMATIC_STORAGE_MANAGER_BYTES_CLEARED = "automatic_storage_manager_bytes_cleared";
        public static final String AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN = "automatic_storage_manager_days_to_retain";
        public static final int AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_DEFAULT = 90;
        public static final String AUTOMATIC_STORAGE_MANAGER_ENABLED = "automatic_storage_manager_enabled";
        public static final String AUTOMATIC_STORAGE_MANAGER_LAST_RUN = "automatic_storage_manager_last_run";
        public static final String AUTOMATIC_STORAGE_MANAGER_TURNED_OFF_BY_POLICY = "automatic_storage_manager_turned_off_by_policy";

        @Deprecated
        public static final String BACKGROUND_DATA = "background_data";
        public static final String BACKUP_AUTO_RESTORE = "backup_auto_restore";
        public static final String BACKUP_ENABLED = "backup_enabled";
        public static final String BACKUP_PROVISIONED = "backup_provisioned";
        public static final String BACKUP_TRANSPORT = "backup_transport";

        @Deprecated
        public static final String BLUETOOTH_ON = "bluetooth_on";

        @Deprecated
        public static final String BUGREPORT_IN_POWER_MENU = "bugreport_in_power_menu";
        public static final String CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED = "camera_double_tap_power_gesture_disabled";
        public static final String CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED = "camera_double_twist_to_flip_enabled";
        public static final String CAMERA_GESTURE_DISABLED = "camera_gesture_disabled";
        public static final String CAMERA_LIFT_TRIGGER_ENABLED = "camera_lift_trigger_enabled";
        public static final int CAMERA_LIFT_TRIGGER_ENABLED_DEFAULT = 1;
        public static final String CARRIER_APPS_HANDLED = "carrier_apps_handled";
        private static final Set<String> CLONE_TO_MANAGED_PROFILE;
        public static final String CMAS_ADDITIONAL_BROADCAST_PKG = "cmas_additional_broadcast_pkg";
        public static final String COMPLETED_CATEGORY_PREFIX = "suggested.completed_category.";
        public static final String CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS = "connectivity_release_pending_intent_delay_ms";
        public static final Uri CONTENT_URI;

        @Deprecated
        public static final String DATA_ROAMING = "data_roaming";
        public static final String DEFAULT_INPUT_METHOD = "default_input_method";
        public static final String DEMO_USER_SETUP_COMPLETE = "demo_user_setup_complete";

        @Deprecated
        public static final String DEVELOPMENT_SETTINGS_ENABLED = "development_settings_enabled";
        public static final String DEVICE_PAIRED = "device_paired";

        @Deprecated
        public static final String DEVICE_PROVISIONED = "device_provisioned";
        public static final String DIALER_DEFAULT_APPLICATION = "dialer_default_application";
        public static final String DISABLED_PRINT_SERVICES = "disabled_print_services";
        public static final String DISABLED_SYSTEM_INPUT_METHODS = "disabled_system_input_methods";
        public static final String DISPLAY_DENSITY_FORCED = "display_density_forced";
        public static final String DOUBLE_TAP_TO_WAKE = "double_tap_to_wake";
        public static final String DOZE_ALWAYS_ON = "doze_always_on";
        public static final String DOZE_ENABLED = "doze_enabled";
        public static final String DOZE_PULSE_ON_DOUBLE_TAP = "doze_pulse_on_double_tap";
        public static final String DOZE_PULSE_ON_LONG_PRESS = "doze_pulse_on_long_press";
        public static final String DOZE_PULSE_ON_PICK_UP = "doze_pulse_on_pick_up";
        public static final String EMERGENCY_ASSISTANCE_APPLICATION = "emergency_assistance_application";
        public static final String ENABLED_ACCESSIBILITY_SERVICES = "enabled_accessibility_services";
        public static final String ENABLED_INPUT_METHODS = "enabled_input_methods";

        @Deprecated
        public static final String ENABLED_NOTIFICATION_ASSISTANT = "enabled_notification_assistant";

        @Deprecated
        public static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";

        @Deprecated
        public static final String ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES = "enabled_notification_policy_access_packages";
        public static final String ENABLED_PRINT_SERVICES = "enabled_print_services";
        public static final String ENABLED_VR_LISTENERS = "enabled_vr_listeners";
        public static final String ENHANCED_VOICE_PRIVACY_ENABLED = "enhanced_voice_privacy_enabled";

        @Deprecated
        public static final String HTTP_PROXY = "http_proxy";
        public static final String IMMERSIVE_MODE_CONFIRMATIONS = "immersive_mode_confirmations";
        public static final String INCALL_BACK_BUTTON_BEHAVIOR = "incall_back_button_behavior";
        public static final int INCALL_BACK_BUTTON_BEHAVIOR_DEFAULT = 0;
        public static final int INCALL_BACK_BUTTON_BEHAVIOR_HANGUP = 1;
        public static final int INCALL_BACK_BUTTON_BEHAVIOR_NONE = 0;
        public static final String INCALL_POWER_BUTTON_BEHAVIOR = "incall_power_button_behavior";
        public static final int INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT = 1;
        public static final int INCALL_POWER_BUTTON_BEHAVIOR_HANGUP = 2;
        public static final int INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF = 1;
        public static final String INPUT_METHODS_SUBTYPE_HISTORY = "input_methods_subtype_history";
        public static final String INPUT_METHOD_SELECTOR_VISIBILITY = "input_method_selector_visibility";
        public static final String INSTALL_NON_MARKET_APPS = "install_non_market_apps";
        public static final String INSTANT_APPS_ENABLED = "instant_apps_enabled";
        public static final Set<String> INSTANT_APP_SETTINGS;
        public static final String LAST_SETUP_SHOWN = "last_setup_shown";
        public static final String[] LEGACY_RESTORE_SETTINGS;
        public static final String LOCATION_MODE = "location_mode";
        public static final int LOCATION_MODE_BATTERY_SAVING = 2;
        public static final int LOCATION_MODE_HIGH_ACCURACY = 3;
        public static final int LOCATION_MODE_OFF = 0;
        public static final int LOCATION_MODE_PREVIOUS = -1;
        public static final int LOCATION_MODE_SENSORS_ONLY = 1;
        public static final String LOCATION_PREVIOUS_MODE = "location_previous_mode";

        @Deprecated
        public static final String LOCATION_PROVIDERS_ALLOWED = "location_providers_allowed";

        @Deprecated
        public static final String LOCK_BIOMETRIC_WEAK_FLAGS = "lock_biometric_weak_flags";

        @Deprecated
        public static final String LOCK_PATTERN_ENABLED = "lock_pattern_autolock";

        @Deprecated
        public static final String LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED = "lock_pattern_tactile_feedback_enabled";

        @Deprecated
        public static final String LOCK_PATTERN_VISIBLE = "lock_pattern_visible_pattern";
        public static final String LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS = "lock_screen_allow_private_notifications";
        public static final String LOCK_SCREEN_ALLOW_REMOTE_INPUT = "lock_screen_allow_remote_input";

        @Deprecated
        public static final String LOCK_SCREEN_APPWIDGET_IDS = "lock_screen_appwidget_ids";

        @Deprecated
        public static final String LOCK_SCREEN_FALLBACK_APPWIDGET_ID = "lock_screen_fallback_appwidget_id";
        public static final String LOCK_SCREEN_LOCK_AFTER_TIMEOUT = "lock_screen_lock_after_timeout";

        @Deprecated
        public static final String LOCK_SCREEN_OWNER_INFO = "lock_screen_owner_info";

        @Deprecated
        public static final String LOCK_SCREEN_OWNER_INFO_ENABLED = "lock_screen_owner_info_enabled";
        public static final String LOCK_SCREEN_SHOW_NOTIFICATIONS = "lock_screen_show_notifications";

        @Deprecated
        public static final String LOCK_SCREEN_STICKY_APPWIDGET = "lock_screen_sticky_appwidget";
        public static final String LOCK_TO_APP_EXIT_LOCKED = "lock_to_app_exit_locked";

        @Deprecated
        public static final String LOGGING_ID = "logging_id";
        public static final String LONG_PRESS_TIMEOUT = "long_press_timeout";
        public static final String MANAGED_PROFILE_CONTACT_REMOTE_SEARCH = "managed_profile_contact_remote_search";
        public static final String MOUNT_PLAY_NOTIFICATION_SND = "mount_play_not_snd";
        public static final String MOUNT_UMS_AUTOSTART = "mount_ums_autostart";
        public static final String MOUNT_UMS_NOTIFY_ENABLED = "mount_ums_notify_enabled";
        public static final String MOUNT_UMS_PROMPT = "mount_ums_prompt";
        private static final HashSet<String> MOVED_TO_GLOBAL;
        private static final HashSet<String> MOVED_TO_LOCK_SETTINGS;
        public static final String MULTI_PRESS_TIMEOUT = "multi_press_timeout";

        @Deprecated
        public static final String NETWORK_PREFERENCE = "network_preference";
        public static final String NFC_PAYMENT_DEFAULT_COMPONENT = "nfc_payment_default_component";
        public static final String NFC_PAYMENT_FOREGROUND = "nfc_payment_foreground";
        public static final String NIGHT_DISPLAY_ACTIVATED = "night_display_activated";
        public static final String NIGHT_DISPLAY_AUTO_MODE = "night_display_auto_mode";
        public static final String NIGHT_DISPLAY_COLOR_TEMPERATURE = "night_display_color_temperature";
        public static final String NIGHT_DISPLAY_CUSTOM_END_TIME = "night_display_custom_end_time";
        public static final String NIGHT_DISPLAY_CUSTOM_START_TIME = "night_display_custom_start_time";
        public static final String NIGHT_DISPLAY_LAST_ACTIVATED_TIME = "night_display_last_activated_time";
        public static final String NOTIFICATION_BADGING = "notification_badging";
        public static final String OVERVIEW_LAST_STACK_ACTIVE_TIME = "overview_last_stack_active_time";
        public static final String PACKAGE_VERIFIER_STATE = "package_verifier_state";
        public static final String PACKAGE_VERIFIER_USER_CONSENT = "package_verifier_user_consent";
        public static final String PARENTAL_CONTROL_ENABLED = "parental_control_enabled";
        public static final String PARENTAL_CONTROL_LAST_UPDATE = "parental_control_last_update";
        public static final String PARENTAL_CONTROL_REDIRECT_URL = "parental_control_redirect_url";
        public static final String PAYMENT_SERVICE_SEARCH_URI = "payment_service_search_uri";
        public static final String PREFERRED_TTY_MODE = "preferred_tty_mode";
        public static final String PRINT_SERVICE_SEARCH_URI = "print_service_search_uri";
        public static final String QS_AUTO_ADDED_TILES = "qs_auto_tiles";
        public static final String QS_TILES = "sysui_qs_tiles";
        public static final String SCREENSAVER_ACTIVATE_ON_DOCK = "screensaver_activate_on_dock";
        public static final String SCREENSAVER_ACTIVATE_ON_SLEEP = "screensaver_activate_on_sleep";
        public static final String SCREENSAVER_COMPONENTS = "screensaver_components";
        public static final String SCREENSAVER_DEFAULT_COMPONENT = "screensaver_default_component";
        public static final String SCREENSAVER_ENABLED = "screensaver_enabled";
        public static final String SEARCH_GLOBAL_SEARCH_ACTIVITY = "search_global_search_activity";
        public static final String SEARCH_MAX_RESULTS_PER_SOURCE = "search_max_results_per_source";
        public static final String SEARCH_MAX_RESULTS_TO_DISPLAY = "search_max_results_to_display";
        public static final String SEARCH_MAX_SHORTCUTS_RETURNED = "search_max_shortcuts_returned";
        public static final String SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS = "search_max_source_event_age_millis";
        public static final String SEARCH_MAX_STAT_AGE_MILLIS = "search_max_stat_age_millis";
        public static final String SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING = "search_min_clicks_for_source_ranking";
        public static final String SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING = "search_min_impressions_for_source_ranking";
        public static final String SEARCH_NUM_PROMOTED_SOURCES = "search_num_promoted_sources";
        public static final String SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT = "search_per_source_concurrent_query_limit";
        public static final String SEARCH_PREFILL_MILLIS = "search_prefill_millis";
        public static final String SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS = "search_promoted_source_deadline_millis";
        public static final String SEARCH_QUERY_THREAD_CORE_POOL_SIZE = "search_query_thread_core_pool_size";
        public static final String SEARCH_QUERY_THREAD_MAX_POOL_SIZE = "search_query_thread_max_pool_size";
        public static final String SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE = "search_shortcut_refresh_core_pool_size";
        public static final String SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE = "search_shortcut_refresh_max_pool_size";
        public static final String SEARCH_SOURCE_TIMEOUT_MILLIS = "search_source_timeout_millis";
        public static final String SEARCH_THREAD_KEEPALIVE_SECONDS = "search_thread_keepalive_seconds";
        public static final String SEARCH_WEB_RESULTS_OVERRIDE_LIMIT = "search_web_results_override_limit";
        public static final String SELECTED_INPUT_METHOD_SUBTYPE = "selected_input_method_subtype";
        public static final String SELECTED_SPELL_CHECKER = "selected_spell_checker";
        public static final String SELECTED_SPELL_CHECKER_SUBTYPE = "selected_spell_checker_subtype";
        public static final String SETTINGS_CLASSNAME = "settings_classname";
        public static final String[] SETTINGS_TO_BACKUP;
        public static final String SHOW_IME_WITH_HARD_KEYBOARD = "show_ime_with_hard_keyboard";
        public static final int SHOW_MODE_AUTO = 0;
        public static final int SHOW_MODE_HIDDEN = 1;
        public static final String SHOW_NOTE_ABOUT_NOTIFICATION_HIDING = "show_note_about_notification_hiding";
        public static final String SKIP_FIRST_USE_HINTS = "skip_first_use_hints";
        public static final String SLEEP_TIMEOUT = "sleep_timeout";
        public static final String SMS_DEFAULT_APPLICATION = "sms_default_application";
        public static final String SPELL_CHECKER_ENABLED = "spell_checker_enabled";
        public static final String SYNC_PARENT_SOUNDS = "sync_parent_sounds";
        public static final String SYSTEM_NAVIGATION_KEYS_ENABLED = "system_navigation_keys_enabled";
        public static final String TOUCH_EXPLORATION_ENABLED = "touch_exploration_enabled";
        public static final String TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES = "touch_exploration_granted_accessibility_services";
        public static final String TRUST_AGENTS_INITIALIZED = "trust_agents_initialized";

        @Deprecated
        public static final String TTS_DEFAULT_COUNTRY = "tts_default_country";

        @Deprecated
        public static final String TTS_DEFAULT_LANG = "tts_default_lang";
        public static final String TTS_DEFAULT_LOCALE = "tts_default_locale";
        public static final String TTS_DEFAULT_PITCH = "tts_default_pitch";
        public static final String TTS_DEFAULT_RATE = "tts_default_rate";
        public static final String TTS_DEFAULT_SYNTH = "tts_default_synth";

        @Deprecated
        public static final String TTS_DEFAULT_VARIANT = "tts_default_variant";
        public static final String TTS_ENABLED_PLUGINS = "tts_enabled_plugins";

        @Deprecated
        public static final String TTS_USE_DEFAULTS = "tts_use_defaults";
        public static final String TTY_MODE_ENABLED = "tty_mode_enabled";
        public static final String TV_INPUT_CUSTOM_LABELS = "tv_input_custom_labels";
        public static final String TV_INPUT_HIDDEN_INPUTS = "tv_input_hidden_inputs";
        public static final String TV_USER_SETUP_COMPLETE = "tv_user_setup_complete";
        public static final String UI_NIGHT_MODE = "ui_night_mode";
        public static final String UNKNOWN_SOURCES_DEFAULT_REVERSED = "unknown_sources_default_reversed";
        public static final String UNSAFE_VOLUME_MUSIC_ACTIVE_MS = "unsafe_volume_music_active_ms";
        public static final String USB_AUDIO_AUTOMATIC_ROUTING_DISABLED = "usb_audio_automatic_routing_disabled";

        @Deprecated
        public static final String USB_MASS_STORAGE_ENABLED = "usb_mass_storage_enabled";
        public static final String USER_SETUP_COMPLETE = "user_setup_complete";

        @Deprecated
        public static final String USE_GOOGLE_MAIL = "use_google_mail";
        public static final String VOICE_INTERACTION_SERVICE = "voice_interaction_service";
        public static final String VOICE_RECOGNITION_SERVICE = "voice_recognition_service";
        public static final String VR_DISPLAY_MODE = "vr_display_mode";
        public static final int VR_DISPLAY_MODE_LOW_PERSISTENCE = 0;
        public static final int VR_DISPLAY_MODE_OFF = 1;
        public static final String WAKE_GESTURE_ENABLED = "wake_gesture_enabled";

        @Deprecated
        public static final String WIFI_IDLE_MS = "wifi_idle_ms";

        @Deprecated
        public static final String WIFI_MAX_DHCP_RETRY_COUNT = "wifi_max_dhcp_retry_count";

        @Deprecated
        public static final String WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS = "wifi_mobile_data_transition_wakelock_timeout_ms";

        @Deprecated
        public static final String WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON = "wifi_networks_available_notification_on";

        @Deprecated
        public static final String WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY = "wifi_networks_available_repeat_delay";

        @Deprecated
        public static final String WIFI_NUM_OPEN_NETWORKS_KEPT = "wifi_num_open_networks_kept";

        @Deprecated
        public static final String WIFI_ON = "wifi_on";

        @Deprecated
        public static final String WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE = "wifi_watchdog_acceptable_packet_loss_percentage";

        @Deprecated
        public static final String WIFI_WATCHDOG_AP_COUNT = "wifi_watchdog_ap_count";

        @Deprecated
        public static final String WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS = "wifi_watchdog_background_check_delay_ms";

        @Deprecated
        public static final String WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED = "wifi_watchdog_background_check_enabled";

        @Deprecated
        public static final String WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS = "wifi_watchdog_background_check_timeout_ms";

        @Deprecated
        public static final String WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT = "wifi_watchdog_initial_ignored_ping_count";

        @Deprecated
        public static final String WIFI_WATCHDOG_MAX_AP_CHECKS = "wifi_watchdog_max_ap_checks";

        @Deprecated
        public static final String WIFI_WATCHDOG_ON = "wifi_watchdog_on";

        @Deprecated
        public static final String WIFI_WATCHDOG_PING_COUNT = "wifi_watchdog_ping_count";

        @Deprecated
        public static final String WIFI_WATCHDOG_PING_DELAY_MS = "wifi_watchdog_ping_delay_ms";

        @Deprecated
        public static final String WIFI_WATCHDOG_PING_TIMEOUT_MS = "wifi_watchdog_ping_timeout_ms";

        @Deprecated
        public static final String WIFI_WATCHDOG_WATCH_LIST = "wifi_watchdog_watch_list";
        private static boolean sIsSystemProcess;
        private static ILockSettings sLockSettings;
        private static final NameValueCache sNameValueCache;
        private static final ContentProviderHolder sProviderHolder;

        static {
            Uri uri = Uri.parse("content://settings/secure");
            CONTENT_URI = uri;
            ContentProviderHolder contentProviderHolder = new ContentProviderHolder(uri);
            sProviderHolder = contentProviderHolder;
            sNameValueCache = new NameValueCache(uri, Settings.CALL_METHOD_GET_SECURE, Settings.CALL_METHOD_PUT_SECURE, contentProviderHolder);
            sLockSettings = null;
            HashSet<String> hashSet = new HashSet<>(3);
            MOVED_TO_LOCK_SETTINGS = hashSet;
            hashSet.add("lock_pattern_autolock");
            hashSet.add("lock_pattern_visible_pattern");
            hashSet.add("lock_pattern_tactile_feedback_enabled");
            HashSet<String> hashSet2 = new HashSet<>();
            MOVED_TO_GLOBAL = hashSet2;
            m.y(hashSet2, "adb_enabled", Global.ASSISTED_GPS_ENABLED, "bluetooth_on", "bugreport_in_power_menu");
            m.y(hashSet2, Global.CDMA_CELL_BROADCAST_SMS, Global.CDMA_ROAMING_MODE, Global.CDMA_SUBSCRIPTION_MODE, Global.DATA_ACTIVITY_TIMEOUT_MOBILE);
            m.y(hashSet2, Global.DATA_ACTIVITY_TIMEOUT_WIFI, "data_roaming", "development_settings_enabled", "device_provisioned");
            m.y(hashSet2, Global.DISPLAY_SIZE_FORCED, Global.DOWNLOAD_MAX_BYTES_OVER_MOBILE, Global.DOWNLOAD_RECOMMENDED_MAX_BYTES_OVER_MOBILE, Global.MOBILE_DATA);
            m.y(hashSet2, Global.NETSTATS_DEV_BUCKET_DURATION, Global.NETSTATS_DEV_DELETE_AGE, Global.NETSTATS_DEV_PERSIST_BYTES, Global.NETSTATS_DEV_ROTATE_AGE);
            m.y(hashSet2, Global.NETSTATS_ENABLED, Global.NETSTATS_GLOBAL_ALERT_BYTES, Global.NETSTATS_POLL_INTERVAL, Global.NETSTATS_SAMPLE_ENABLED);
            m.y(hashSet2, Global.NETSTATS_TIME_CACHE_MAX_AGE, Global.NETSTATS_UID_BUCKET_DURATION, Global.NETSTATS_UID_DELETE_AGE, Global.NETSTATS_UID_PERSIST_BYTES);
            m.y(hashSet2, Global.NETSTATS_UID_ROTATE_AGE, Global.NETSTATS_UID_TAG_BUCKET_DURATION, Global.NETSTATS_UID_TAG_DELETE_AGE, Global.NETSTATS_UID_TAG_PERSIST_BYTES);
            m.y(hashSet2, Global.NETSTATS_UID_TAG_ROTATE_AGE, "network_preference", Global.NITZ_UPDATE_DIFF, Global.NITZ_UPDATE_SPACING);
            m.y(hashSet2, Global.NTP_SERVER, Global.NTP_TIMEOUT, Global.PDP_WATCHDOG_ERROR_POLL_COUNT, Global.PDP_WATCHDOG_LONG_POLL_INTERVAL_MS);
            m.y(hashSet2, Global.PDP_WATCHDOG_MAX_PDP_RESET_FAIL_COUNT, Global.PDP_WATCHDOG_POLL_INTERVAL_MS, Global.PDP_WATCHDOG_TRIGGER_PACKET_COUNT, Global.SAMPLING_PROFILER_MS);
            m.y(hashSet2, Global.SETUP_PREPAID_DATA_SERVICE_URL, Global.SETUP_PREPAID_DETECTION_REDIR_HOST, Global.SETUP_PREPAID_DETECTION_TARGET_URL, Global.TETHER_DUN_APN);
            m.y(hashSet2, Global.TETHER_DUN_REQUIRED, Global.TETHER_SUPPORTED, "usb_mass_storage_enabled", "use_google_mail");
            m.y(hashSet2, Global.WIFI_COUNTRY_CODE, Global.WIFI_FRAMEWORK_SCAN_INTERVAL_MS, Global.WIFI_FREQUENCY_BAND, "wifi_idle_ms");
            m.y(hashSet2, "wifi_max_dhcp_retry_count", "wifi_mobile_data_transition_wakelock_timeout_ms", "wifi_networks_available_notification_on", "wifi_networks_available_repeat_delay");
            m.y(hashSet2, "wifi_num_open_networks_kept", "wifi_on", Global.WIFI_P2P_DEVICE_NAME, Global.WIFI_SAVED_STATE);
            m.y(hashSet2, Global.WIFI_SUPPLICANT_SCAN_INTERVAL_MS, Global.WIFI_SUSPEND_OPTIMIZATIONS_ENABLED, Global.WIFI_VERBOSE_LOGGING_ENABLED, Global.WIFI_ENHANCED_AUTO_JOIN);
            m.y(hashSet2, Global.WIFI_NETWORK_SHOW_RSSI, "wifi_watchdog_on", Global.WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED, Global.WIMAX_NETWORKS_AVAILABLE_NOTIFICATION_ON);
            m.y(hashSet2, Global.PACKAGE_VERIFIER_ENABLE, Global.PACKAGE_VERIFIER_TIMEOUT, Global.PACKAGE_VERIFIER_DEFAULT_RESPONSE, Global.DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS);
            m.y(hashSet2, Global.DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS, Global.GPRS_REGISTER_CHECK_PERIOD_MS, Global.WTF_IS_FATAL, Global.BATTERY_DISCHARGE_DURATION_THRESHOLD);
            m.y(hashSet2, Global.BATTERY_DISCHARGE_THRESHOLD, Global.SEND_ACTION_APP_ERROR, Global.DROPBOX_AGE_SECONDS, Global.DROPBOX_MAX_FILES);
            m.y(hashSet2, Global.DROPBOX_QUOTA_KB, Global.DROPBOX_QUOTA_PERCENT, Global.DROPBOX_RESERVE_PERCENT, Global.DROPBOX_TAG_PREFIX);
            m.y(hashSet2, Global.ERROR_LOGCAT_PREFIX, Global.SYS_FREE_STORAGE_LOG_INTERVAL, Global.DISK_FREE_CHANGE_REPORTING_THRESHOLD, Global.SYS_STORAGE_THRESHOLD_PERCENTAGE);
            m.y(hashSet2, Global.SYS_STORAGE_THRESHOLD_MAX_BYTES, Global.SYS_STORAGE_FULL_THRESHOLD_BYTES, Global.SYNC_MAX_RETRY_DELAY_IN_SECONDS, Global.CONNECTIVITY_CHANGE_DELAY);
            m.y(hashSet2, Global.CAPTIVE_PORTAL_DETECTION_ENABLED, Global.CAPTIVE_PORTAL_SERVER, Global.NSD_ON, Global.SET_INSTALL_LOCATION);
            m.y(hashSet2, Global.DEFAULT_INSTALL_LOCATION, Global.INET_CONDITION_DEBOUNCE_UP_DELAY, Global.INET_CONDITION_DEBOUNCE_DOWN_DELAY, Global.READ_EXTERNAL_STORAGE_ENFORCED_DEFAULT);
            m.y(hashSet2, "http_proxy", Global.GLOBAL_HTTP_PROXY_HOST, Global.GLOBAL_HTTP_PROXY_PORT, Global.GLOBAL_HTTP_PROXY_EXCLUSION_LIST);
            m.y(hashSet2, Global.SET_GLOBAL_HTTP_PROXY, Global.DEFAULT_DNS_SERVER, Global.PREFERRED_NETWORK_MODE, Global.WEBVIEW_DATA_REDUCTION_PROXY_KEY);
            SETTINGS_TO_BACKUP = new String[]{"bugreport_in_power_menu", ALLOW_MOCK_LOCATION, "parental_control_enabled", "parental_control_redirect_url", "usb_mass_storage_enabled", ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, ACCESSIBILITY_DISPLAY_DALTONIZER, ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED, ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED, ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED, AUTOFILL_SERVICE, ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE, ENABLED_ACCESSIBILITY_SERVICES, ENABLED_VR_LISTENERS, ENABLED_INPUT_METHODS, TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES, TOUCH_EXPLORATION_ENABLED, ACCESSIBILITY_ENABLED, ACCESSIBILITY_SHORTCUT_TARGET_SERVICE, ACCESSIBILITY_BUTTON_TARGET_COMPONENT, ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN, ACCESSIBILITY_SHORTCUT_ENABLED, ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN, ACCESSIBILITY_SPEAK_PASSWORD, ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED, ACCESSIBILITY_CAPTIONING_PRESET, ACCESSIBILITY_CAPTIONING_ENABLED, ACCESSIBILITY_CAPTIONING_LOCALE, ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR, ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR, ACCESSIBILITY_CAPTIONING_EDGE_TYPE, ACCESSIBILITY_CAPTIONING_EDGE_COLOR, ACCESSIBILITY_CAPTIONING_TYPEFACE, ACCESSIBILITY_CAPTIONING_FONT_SCALE, ACCESSIBILITY_CAPTIONING_WINDOW_COLOR, TTS_USE_DEFAULTS, TTS_DEFAULT_RATE, TTS_DEFAULT_PITCH, TTS_DEFAULT_SYNTH, TTS_DEFAULT_LANG, TTS_DEFAULT_COUNTRY, TTS_ENABLED_PLUGINS, TTS_DEFAULT_LOCALE, SHOW_IME_WITH_HARD_KEYBOARD, "wifi_networks_available_notification_on", "wifi_networks_available_repeat_delay", "wifi_num_open_networks_kept", SELECTED_SPELL_CHECKER, SELECTED_SPELL_CHECKER_SUBTYPE, SPELL_CHECKER_ENABLED, MOUNT_PLAY_NOTIFICATION_SND, MOUNT_UMS_AUTOSTART, MOUNT_UMS_PROMPT, MOUNT_UMS_NOTIFY_ENABLED, SLEEP_TIMEOUT, DOUBLE_TAP_TO_WAKE, WAKE_GESTURE_ENABLED, LONG_PRESS_TIMEOUT, CAMERA_GESTURE_DISABLED, ACCESSIBILITY_AUTOCLICK_ENABLED, ACCESSIBILITY_AUTOCLICK_DELAY, ACCESSIBILITY_LARGE_POINTER_ICON, PREFERRED_TTY_MODE, ENHANCED_VOICE_PRIVACY_ENABLED, TTY_MODE_ENABLED, INCALL_POWER_BUTTON_BEHAVIOR, NIGHT_DISPLAY_CUSTOM_START_TIME, NIGHT_DISPLAY_CUSTOM_END_TIME, NIGHT_DISPLAY_COLOR_TEMPERATURE, NIGHT_DISPLAY_AUTO_MODE, SYNC_PARENT_SOUNDS, CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED, CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED, SYSTEM_NAVIGATION_KEYS_ENABLED, QS_TILES, DOZE_ENABLED, DOZE_PULSE_ON_PICK_UP, DOZE_PULSE_ON_DOUBLE_TAP, NFC_PAYMENT_DEFAULT_COMPONENT, AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN, ASSIST_GESTURE_ENABLED, ASSIST_GESTURE_SENSITIVITY, ASSIST_GESTURE_SETUP_COMPLETE, ASSIST_GESTURE_SILENCE_ALERTS_ENABLED, ASSIST_GESTURE_WAKE_ENABLED, VR_DISPLAY_MODE, NOTIFICATION_BADGING, QS_AUTO_ADDED_TILES, SCREENSAVER_ENABLED, SCREENSAVER_COMPONENTS, SCREENSAVER_ACTIVATE_ON_DOCK, SCREENSAVER_ACTIVATE_ON_SLEEP};
            LEGACY_RESTORE_SETTINGS = new String[]{ENABLED_NOTIFICATION_LISTENERS, ENABLED_NOTIFICATION_ASSISTANT, ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES};
            ArraySet arraySet = new ArraySet();
            CLONE_TO_MANAGED_PROFILE = arraySet;
            m.n(arraySet, ACCESSIBILITY_ENABLED, ALLOW_MOCK_LOCATION, ALLOWED_GEOLOCATION_ORIGINS, AUTOFILL_SERVICE);
            m.n(arraySet, DEFAULT_INPUT_METHOD, ENABLED_ACCESSIBILITY_SERVICES, ENABLED_INPUT_METHODS, LOCATION_MODE);
            m.n(arraySet, LOCATION_PREVIOUS_MODE, "location_providers_allowed", SELECTED_INPUT_METHOD_SUBTYPE, SELECTED_SPELL_CHECKER);
            arraySet.add(SELECTED_SPELL_CHECKER_SUBTYPE);
            ArraySet arraySet2 = new ArraySet();
            INSTANT_APP_SETTINGS = arraySet2;
            m.n(arraySet2, ENABLED_ACCESSIBILITY_SERVICES, ACCESSIBILITY_SPEAK_PASSWORD, ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, ACCESSIBILITY_CAPTIONING_ENABLED);
            m.n(arraySet2, ACCESSIBILITY_CAPTIONING_PRESET, ACCESSIBILITY_CAPTIONING_EDGE_TYPE, ACCESSIBILITY_CAPTIONING_EDGE_COLOR, ACCESSIBILITY_CAPTIONING_LOCALE);
            m.n(arraySet2, ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR, ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR, ACCESSIBILITY_CAPTIONING_TYPEFACE, ACCESSIBILITY_CAPTIONING_FONT_SCALE);
            m.n(arraySet2, ACCESSIBILITY_CAPTIONING_WINDOW_COLOR, ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED, ACCESSIBILITY_DISPLAY_DALTONIZER, ACCESSIBILITY_AUTOCLICK_DELAY);
            m.n(arraySet2, ACCESSIBILITY_AUTOCLICK_ENABLED, ACCESSIBILITY_LARGE_POINTER_ICON, DEFAULT_INPUT_METHOD, ENABLED_INPUT_METHODS);
            arraySet2.add("android_id");
            arraySet2.add(PACKAGE_VERIFIER_USER_CONSENT);
            arraySet2.add(ALLOW_MOCK_LOCATION);
        }

        public static void clearProviderForTest() {
            sProviderHolder.clearProviderForTest();
            sNameValueCache.clearGenerationTrackerForTest();
        }

        public static void getCloneToManagedProfileSettings(Set<String> set) {
            set.addAll(CLONE_TO_MANAGED_PROFILE);
        }

        public static float getFloat(ContentResolver contentResolver, String str, float f2) {
            return getFloatForUser(contentResolver, str, f2, UserHandle.myUserId());
        }

        public static float getFloatForUser(ContentResolver contentResolver, String str, float f2, int i2) {
            String stringForUser = getStringForUser(contentResolver, str, i2);
            if (stringForUser == null) {
                return f2;
            }
            try {
                return Float.parseFloat(stringForUser);
            } catch (NumberFormatException unused) {
                return f2;
            }
        }

        public static int getInt(ContentResolver contentResolver, String str, int i2) {
            return getIntForUser(contentResolver, str, i2, UserHandle.myUserId());
        }

        public static int getIntForUser(ContentResolver contentResolver, String str, int i2, int i3) {
            if (LOCATION_MODE.equals(str)) {
                return getLocationModeForUser(contentResolver, i3);
            }
            String stringForUser = getStringForUser(contentResolver, str, i3);
            if (stringForUser == null) {
                return i2;
            }
            try {
                return Integer.parseInt(stringForUser);
            } catch (NumberFormatException unused) {
                return i2;
            }
        }

        private static final int getLocationModeForUser(ContentResolver contentResolver, int i2) {
            synchronized (Settings.mLocationSettingsLock) {
                boolean zIsLocationProviderEnabledForUser = isLocationProviderEnabledForUser(contentResolver, "gps", i2);
                boolean zIsLocationProviderEnabledForUser2 = isLocationProviderEnabledForUser(contentResolver, LocationManager.NETWORK_PROVIDER, i2);
                if (zIsLocationProviderEnabledForUser && zIsLocationProviderEnabledForUser2) {
                    return 3;
                }
                if (zIsLocationProviderEnabledForUser) {
                    return 1;
                }
                return zIsLocationProviderEnabledForUser2 ? 2 : 0;
            }
        }

        public static long getLong(ContentResolver contentResolver, String str, long j2) {
            return getLongForUser(contentResolver, str, j2, UserHandle.myUserId());
        }

        public static long getLongForUser(ContentResolver contentResolver, String str, long j2, int i2) {
            String stringForUser = getStringForUser(contentResolver, str, i2);
            if (stringForUser == null) {
                return j2;
            }
            try {
                return Long.parseLong(stringForUser);
            } catch (NumberFormatException unused) {
                return j2;
            }
        }

        public static void getMovedToGlobalSettings(Set<String> set) {
            set.addAll(MOVED_TO_GLOBAL);
        }

        public static String getString(ContentResolver contentResolver, String str) {
            return getStringForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static String getStringForUser(ContentResolver contentResolver, String str, int i2) {
            if (MOVED_TO_GLOBAL.contains(str)) {
                m.s("Setting ", str, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global.", Settings.TAG);
                return Global.getStringForUser(contentResolver, str, i2);
            }
            if (MOVED_TO_LOCK_SETTINGS.contains(str)) {
                synchronized (Secure.class) {
                    if (sLockSettings == null) {
                        sLockSettings = ILockSettings.Stub.asInterface(ServiceManager.getService("lock_settings"));
                        sIsSystemProcess = Process.myUid() == 1000;
                    }
                }
                if (sLockSettings != null && !sIsSystemProcess) {
                    Application applicationCurrentApplication = ActivityThread.currentApplication();
                    if (!((applicationCurrentApplication == null || applicationCurrentApplication.getApplicationInfo() == null || applicationCurrentApplication.getApplicationInfo().targetSdkVersion > 22) ? false : true)) {
                        throw new SecurityException(android.accessibilityservice.c.k("Settings.Secure.", str, " is deprecated and no longer accessible. See API documentation for potential replacements."));
                    }
                    try {
                        return sLockSettings.getString(str, WifiEnterpriseConfig.ENGINE_DISABLE, i2);
                    } catch (RemoteException unused) {
                    }
                }
            }
            return sNameValueCache.getStringForUser(contentResolver, str, i2);
        }

        public static Uri getUriFor(String str) {
            if (!MOVED_TO_GLOBAL.contains(str)) {
                return NameValueTable.getUriFor(CONTENT_URI, str);
            }
            m.s("Setting ", str, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global, returning global URI.", Settings.TAG);
            return NameValueTable.getUriFor(Global.CONTENT_URI, str);
        }

        @Deprecated
        public static final boolean isLocationProviderEnabled(ContentResolver contentResolver, String str) {
            return isLocationProviderEnabledForUser(contentResolver, str, UserHandle.myUserId());
        }

        @Deprecated
        public static final boolean isLocationProviderEnabledForUser(ContentResolver contentResolver, String str, int i2) {
            return TextUtils.delimitedStringContains(getStringForUser(contentResolver, "location_providers_allowed", i2), ',', str);
        }

        public static boolean putFloat(ContentResolver contentResolver, String str, float f2) {
            return putFloatForUser(contentResolver, str, f2, UserHandle.myUserId());
        }

        public static boolean putFloatForUser(ContentResolver contentResolver, String str, float f2, int i2) {
            return putStringForUser(contentResolver, str, Float.toString(f2), i2);
        }

        public static boolean putInt(ContentResolver contentResolver, String str, int i2) {
            return putIntForUser(contentResolver, str, i2, UserHandle.myUserId());
        }

        public static boolean putIntForUser(ContentResolver contentResolver, String str, int i2, int i3) {
            return putStringForUser(contentResolver, str, Integer.toString(i2), i3);
        }

        public static boolean putLong(ContentResolver contentResolver, String str, long j2) {
            return putLongForUser(contentResolver, str, j2, UserHandle.myUserId());
        }

        public static boolean putLongForUser(ContentResolver contentResolver, String str, long j2, int i2) {
            return putStringForUser(contentResolver, str, Long.toString(j2), i2);
        }

        public static boolean putString(ContentResolver contentResolver, String str, String str2) {
            return putStringForUser(contentResolver, str, str2, UserHandle.myUserId());
        }

        public static boolean putStringForUser(ContentResolver contentResolver, String str, String str2, int i2) {
            return putStringForUser(contentResolver, str, str2, null, false, i2);
        }

        public static void resetToDefaults(ContentResolver contentResolver, String str) {
            resetToDefaultsAsUser(contentResolver, str, 1, UserHandle.myUserId());
        }

        public static void resetToDefaultsAsUser(ContentResolver contentResolver, String str, int i2, int i3) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt(Settings.CALL_METHOD_USER_KEY, i3);
                if (str != null) {
                    bundle.putString(Settings.CALL_METHOD_TAG_KEY, str);
                }
                bundle.putInt(Settings.CALL_METHOD_RESET_MODE_KEY, i2);
                sProviderHolder.getProvider(contentResolver).call(contentResolver.getPackageName(), Settings.CALL_METHOD_RESET_SECURE, null, bundle);
            } catch (RemoteException e2) {
                Log.w(Settings.TAG, "Can't reset do defaults for " + CONTENT_URI, e2);
            }
        }

        private static final boolean restoreLocationModeForUser(ContentResolver contentResolver, int i2) {
            int intForUser = getIntForUser(contentResolver, LOCATION_PREVIOUS_MODE, 3, i2);
            return setLocationModeForUser(contentResolver, intForUser != 0 ? intForUser : 3, i2);
        }

        private static final boolean saveLocationModeForUser(ContentResolver contentResolver, int i2) {
            return putIntForUser(contentResolver, LOCATION_PREVIOUS_MODE, getLocationModeForUser(contentResolver, i2), i2);
        }

        private static final boolean setLocationModeForUser(ContentResolver contentResolver, int i2, int i3) {
            boolean z2;
            boolean z3;
            synchronized (Settings.mLocationSettingsLock) {
                try {
                    if (i2 == -1) {
                        return restoreLocationModeForUser(contentResolver, i3);
                    }
                    boolean z4 = false;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            z2 = false;
                            z3 = true;
                        } else if (i2 == 2) {
                            z3 = false;
                            z2 = true;
                        } else {
                            if (i2 != 3) {
                                throw new IllegalArgumentException("Invalid location mode: " + i2);
                            }
                            z2 = true;
                        }
                        boolean locationProviderEnabledForUser = setLocationProviderEnabledForUser(contentResolver, LocationManager.NETWORK_PROVIDER, z2, i3);
                        if (setLocationProviderEnabledForUser(contentResolver, "gps", z3, i3) && locationProviderEnabledForUser) {
                            z4 = true;
                        }
                        return z4;
                    }
                    saveLocationModeForUser(contentResolver, i3);
                    z2 = false;
                    z3 = z2;
                    boolean locationProviderEnabledForUser2 = setLocationProviderEnabledForUser(contentResolver, LocationManager.NETWORK_PROVIDER, z2, i3);
                    if (setLocationProviderEnabledForUser(contentResolver, "gps", z3, i3)) {
                        z4 = true;
                    }
                    return z4;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Deprecated
        public static final void setLocationProviderEnabled(ContentResolver contentResolver, String str, boolean z2) {
            setLocationProviderEnabledForUser(contentResolver, str, z2, UserHandle.myUserId());
        }

        @Deprecated
        public static final boolean setLocationProviderEnabledForUser(ContentResolver contentResolver, String str, boolean z2, int i2) {
            String str2;
            boolean zPutStringForUser;
            synchronized (Settings.mLocationSettingsLock) {
                try {
                    if (z2) {
                        str2 = "+" + str;
                    } else {
                        str2 = NativeLibraryHelper.CLEAR_ABI_OVERRIDE + str;
                    }
                    zPutStringForUser = putStringForUser(contentResolver, "location_providers_allowed", str2, i2);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zPutStringForUser;
        }

        public static float getFloat(ContentResolver contentResolver, String str) {
            return getFloatForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static int getInt(ContentResolver contentResolver, String str) {
            return getIntForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static long getLong(ContentResolver contentResolver, String str) {
            return getLongForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static boolean putString(ContentResolver contentResolver, String str, String str2, String str3, boolean z2) {
            return putStringForUser(contentResolver, str, str2, str3, z2, UserHandle.myUserId());
        }

        public static boolean putStringForUser(ContentResolver contentResolver, String str, String str2, String str3, boolean z2, int i2) {
            if (LOCATION_MODE.equals(str)) {
                return setLocationModeForUser(contentResolver, Integer.parseInt(str2), i2);
            }
            if (!MOVED_TO_GLOBAL.contains(str)) {
                return sNameValueCache.putStringForUser(contentResolver, str, str2, str3, z2, i2);
            }
            m.s("Setting ", str, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global", Settings.TAG);
            return Global.putStringForUser(contentResolver, str, str2, str3, z2, i2);
        }

        public static float getFloatForUser(ContentResolver contentResolver, String str, int i2) throws SettingNotFoundException {
            String stringForUser = getStringForUser(contentResolver, str, i2);
            if (stringForUser != null) {
                try {
                    return Float.parseFloat(stringForUser);
                } catch (NumberFormatException unused) {
                    throw new SettingNotFoundException(str);
                }
            }
            throw new SettingNotFoundException(str);
        }

        public static long getLongForUser(ContentResolver contentResolver, String str, int i2) throws SettingNotFoundException {
            try {
                return Long.parseLong(getStringForUser(contentResolver, str, i2));
            } catch (NumberFormatException unused) {
                throw new SettingNotFoundException(str);
            }
        }

        public static int getIntForUser(ContentResolver contentResolver, String str, int i2) throws SettingNotFoundException {
            if (LOCATION_MODE.equals(str)) {
                return getLocationModeForUser(contentResolver, i2);
            }
            try {
                return Integer.parseInt(getStringForUser(contentResolver, str, i2));
            } catch (NumberFormatException unused) {
                throw new SettingNotFoundException(str);
            }
        }
    }

    public static class SettingNotFoundException extends AndroidException {
        public SettingNotFoundException(String str) {
            super(str);
        }
    }

    public static final class System extends NameValueTable {
        public static final String ACCELEROMETER_ROTATION = "accelerometer_rotation";
        public static final Validator ACCELEROMETER_ROTATION_VALIDATOR;

        @Deprecated
        public static final String ADB_ENABLED = "adb_enabled";
        public static final String ADVANCED_SETTINGS = "advanced_settings";
        public static final int ADVANCED_SETTINGS_DEFAULT = 0;
        private static final Validator ADVANCED_SETTINGS_VALIDATOR;

        @Deprecated
        public static final String AIRPLANE_MODE_ON = "airplane_mode_on";

        @Deprecated
        public static final String AIRPLANE_MODE_RADIOS = "airplane_mode_radios";

        @Deprecated
        public static final String AIRPLANE_MODE_TOGGLEABLE_RADIOS = "airplane_mode_toggleable_radios";
        public static final String ALARM_ALERT = "alarm_alert";
        public static final String ALARM_ALERT_CACHE = "alarm_alert_cache";
        public static final Uri ALARM_ALERT_CACHE_URI;
        private static final Validator ALARM_ALERT_VALIDATOR;

        @Deprecated
        public static final String ALWAYS_FINISH_ACTIVITIES = "always_finish_activities";

        @Deprecated
        public static final String ANDROID_ID = "android_id";

        @Deprecated
        public static final String ANIMATOR_DURATION_SCALE = "animator_duration_scale";
        public static final String APPEND_FOR_LAST_AUDIBLE = "_last_audible";

        @Deprecated
        public static final String AUTO_TIME = "auto_time";

        @Deprecated
        public static final String AUTO_TIME_ZONE = "auto_time_zone";
        public static final String BLUETOOTH_DISCOVERABILITY = "bluetooth_discoverability";
        public static final String BLUETOOTH_DISCOVERABILITY_TIMEOUT = "bluetooth_discoverability_timeout";
        private static final Validator BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR;
        private static final Validator BLUETOOTH_DISCOVERABILITY_VALIDATOR;

        @Deprecated
        public static final String BLUETOOTH_ON = "bluetooth_on";
        public static final String BUTTON_LIGHT_OFF_TIMEOUT = "button_light_off_timeout";

        @Deprecated
        public static final String CAR_DOCK_SOUND = "car_dock_sound";

        @Deprecated
        public static final String CAR_UNDOCK_SOUND = "car_undock_sound";
        public static final Map<String, String> CLONE_FROM_PARENT_ON_VALUE;
        private static final Set<String> CLONE_TO_MANAGED_PROFILE;
        public static final Uri CONTENT_URI;

        @Deprecated
        public static final String DATA_ROAMING = "data_roaming";
        public static final String DATE_FORMAT = "date_format";
        public static final Validator DATE_FORMAT_VALIDATOR;

        @Deprecated
        public static final String DEBUG_APP = "debug_app";
        public static final Uri DEFAULT_ALARM_ALERT_URI;
        private static final float DEFAULT_FONT_SCALE = 1.0f;
        public static final Uri DEFAULT_NOTIFICATION_URI;
        public static final Uri DEFAULT_RINGTONE_URI;

        @Deprecated
        public static final String DESK_DOCK_SOUND = "desk_dock_sound";

        @Deprecated
        public static final String DESK_UNDOCK_SOUND = "desk_undock_sound";

        @Deprecated
        public static final String DEVICE_PROVISIONED = "device_provisioned";

        @Deprecated
        public static final String DIM_SCREEN = "dim_screen";
        private static final Validator DIM_SCREEN_VALIDATOR;
        public static final String DISPLAY_COLOR_MODE = "display_color_mode";

        @Deprecated
        public static final String DOCK_SOUNDS_ENABLED = "dock_sounds_enabled";
        public static final String DTMF_TONE_TYPE_WHEN_DIALING = "dtmf_tone_type";
        public static final Validator DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR;
        public static final String DTMF_TONE_WHEN_DIALING = "dtmf_tone";
        public static final Validator DTMF_TONE_WHEN_DIALING_VALIDATOR;
        public static final String EGG_MODE = "egg_mode";
        public static final Validator EGG_MODE_VALIDATOR;
        public static final String END_BUTTON_BEHAVIOR = "end_button_behavior";
        public static final int END_BUTTON_BEHAVIOR_DEFAULT = 2;
        public static final int END_BUTTON_BEHAVIOR_HOME = 1;
        public static final int END_BUTTON_BEHAVIOR_SLEEP = 2;
        private static final Validator END_BUTTON_BEHAVIOR_VALIDATOR;
        public static final String FONT_SCALE = "font_scale";
        private static final Validator FONT_SCALE_VALIDATOR;
        public static final String HAPTIC_FEEDBACK_ENABLED = "haptic_feedback_enabled";
        public static final Validator HAPTIC_FEEDBACK_ENABLED_VALIDATOR;
        public static final String HEARING_AID = "hearing_aid";
        public static final Validator HEARING_AID_VALIDATOR;
        public static final String HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY = "hide_rotation_lock_toggle_for_accessibility";
        public static final Validator HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR;

        @Deprecated
        public static final String HTTP_PROXY = "http_proxy";

        @Deprecated
        public static final String INSTALL_NON_MARKET_APPS = "install_non_market_apps";
        public static final Set<String> INSTANT_APP_SETTINGS;
        public static final String[] LEGACY_RESTORE_SETTINGS;

        @Deprecated
        public static final String LOCATION_PROVIDERS_ALLOWED = "location_providers_allowed";
        public static final String LOCKSCREEN_DISABLED = "lockscreen.disabled";
        public static final Validator LOCKSCREEN_DISABLED_VALIDATOR;
        public static final String LOCKSCREEN_SOUNDS_ENABLED = "lockscreen_sounds_enabled";
        public static final Validator LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR;

        @Deprecated
        public static final String LOCK_PATTERN_ENABLED = "lock_pattern_autolock";

        @Deprecated
        public static final String LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED = "lock_pattern_tactile_feedback_enabled";

        @Deprecated
        public static final String LOCK_PATTERN_VISIBLE = "lock_pattern_visible_pattern";

        @Deprecated
        public static final String LOCK_SOUND = "lock_sound";
        public static final String LOCK_TO_APP_ENABLED = "lock_to_app_enabled";
        public static final Validator LOCK_TO_APP_ENABLED_VALIDATOR;

        @Deprecated
        public static final String LOGGING_ID = "logging_id";

        @Deprecated
        public static final String LOW_BATTERY_SOUND = "low_battery_sound";
        public static final String MASTER_MONO = "master_mono";
        private static final Validator MASTER_MONO_VALIDATOR;
        public static final String MEDIA_BUTTON_RECEIVER = "media_button_receiver";
        private static final Validator MEDIA_BUTTON_RECEIVER_VALIDATOR;

        @Deprecated
        public static final String MODE_RINGER = "mode_ringer";
        public static final String MODE_RINGER_STREAMS_AFFECTED = "mode_ringer_streams_affected";
        private static final Validator MODE_RINGER_STREAMS_AFFECTED_VALIDATOR;
        private static final HashSet<String> MOVED_TO_GLOBAL;
        private static final HashSet<String> MOVED_TO_SECURE;
        private static final HashSet<String> MOVED_TO_SECURE_THEN_GLOBAL;
        public static final String MUTE_STREAMS_AFFECTED = "mute_streams_affected";
        private static final Validator MUTE_STREAMS_AFFECTED_VALIDATOR;

        @Deprecated
        public static final String NETWORK_PREFERENCE = "network_preference";

        @Deprecated
        public static final String NEXT_ALARM_FORMATTED = "next_alarm_formatted";
        private static final Validator NEXT_ALARM_FORMATTED_VALIDATOR;

        @Deprecated
        public static final String NOTIFICATIONS_USE_RING_VOLUME = "notifications_use_ring_volume";
        private static final Validator NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR;
        public static final String NOTIFICATION_LIGHT_PULSE = "notification_light_pulse";
        public static final Validator NOTIFICATION_LIGHT_PULSE_VALIDATOR;
        public static final String NOTIFICATION_SOUND = "notification_sound";
        public static final String NOTIFICATION_SOUND_CACHE = "notification_sound_cache";
        public static final Uri NOTIFICATION_SOUND_CACHE_URI;
        private static final Validator NOTIFICATION_SOUND_VALIDATOR;

        @Deprecated
        public static final String PARENTAL_CONTROL_ENABLED = "parental_control_enabled";

        @Deprecated
        public static final String PARENTAL_CONTROL_LAST_UPDATE = "parental_control_last_update";

        @Deprecated
        public static final String PARENTAL_CONTROL_REDIRECT_URL = "parental_control_redirect_url";
        public static final String POINTER_LOCATION = "pointer_location";
        public static final Validator POINTER_LOCATION_VALIDATOR;
        public static final String POINTER_SPEED = "pointer_speed";
        public static final Validator POINTER_SPEED_VALIDATOR;

        @Deprecated
        public static final String POWER_SOUNDS_ENABLED = "power_sounds_enabled";
        public static final Set<String> PRIVATE_SETTINGS;
        public static final Set<String> PUBLIC_SETTINGS;

        @Deprecated
        public static final String RADIO_BLUETOOTH = "bluetooth";

        @Deprecated
        public static final String RADIO_CELL = "cell";

        @Deprecated
        public static final String RADIO_NFC = "nfc";

        @Deprecated
        public static final String RADIO_WIFI = "wifi";

        @Deprecated
        public static final String RADIO_WIMAX = "wimax";
        public static final String RINGTONE = "ringtone";
        public static final String RINGTONE_CACHE = "ringtone_cache";
        public static final Uri RINGTONE_CACHE_URI;
        private static final Validator RINGTONE_VALIDATOR;
        public static final String SCREEN_AUTO_BRIGHTNESS_ADJ = "screen_auto_brightness_adj";
        private static final Validator SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR;
        public static final String SCREEN_BRIGHTNESS = "screen_brightness";
        public static final String SCREEN_BRIGHTNESS_FOR_VR = "screen_brightness_for_vr";
        private static final Validator SCREEN_BRIGHTNESS_FOR_VR_VALIDATOR;
        public static final String SCREEN_BRIGHTNESS_MODE = "screen_brightness_mode";
        public static final int SCREEN_BRIGHTNESS_MODE_AUTOMATIC = 1;
        public static final int SCREEN_BRIGHTNESS_MODE_MANUAL = 0;
        private static final Validator SCREEN_BRIGHTNESS_MODE_VALIDATOR;
        private static final Validator SCREEN_BRIGHTNESS_VALIDATOR;
        public static final String SCREEN_OFF_TIMEOUT = "screen_off_timeout";
        private static final Validator SCREEN_OFF_TIMEOUT_VALIDATOR;

        @Deprecated
        public static final String SETTINGS_CLASSNAME = "settings_classname";
        public static final String[] SETTINGS_TO_BACKUP;
        public static final String SETUP_WIZARD_HAS_RUN = "setup_wizard_has_run";
        public static final Validator SETUP_WIZARD_HAS_RUN_VALIDATOR;
        public static final String SHOW_BATTERY_PERCENT = "status_bar_show_battery_percent";
        private static final Validator SHOW_BATTERY_PERCENT_VALIDATOR;
        public static final String SHOW_GTALK_SERVICE_STATUS = "SHOW_GTALK_SERVICE_STATUS";
        private static final Validator SHOW_GTALK_SERVICE_STATUS_VALIDATOR;

        @Deprecated
        public static final String SHOW_PROCESSES = "show_processes";
        public static final String SHOW_TOUCHES = "show_touches";
        public static final Validator SHOW_TOUCHES_VALIDATOR;

        @Deprecated
        public static final String SHOW_WEB_SUGGESTIONS = "show_web_suggestions";
        public static final Validator SHOW_WEB_SUGGESTIONS_VALIDATOR;
        public static final String SIP_ADDRESS_ONLY = "SIP_ADDRESS_ONLY";
        public static final Validator SIP_ADDRESS_ONLY_VALIDATOR;
        public static final String SIP_ALWAYS = "SIP_ALWAYS";
        public static final Validator SIP_ALWAYS_VALIDATOR;

        @Deprecated
        public static final String SIP_ASK_ME_EACH_TIME = "SIP_ASK_ME_EACH_TIME";
        public static final Validator SIP_ASK_ME_EACH_TIME_VALIDATOR;
        public static final String SIP_CALL_OPTIONS = "sip_call_options";
        public static final Validator SIP_CALL_OPTIONS_VALIDATOR;
        public static final String SIP_RECEIVE_CALLS = "sip_receive_calls";
        public static final Validator SIP_RECEIVE_CALLS_VALIDATOR;
        public static final String SOUND_EFFECTS_ENABLED = "sound_effects_enabled";
        public static final Validator SOUND_EFFECTS_ENABLED_VALIDATOR;

        @Deprecated
        public static final String STAY_ON_WHILE_PLUGGED_IN = "stay_on_while_plugged_in";
        public static final String SYSTEM_LOCALES = "system_locales";
        public static final String TEXT_AUTO_CAPS = "auto_caps";
        private static final Validator TEXT_AUTO_CAPS_VALIDATOR;
        public static final String TEXT_AUTO_PUNCTUATE = "auto_punctuate";
        private static final Validator TEXT_AUTO_PUNCTUATE_VALIDATOR;
        public static final String TEXT_AUTO_REPLACE = "auto_replace";
        private static final Validator TEXT_AUTO_REPLACE_VALIDATOR;
        public static final String TEXT_SHOW_PASSWORD = "show_password";
        private static final Validator TEXT_SHOW_PASSWORD_VALIDATOR;
        public static final String TIME_12_24 = "time_12_24";
        public static final Validator TIME_12_24_VALIDATOR;

        @Deprecated
        public static final String TRANSITION_ANIMATION_SCALE = "transition_animation_scale";
        public static final String TTY_MODE = "tty_mode";
        public static final Validator TTY_MODE_VALIDATOR;

        @Deprecated
        public static final String UNLOCK_SOUND = "unlock_sound";

        @Deprecated
        public static final String USB_MASS_STORAGE_ENABLED = "usb_mass_storage_enabled";
        public static final String USER_ROTATION = "user_rotation";
        public static final Validator USER_ROTATION_VALIDATOR;

        @Deprecated
        public static final String USE_GOOGLE_MAIL = "use_google_mail";
        public static final Map<String, Validator> VALIDATORS;
        public static final String VIBRATE_INPUT_DEVICES = "vibrate_input_devices";
        private static final Validator VIBRATE_INPUT_DEVICES_VALIDATOR;
        public static final String VIBRATE_IN_SILENT = "vibrate_in_silent";
        private static final Validator VIBRATE_IN_SILENT_VALIDATOR;
        public static final String VIBRATE_ON = "vibrate_on";
        private static final Validator VIBRATE_ON_VALIDATOR;
        public static final String VIBRATE_WHEN_RINGING = "vibrate_when_ringing";
        public static final Validator VIBRATE_WHEN_RINGING_VALIDATOR;
        public static final String VOLUME_ACCESSIBILITY = "volume_a11y";
        public static final String VOLUME_ALARM = "volume_alarm";
        public static final String VOLUME_BLUETOOTH_SCO = "volume_bluetooth_sco";
        public static final String VOLUME_MASTER = "volume_master";
        public static final String VOLUME_MUSIC = "volume_music";
        public static final String VOLUME_NOTIFICATION = "volume_notification";
        public static final String VOLUME_RING = "volume_ring";
        public static final String[] VOLUME_SETTINGS;
        public static final String[] VOLUME_SETTINGS_INT;
        public static final String VOLUME_SYSTEM = "volume_system";
        public static final String VOLUME_VOICE = "volume_voice";

        @Deprecated
        public static final String WAIT_FOR_DEBUGGER = "wait_for_debugger";

        @Deprecated
        public static final String WALLPAPER_ACTIVITY = "wallpaper_activity";
        private static final Validator WALLPAPER_ACTIVITY_VALIDATOR;
        public static final String WHEN_TO_MAKE_WIFI_CALLS = "when_to_make_wifi_calls";

        @Deprecated
        public static final String WIFI_MAX_DHCP_RETRY_COUNT = "wifi_max_dhcp_retry_count";

        @Deprecated
        public static final String WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS = "wifi_mobile_data_transition_wakelock_timeout_ms";

        @Deprecated
        public static final String WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON = "wifi_networks_available_notification_on";

        @Deprecated
        public static final String WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY = "wifi_networks_available_repeat_delay";

        @Deprecated
        public static final String WIFI_NUM_OPEN_NETWORKS_KEPT = "wifi_num_open_networks_kept";

        @Deprecated
        public static final String WIFI_ON = "wifi_on";

        @Deprecated
        public static final String WIFI_SLEEP_POLICY = "wifi_sleep_policy";

        @Deprecated
        public static final int WIFI_SLEEP_POLICY_DEFAULT = 0;

        @Deprecated
        public static final int WIFI_SLEEP_POLICY_NEVER = 2;

        @Deprecated
        public static final int WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED = 1;

        @Deprecated
        public static final String WIFI_STATIC_DNS1 = "wifi_static_dns1";
        private static final Validator WIFI_STATIC_DNS1_VALIDATOR;

        @Deprecated
        public static final String WIFI_STATIC_DNS2 = "wifi_static_dns2";
        private static final Validator WIFI_STATIC_DNS2_VALIDATOR;

        @Deprecated
        public static final String WIFI_STATIC_GATEWAY = "wifi_static_gateway";
        private static final Validator WIFI_STATIC_GATEWAY_VALIDATOR;

        @Deprecated
        public static final String WIFI_STATIC_IP = "wifi_static_ip";
        private static final Validator WIFI_STATIC_IP_VALIDATOR;

        @Deprecated
        public static final String WIFI_STATIC_NETMASK = "wifi_static_netmask";
        private static final Validator WIFI_STATIC_NETMASK_VALIDATOR;

        @Deprecated
        public static final String WIFI_USE_STATIC_IP = "wifi_use_static_ip";
        private static final Validator WIFI_USE_STATIC_IP_VALIDATOR;

        @Deprecated
        public static final String WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE = "wifi_watchdog_acceptable_packet_loss_percentage";

        @Deprecated
        public static final String WIFI_WATCHDOG_AP_COUNT = "wifi_watchdog_ap_count";

        @Deprecated
        public static final String WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS = "wifi_watchdog_background_check_delay_ms";

        @Deprecated
        public static final String WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED = "wifi_watchdog_background_check_enabled";

        @Deprecated
        public static final String WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS = "wifi_watchdog_background_check_timeout_ms";

        @Deprecated
        public static final String WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT = "wifi_watchdog_initial_ignored_ping_count";

        @Deprecated
        public static final String WIFI_WATCHDOG_MAX_AP_CHECKS = "wifi_watchdog_max_ap_checks";

        @Deprecated
        public static final String WIFI_WATCHDOG_ON = "wifi_watchdog_on";

        @Deprecated
        public static final String WIFI_WATCHDOG_PING_COUNT = "wifi_watchdog_ping_count";

        @Deprecated
        public static final String WIFI_WATCHDOG_PING_DELAY_MS = "wifi_watchdog_ping_delay_ms";

        @Deprecated
        public static final String WIFI_WATCHDOG_PING_TIMEOUT_MS = "wifi_watchdog_ping_timeout_ms";

        @Deprecated
        public static final String WINDOW_ANIMATION_SCALE = "window_animation_scale";
        public static final String WINDOW_ORIENTATION_LISTENER_LOG = "window_orientation_listener_log";
        public static final Validator WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR;
        private static final Validator sBooleanValidator;
        private static final Validator sLenientIpAddressValidator;
        private static final NameValueCache sNameValueCache;
        private static final Validator sNonNegativeIntegerValidator;
        private static final ContentProviderHolder sProviderHolder;
        private static final Validator sUriValidator;

        public static final class DiscreteValueValidator implements Validator {
            private final String[] mValues;

            public DiscreteValueValidator(String[] strArr) {
                this.mValues = strArr;
            }

            @Override // android.provider.Settings.System.Validator
            public boolean validate(String str) {
                return ArrayUtils.contains(this.mValues, str);
            }
        }

        public static final class InclusiveFloatRangeValidator implements Validator {
            private final float mMax;
            private final float mMin;

            public InclusiveFloatRangeValidator(float f2, float f3) {
                this.mMin = f2;
                this.mMax = f3;
            }

            @Override // android.provider.Settings.System.Validator
            public boolean validate(String str) {
                try {
                    float f2 = Float.parseFloat(str);
                    return f2 >= this.mMin && f2 <= this.mMax;
                } catch (NumberFormatException unused) {
                    return false;
                }
            }
        }

        public static final class InclusiveIntegerRangeValidator implements Validator {
            private final int mMax;
            private final int mMin;

            public InclusiveIntegerRangeValidator(int i2, int i3) {
                this.mMin = i2;
                this.mMax = i3;
            }

            @Override // android.provider.Settings.System.Validator
            public boolean validate(String str) {
                try {
                    int i2 = Integer.parseInt(str);
                    return i2 >= this.mMin && i2 <= this.mMax;
                } catch (NumberFormatException unused) {
                    return false;
                }
            }
        }

        public interface Validator {
            boolean validate(String str);
        }

        static {
            Uri uri = Uri.parse("content://settings/system");
            CONTENT_URI = uri;
            ContentProviderHolder contentProviderHolder = new ContentProviderHolder(uri);
            sProviderHolder = contentProviderHolder;
            sNameValueCache = new NameValueCache(uri, Settings.CALL_METHOD_GET_SYSTEM, Settings.CALL_METHOD_PUT_SYSTEM, contentProviderHolder);
            HashSet<String> hashSet = new HashSet<>(30);
            MOVED_TO_SECURE = hashSet;
            m.y(hashSet, "android_id", "http_proxy", "location_providers_allowed", Secure.LOCK_BIOMETRIC_WEAK_FLAGS);
            m.y(hashSet, "lock_pattern_autolock", "lock_pattern_visible_pattern", "lock_pattern_tactile_feedback_enabled", "logging_id");
            m.y(hashSet, "parental_control_enabled", "parental_control_last_update", "parental_control_redirect_url", "settings_classname");
            m.y(hashSet, "use_google_mail", "wifi_networks_available_notification_on", "wifi_networks_available_repeat_delay", "wifi_num_open_networks_kept");
            m.y(hashSet, "wifi_on", "wifi_watchdog_acceptable_packet_loss_percentage", "wifi_watchdog_ap_count", "wifi_watchdog_background_check_delay_ms");
            m.y(hashSet, "wifi_watchdog_background_check_enabled", "wifi_watchdog_background_check_timeout_ms", "wifi_watchdog_initial_ignored_ping_count", "wifi_watchdog_max_ap_checks");
            m.y(hashSet, "wifi_watchdog_on", "wifi_watchdog_ping_count", "wifi_watchdog_ping_delay_ms", "wifi_watchdog_ping_timeout_ms");
            hashSet.add("install_non_market_apps");
            HashSet<String> hashSet2 = new HashSet<>();
            MOVED_TO_GLOBAL = hashSet2;
            HashSet<String> hashSet3 = new HashSet<>();
            MOVED_TO_SECURE_THEN_GLOBAL = hashSet3;
            m.y(hashSet3, "adb_enabled", "bluetooth_on", "data_roaming", "device_provisioned");
            hashSet3.add("usb_mass_storage_enabled");
            hashSet3.add("http_proxy");
            hashSet2.add("airplane_mode_on");
            m.y(hashSet2, "airplane_mode_radios", "airplane_mode_toggleable_radios", "auto_time", "auto_time_zone");
            m.y(hashSet2, "car_dock_sound", "car_undock_sound", "desk_dock_sound", "desk_undock_sound");
            m.y(hashSet2, "dock_sounds_enabled", "lock_sound", "unlock_sound", "low_battery_sound");
            m.y(hashSet2, "power_sounds_enabled", "stay_on_while_plugged_in", "wifi_sleep_policy", "mode_ringer");
            m.y(hashSet2, "window_animation_scale", "transition_animation_scale", "animator_duration_scale", Global.FANCY_IME_ANIMATIONS);
            m.y(hashSet2, Global.COMPATIBILITY_MODE, Global.EMERGENCY_TONE, Global.CALL_AUTO_RETRY, "debug_app");
            m.y(hashSet2, "wait_for_debugger", "always_finish_activities", Global.TZINFO_UPDATE_CONTENT_URL, Global.TZINFO_UPDATE_METADATA_URL);
            m.y(hashSet2, Global.SELINUX_UPDATE_CONTENT_URL, Global.SELINUX_UPDATE_METADATA_URL, Global.SMS_SHORT_CODES_UPDATE_CONTENT_URL, Global.SMS_SHORT_CODES_UPDATE_METADATA_URL);
            hashSet2.add(Global.CERT_PIN_UPDATE_CONTENT_URL);
            hashSet2.add(Global.CERT_PIN_UPDATE_METADATA_URL);
            hashSet2.add(Global.SOFTAP_SUPPORT_CHANNELS);
            hashSet2.add(Global.SOFTAP_5G_CHANNEL_SWITCH);
            DiscreteValueValidator discreteValueValidator = new DiscreteValueValidator(new String[]{WifiEnterpriseConfig.ENGINE_DISABLE, WifiEnterpriseConfig.ENGINE_ENABLE});
            sBooleanValidator = discreteValueValidator;
            Validator validator = new Validator() { // from class: android.provider.Settings.System.1
                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    try {
                        return Integer.parseInt(str) >= 0;
                    } catch (NumberFormatException unused) {
                        return false;
                    }
                }
            };
            sNonNegativeIntegerValidator = validator;
            Validator validator2 = new Validator() { // from class: android.provider.Settings.System.2
                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    try {
                        Uri.decode(str);
                        return true;
                    } catch (IllegalArgumentException unused) {
                        return false;
                    }
                }
            };
            sUriValidator = validator2;
            Validator validator3 = new Validator() { // from class: android.provider.Settings.System.3
                private static final int MAX_IPV6_LENGTH = 45;

                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    return str.length() <= 45;
                }
            };
            sLenientIpAddressValidator = validator3;
            InclusiveIntegerRangeValidator inclusiveIntegerRangeValidator = new InclusiveIntegerRangeValidator(0, 3);
            END_BUTTON_BEHAVIOR_VALIDATOR = inclusiveIntegerRangeValidator;
            ADVANCED_SETTINGS_VALIDATOR = discreteValueValidator;
            WIFI_USE_STATIC_IP_VALIDATOR = discreteValueValidator;
            WIFI_STATIC_IP_VALIDATOR = validator3;
            WIFI_STATIC_GATEWAY_VALIDATOR = validator3;
            WIFI_STATIC_NETMASK_VALIDATOR = validator3;
            WIFI_STATIC_DNS1_VALIDATOR = validator3;
            WIFI_STATIC_DNS2_VALIDATOR = validator3;
            InclusiveIntegerRangeValidator inclusiveIntegerRangeValidator2 = new InclusiveIntegerRangeValidator(0, 2);
            BLUETOOTH_DISCOVERABILITY_VALIDATOR = inclusiveIntegerRangeValidator2;
            BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR = validator;
            Validator validator4 = new Validator() { // from class: android.provider.Settings.System.4
                private static final int MAX_LENGTH = 1000;

                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    return str == null || str.length() < 1000;
                }
            };
            NEXT_ALARM_FORMATTED_VALIDATOR = validator4;
            Validator validator5 = new Validator() { // from class: android.provider.Settings.System.5
                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    try {
                        return Float.parseFloat(str) >= 0.0f;
                    } catch (NumberFormatException unused) {
                        return false;
                    }
                }
            };
            FONT_SCALE_VALIDATOR = validator5;
            DIM_SCREEN_VALIDATOR = discreteValueValidator;
            SCREEN_OFF_TIMEOUT_VALIDATOR = validator;
            InclusiveIntegerRangeValidator inclusiveIntegerRangeValidator3 = new InclusiveIntegerRangeValidator(0, 255);
            SCREEN_BRIGHTNESS_VALIDATOR = inclusiveIntegerRangeValidator3;
            InclusiveIntegerRangeValidator inclusiveIntegerRangeValidator4 = new InclusiveIntegerRangeValidator(0, 255);
            SCREEN_BRIGHTNESS_FOR_VR_VALIDATOR = inclusiveIntegerRangeValidator4;
            SCREEN_BRIGHTNESS_MODE_VALIDATOR = discreteValueValidator;
            InclusiveFloatRangeValidator inclusiveFloatRangeValidator = new InclusiveFloatRangeValidator(-1.0f, 1.0f);
            SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR = inclusiveFloatRangeValidator;
            MODE_RINGER_STREAMS_AFFECTED_VALIDATOR = validator;
            MUTE_STREAMS_AFFECTED_VALIDATOR = validator;
            VIBRATE_ON_VALIDATOR = discreteValueValidator;
            VIBRATE_INPUT_DEVICES_VALIDATOR = discreteValueValidator;
            MASTER_MONO_VALIDATOR = discreteValueValidator;
            NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR = discreteValueValidator;
            VIBRATE_IN_SILENT_VALIDATOR = discreteValueValidator;
            VOLUME_SETTINGS = new String[]{VOLUME_VOICE, VOLUME_SYSTEM, VOLUME_RING, VOLUME_MUSIC, VOLUME_ALARM, VOLUME_NOTIFICATION, VOLUME_BLUETOOTH_SCO};
            VOLUME_SETTINGS_INT = new String[]{VOLUME_VOICE, VOLUME_SYSTEM, VOLUME_RING, VOLUME_MUSIC, VOLUME_ALARM, VOLUME_NOTIFICATION, VOLUME_BLUETOOTH_SCO, "", "", "", VOLUME_ACCESSIBILITY};
            RINGTONE_VALIDATOR = validator2;
            DEFAULT_RINGTONE_URI = getUriFor(RINGTONE);
            RINGTONE_CACHE_URI = getUriFor(RINGTONE_CACHE);
            NOTIFICATION_SOUND_VALIDATOR = validator2;
            DEFAULT_NOTIFICATION_URI = getUriFor(NOTIFICATION_SOUND);
            NOTIFICATION_SOUND_CACHE_URI = getUriFor(NOTIFICATION_SOUND_CACHE);
            ALARM_ALERT_VALIDATOR = validator2;
            DEFAULT_ALARM_ALERT_URI = getUriFor(ALARM_ALERT);
            ALARM_ALERT_CACHE_URI = getUriFor(ALARM_ALERT_CACHE);
            Validator validator6 = new Validator() { // from class: android.provider.Settings.System.6
                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    try {
                        ComponentName.unflattenFromString(str);
                        return true;
                    } catch (NullPointerException unused) {
                        return false;
                    }
                }
            };
            MEDIA_BUTTON_RECEIVER_VALIDATOR = validator6;
            TEXT_AUTO_REPLACE_VALIDATOR = discreteValueValidator;
            TEXT_AUTO_CAPS_VALIDATOR = discreteValueValidator;
            TEXT_AUTO_PUNCTUATE_VALIDATOR = discreteValueValidator;
            TEXT_SHOW_PASSWORD_VALIDATOR = discreteValueValidator;
            SHOW_GTALK_SERVICE_STATUS_VALIDATOR = discreteValueValidator;
            Validator validator7 = new Validator() { // from class: android.provider.Settings.System.7
                private static final int MAX_LENGTH = 1000;

                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    return (str == null || str.length() <= 1000) && ComponentName.unflattenFromString(str) != null;
                }
            };
            WALLPAPER_ACTIVITY_VALIDATOR = validator7;
            DiscreteValueValidator discreteValueValidator2 = new DiscreteValueValidator(new String[]{"12", "24"});
            TIME_12_24_VALIDATOR = discreteValueValidator2;
            Validator validator8 = new Validator() { // from class: android.provider.Settings.System.8
                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    try {
                        new SimpleDateFormat(str);
                        return true;
                    } catch (IllegalArgumentException unused) {
                        return false;
                    }
                }
            };
            DATE_FORMAT_VALIDATOR = validator8;
            SETUP_WIZARD_HAS_RUN_VALIDATOR = discreteValueValidator;
            ACCELEROMETER_ROTATION_VALIDATOR = discreteValueValidator;
            InclusiveIntegerRangeValidator inclusiveIntegerRangeValidator5 = new InclusiveIntegerRangeValidator(0, 3);
            USER_ROTATION_VALIDATOR = inclusiveIntegerRangeValidator5;
            HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR = discreteValueValidator;
            VIBRATE_WHEN_RINGING_VALIDATOR = discreteValueValidator;
            DTMF_TONE_WHEN_DIALING_VALIDATOR = discreteValueValidator;
            DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR = discreteValueValidator;
            HEARING_AID_VALIDATOR = discreteValueValidator;
            InclusiveIntegerRangeValidator inclusiveIntegerRangeValidator6 = new InclusiveIntegerRangeValidator(0, 3);
            TTY_MODE_VALIDATOR = inclusiveIntegerRangeValidator6;
            SOUND_EFFECTS_ENABLED_VALIDATOR = discreteValueValidator;
            HAPTIC_FEEDBACK_ENABLED_VALIDATOR = discreteValueValidator;
            SHOW_WEB_SUGGESTIONS_VALIDATOR = discreteValueValidator;
            NOTIFICATION_LIGHT_PULSE_VALIDATOR = discreteValueValidator;
            POINTER_LOCATION_VALIDATOR = discreteValueValidator;
            SHOW_TOUCHES_VALIDATOR = discreteValueValidator;
            WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR = discreteValueValidator;
            LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR = discreteValueValidator;
            LOCKSCREEN_DISABLED_VALIDATOR = discreteValueValidator;
            SIP_RECEIVE_CALLS_VALIDATOR = discreteValueValidator;
            DiscreteValueValidator discreteValueValidator3 = new DiscreteValueValidator(new String[]{SIP_ALWAYS, SIP_ADDRESS_ONLY});
            SIP_CALL_OPTIONS_VALIDATOR = discreteValueValidator3;
            SIP_ALWAYS_VALIDATOR = discreteValueValidator;
            SIP_ADDRESS_ONLY_VALIDATOR = discreteValueValidator;
            SIP_ASK_ME_EACH_TIME_VALIDATOR = discreteValueValidator;
            InclusiveFloatRangeValidator inclusiveFloatRangeValidator2 = new InclusiveFloatRangeValidator(-7.0f, 7.0f);
            POINTER_SPEED_VALIDATOR = inclusiveFloatRangeValidator2;
            LOCK_TO_APP_ENABLED_VALIDATOR = discreteValueValidator;
            Validator validator9 = new Validator() { // from class: android.provider.Settings.System.9
                @Override // android.provider.Settings.System.Validator
                public boolean validate(String str) {
                    try {
                        return Long.parseLong(str) >= 0;
                    } catch (NumberFormatException unused) {
                        return false;
                    }
                }
            };
            EGG_MODE_VALIDATOR = validator9;
            SHOW_BATTERY_PERCENT_VALIDATOR = discreteValueValidator;
            SETTINGS_TO_BACKUP = new String[]{"stay_on_while_plugged_in", WIFI_USE_STATIC_IP, WIFI_STATIC_IP, WIFI_STATIC_GATEWAY, WIFI_STATIC_NETMASK, WIFI_STATIC_DNS1, WIFI_STATIC_DNS2, BLUETOOTH_DISCOVERABILITY, BLUETOOTH_DISCOVERABILITY_TIMEOUT, FONT_SCALE, DIM_SCREEN, SCREEN_OFF_TIMEOUT, SCREEN_BRIGHTNESS, SCREEN_BRIGHTNESS_MODE, SCREEN_AUTO_BRIGHTNESS_ADJ, SCREEN_BRIGHTNESS_FOR_VR, VIBRATE_INPUT_DEVICES, MODE_RINGER_STREAMS_AFFECTED, TEXT_AUTO_REPLACE, TEXT_AUTO_CAPS, TEXT_AUTO_PUNCTUATE, TEXT_SHOW_PASSWORD, "auto_time", "auto_time_zone", TIME_12_24, DATE_FORMAT, DTMF_TONE_WHEN_DIALING, DTMF_TONE_TYPE_WHEN_DIALING, HEARING_AID, TTY_MODE, MASTER_MONO, SOUND_EFFECTS_ENABLED, HAPTIC_FEEDBACK_ENABLED, "power_sounds_enabled", "dock_sounds_enabled", LOCKSCREEN_SOUNDS_ENABLED, SHOW_WEB_SUGGESTIONS, SIP_CALL_OPTIONS, SIP_RECEIVE_CALLS, POINTER_SPEED, VIBRATE_WHEN_RINGING, RINGTONE, LOCK_TO_APP_ENABLED, NOTIFICATION_SOUND, ACCELEROMETER_ROTATION, SHOW_BATTERY_PERCENT};
            LEGACY_RESTORE_SETTINGS = new String[0];
            ArraySet arraySet = new ArraySet();
            PUBLIC_SETTINGS = arraySet;
            m.n(arraySet, END_BUTTON_BEHAVIOR, WIFI_USE_STATIC_IP, WIFI_STATIC_IP, WIFI_STATIC_GATEWAY);
            m.n(arraySet, WIFI_STATIC_NETMASK, WIFI_STATIC_DNS1, WIFI_STATIC_DNS2, BLUETOOTH_DISCOVERABILITY);
            m.n(arraySet, BLUETOOTH_DISCOVERABILITY_TIMEOUT, NEXT_ALARM_FORMATTED, FONT_SCALE, DIM_SCREEN);
            m.n(arraySet, SCREEN_OFF_TIMEOUT, SCREEN_BRIGHTNESS, SCREEN_BRIGHTNESS_MODE, MODE_RINGER_STREAMS_AFFECTED);
            m.n(arraySet, MUTE_STREAMS_AFFECTED, VIBRATE_ON, VOLUME_RING, VOLUME_SYSTEM);
            m.n(arraySet, VOLUME_VOICE, VOLUME_MUSIC, VOLUME_ALARM, VOLUME_NOTIFICATION);
            m.n(arraySet, VOLUME_BLUETOOTH_SCO, RINGTONE, "ringtone0", "ringtone1");
            m.n(arraySet, NOTIFICATION_SOUND, ALARM_ALERT, TEXT_AUTO_REPLACE, TEXT_AUTO_CAPS);
            m.n(arraySet, TEXT_AUTO_PUNCTUATE, TEXT_SHOW_PASSWORD, SHOW_GTALK_SERVICE_STATUS, WALLPAPER_ACTIVITY);
            m.n(arraySet, TIME_12_24, DATE_FORMAT, SETUP_WIZARD_HAS_RUN, ACCELEROMETER_ROTATION);
            m.n(arraySet, USER_ROTATION, DTMF_TONE_WHEN_DIALING, SOUND_EFFECTS_ENABLED, HAPTIC_FEEDBACK_ENABLED);
            arraySet.add(SHOW_WEB_SUGGESTIONS);
            arraySet.add(VIBRATE_WHEN_RINGING);
            ArraySet arraySet2 = new ArraySet();
            PRIVATE_SETTINGS = arraySet2;
            m.n(arraySet2, WIFI_USE_STATIC_IP, END_BUTTON_BEHAVIOR, ADVANCED_SETTINGS, SCREEN_AUTO_BRIGHTNESS_ADJ);
            m.n(arraySet2, VIBRATE_INPUT_DEVICES, VOLUME_MASTER, MASTER_MONO, NOTIFICATIONS_USE_RING_VOLUME);
            m.n(arraySet2, VIBRATE_IN_SILENT, MEDIA_BUTTON_RECEIVER, HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY, DTMF_TONE_TYPE_WHEN_DIALING);
            m.n(arraySet2, HEARING_AID, TTY_MODE, NOTIFICATION_LIGHT_PULSE, POINTER_LOCATION);
            m.n(arraySet2, SHOW_TOUCHES, WINDOW_ORIENTATION_LISTENER_LOG, "power_sounds_enabled", "dock_sounds_enabled");
            m.n(arraySet2, LOCKSCREEN_SOUNDS_ENABLED, "lockscreen.disabled", "low_battery_sound", "desk_dock_sound");
            m.n(arraySet2, "desk_undock_sound", "car_dock_sound", "car_undock_sound", "lock_sound");
            m.n(arraySet2, "unlock_sound", SIP_RECEIVE_CALLS, SIP_CALL_OPTIONS, SIP_ALWAYS);
            m.n(arraySet2, SIP_ADDRESS_ONLY, SIP_ASK_ME_EACH_TIME, POINTER_SPEED, LOCK_TO_APP_ENABLED);
            arraySet2.add(EGG_MODE);
            arraySet2.add(SHOW_BATTERY_PERCENT);
            ArrayMap arrayMap = new ArrayMap();
            VALIDATORS = arrayMap;
            arrayMap.put(END_BUTTON_BEHAVIOR, inclusiveIntegerRangeValidator);
            arrayMap.put(WIFI_USE_STATIC_IP, discreteValueValidator);
            arrayMap.put(BLUETOOTH_DISCOVERABILITY, inclusiveIntegerRangeValidator2);
            arrayMap.put(BLUETOOTH_DISCOVERABILITY_TIMEOUT, validator);
            arrayMap.put(NEXT_ALARM_FORMATTED, validator4);
            arrayMap.put(FONT_SCALE, validator5);
            arrayMap.put(DIM_SCREEN, discreteValueValidator);
            arrayMap.put(SCREEN_OFF_TIMEOUT, validator);
            arrayMap.put(SCREEN_BRIGHTNESS, inclusiveIntegerRangeValidator3);
            arrayMap.put(SCREEN_BRIGHTNESS_FOR_VR, inclusiveIntegerRangeValidator4);
            arrayMap.put(SCREEN_BRIGHTNESS_MODE, discreteValueValidator);
            arrayMap.put(MODE_RINGER_STREAMS_AFFECTED, validator);
            arrayMap.put(MUTE_STREAMS_AFFECTED, validator);
            arrayMap.put(VIBRATE_ON, discreteValueValidator);
            arrayMap.put(RINGTONE, validator2);
            arrayMap.put(NOTIFICATION_SOUND, validator2);
            arrayMap.put(ALARM_ALERT, validator2);
            arrayMap.put(TEXT_AUTO_REPLACE, discreteValueValidator);
            arrayMap.put(TEXT_AUTO_CAPS, discreteValueValidator);
            arrayMap.put(TEXT_AUTO_PUNCTUATE, discreteValueValidator);
            arrayMap.put(TEXT_SHOW_PASSWORD, discreteValueValidator);
            arrayMap.put(SHOW_GTALK_SERVICE_STATUS, discreteValueValidator);
            arrayMap.put(WALLPAPER_ACTIVITY, validator7);
            arrayMap.put(TIME_12_24, discreteValueValidator2);
            arrayMap.put(DATE_FORMAT, validator8);
            arrayMap.put(SETUP_WIZARD_HAS_RUN, discreteValueValidator);
            arrayMap.put(ACCELEROMETER_ROTATION, discreteValueValidator);
            arrayMap.put(USER_ROTATION, inclusiveIntegerRangeValidator5);
            arrayMap.put(DTMF_TONE_WHEN_DIALING, discreteValueValidator);
            arrayMap.put(SOUND_EFFECTS_ENABLED, discreteValueValidator);
            arrayMap.put(HAPTIC_FEEDBACK_ENABLED, discreteValueValidator);
            arrayMap.put(SHOW_WEB_SUGGESTIONS, discreteValueValidator);
            arrayMap.put(WIFI_USE_STATIC_IP, discreteValueValidator);
            arrayMap.put(END_BUTTON_BEHAVIOR, inclusiveIntegerRangeValidator);
            arrayMap.put(ADVANCED_SETTINGS, discreteValueValidator);
            arrayMap.put(SCREEN_AUTO_BRIGHTNESS_ADJ, inclusiveFloatRangeValidator);
            arrayMap.put(VIBRATE_INPUT_DEVICES, discreteValueValidator);
            arrayMap.put(MASTER_MONO, discreteValueValidator);
            arrayMap.put(NOTIFICATIONS_USE_RING_VOLUME, discreteValueValidator);
            arrayMap.put(VIBRATE_IN_SILENT, discreteValueValidator);
            arrayMap.put(MEDIA_BUTTON_RECEIVER, validator6);
            arrayMap.put(HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY, discreteValueValidator);
            arrayMap.put(VIBRATE_WHEN_RINGING, discreteValueValidator);
            arrayMap.put(DTMF_TONE_TYPE_WHEN_DIALING, discreteValueValidator);
            arrayMap.put(HEARING_AID, discreteValueValidator);
            arrayMap.put(TTY_MODE, inclusiveIntegerRangeValidator6);
            arrayMap.put(NOTIFICATION_LIGHT_PULSE, discreteValueValidator);
            arrayMap.put(POINTER_LOCATION, discreteValueValidator);
            arrayMap.put(SHOW_TOUCHES, discreteValueValidator);
            arrayMap.put(WINDOW_ORIENTATION_LISTENER_LOG, discreteValueValidator);
            arrayMap.put(LOCKSCREEN_SOUNDS_ENABLED, discreteValueValidator);
            arrayMap.put("lockscreen.disabled", discreteValueValidator);
            arrayMap.put(SIP_RECEIVE_CALLS, discreteValueValidator);
            arrayMap.put(SIP_CALL_OPTIONS, discreteValueValidator3);
            arrayMap.put(SIP_ALWAYS, discreteValueValidator);
            arrayMap.put(SIP_ADDRESS_ONLY, discreteValueValidator);
            arrayMap.put(SIP_ASK_ME_EACH_TIME, discreteValueValidator);
            arrayMap.put(POINTER_SPEED, inclusiveFloatRangeValidator2);
            arrayMap.put(LOCK_TO_APP_ENABLED, discreteValueValidator);
            arrayMap.put(EGG_MODE, validator9);
            arrayMap.put(WIFI_STATIC_IP, validator3);
            arrayMap.put(WIFI_STATIC_GATEWAY, validator3);
            arrayMap.put(WIFI_STATIC_NETMASK, validator3);
            arrayMap.put(WIFI_STATIC_DNS1, validator3);
            arrayMap.put(WIFI_STATIC_DNS2, validator3);
            arrayMap.put(SHOW_BATTERY_PERCENT, discreteValueValidator);
            ArraySet arraySet3 = new ArraySet();
            CLONE_TO_MANAGED_PROFILE = arraySet3;
            m.n(arraySet3, DATE_FORMAT, HAPTIC_FEEDBACK_ENABLED, SOUND_EFFECTS_ENABLED, TEXT_SHOW_PASSWORD);
            arraySet3.add(TIME_12_24);
            ArrayMap arrayMap2 = new ArrayMap();
            CLONE_FROM_PARENT_ON_VALUE = arrayMap2;
            arrayMap2.put(RINGTONE, Secure.SYNC_PARENT_SOUNDS);
            arrayMap2.put(NOTIFICATION_SOUND, Secure.SYNC_PARENT_SOUNDS);
            arrayMap2.put(ALARM_ALERT, Secure.SYNC_PARENT_SOUNDS);
            ArraySet arraySet4 = new ArraySet();
            INSTANT_APP_SETTINGS = arraySet4;
            m.n(arraySet4, TEXT_AUTO_REPLACE, TEXT_AUTO_CAPS, TEXT_AUTO_PUNCTUATE, TEXT_SHOW_PASSWORD);
            m.n(arraySet4, DATE_FORMAT, FONT_SCALE, HAPTIC_FEEDBACK_ENABLED, TIME_12_24);
            arraySet4.add(SOUND_EFFECTS_ENABLED);
            arraySet4.add(ACCELEROMETER_ROTATION);
        }

        public static void adjustConfigurationForUser(ContentResolver contentResolver, Configuration configuration, int i2, boolean z2) {
            float floatForUser = getFloatForUser(contentResolver, FONT_SCALE, 1.0f, i2);
            configuration.fontScale = floatForUser;
            if (floatForUser < 0.0f) {
                configuration.fontScale = 1.0f;
            }
            String stringForUser = getStringForUser(contentResolver, SYSTEM_LOCALES, i2);
            if (stringForUser != null) {
                configuration.setLocales(LocaleList.forLanguageTags(stringForUser));
            } else if (z2) {
                putStringForUser(contentResolver, SYSTEM_LOCALES, configuration.getLocales().toLanguageTags(), i2);
            }
        }

        public static boolean canWrite(Context context) {
            return Settings.isCallingPackageAllowedToWriteSettings(context, Process.myUid(), context.getOpPackageName(), false);
        }

        public static void clearConfiguration(Configuration configuration) {
            configuration.fontScale = 0.0f;
            if (configuration.userSetLocale || configuration.getLocales().isEmpty()) {
                return;
            }
            configuration.clearLocales();
        }

        public static void clearProviderForTest() {
            sProviderHolder.clearProviderForTest();
            sNameValueCache.clearGenerationTrackerForTest();
        }

        public static void getCloneFromParentOnValueSettings(Map<String, String> map) {
            map.putAll(CLONE_FROM_PARENT_ON_VALUE);
        }

        public static void getCloneToManagedProfileSettings(Set<String> set) {
            set.addAll(CLONE_TO_MANAGED_PROFILE);
        }

        public static void getConfiguration(ContentResolver contentResolver, Configuration configuration) {
            adjustConfigurationForUser(contentResolver, configuration, UserHandle.myUserId(), false);
        }

        public static float getFloat(ContentResolver contentResolver, String str, float f2) {
            return getFloatForUser(contentResolver, str, f2, UserHandle.myUserId());
        }

        public static float getFloatForUser(ContentResolver contentResolver, String str, float f2, int i2) {
            String stringForUser = getStringForUser(contentResolver, str, i2);
            if (stringForUser == null) {
                return f2;
            }
            try {
                return Float.parseFloat(stringForUser);
            } catch (NumberFormatException unused) {
                return f2;
            }
        }

        public static int getInt(ContentResolver contentResolver, String str, int i2) {
            return getIntForUser(contentResolver, str, i2, UserHandle.myUserId());
        }

        public static int getIntForUser(ContentResolver contentResolver, String str, int i2, int i3) {
            String stringForUser = getStringForUser(contentResolver, str, i3);
            if (stringForUser == null) {
                return i2;
            }
            try {
                return Integer.parseInt(stringForUser);
            } catch (NumberFormatException unused) {
                return i2;
            }
        }

        public static long getLong(ContentResolver contentResolver, String str, long j2) {
            return getLongForUser(contentResolver, str, j2, UserHandle.myUserId());
        }

        public static long getLongForUser(ContentResolver contentResolver, String str, long j2, int i2) {
            String stringForUser = getStringForUser(contentResolver, str, i2);
            if (stringForUser == null) {
                return j2;
            }
            try {
                return Long.parseLong(stringForUser);
            } catch (NumberFormatException unused) {
                return j2;
            }
        }

        public static void getMovedToGlobalSettings(Set<String> set) {
            set.addAll(MOVED_TO_GLOBAL);
            set.addAll(MOVED_TO_SECURE_THEN_GLOBAL);
        }

        public static void getMovedToSecureSettings(Set<String> set) {
            set.addAll(MOVED_TO_SECURE);
        }

        public static void getNonLegacyMovedKeys(HashSet<String> hashSet) {
            hashSet.addAll(MOVED_TO_GLOBAL);
        }

        @Deprecated
        public static boolean getShowGTalkServiceStatus(ContentResolver contentResolver) {
            return getShowGTalkServiceStatusForUser(contentResolver, UserHandle.myUserId());
        }

        @Deprecated
        public static boolean getShowGTalkServiceStatusForUser(ContentResolver contentResolver, int i2) {
            return getIntForUser(contentResolver, SHOW_GTALK_SERVICE_STATUS, 0, i2) != 0;
        }

        public static String getString(ContentResolver contentResolver, String str) {
            return getStringForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static String getStringForUser(ContentResolver contentResolver, String str, int i2) {
            if (MOVED_TO_SECURE.contains(str)) {
                m.s("Setting ", str, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning read-only value.", Settings.TAG);
                return Secure.getStringForUser(contentResolver, str, i2);
            }
            if (!MOVED_TO_GLOBAL.contains(str) && !MOVED_TO_SECURE_THEN_GLOBAL.contains(str)) {
                return sNameValueCache.getStringForUser(contentResolver, str, i2);
            }
            m.s("Setting ", str, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only value.", Settings.TAG);
            return Global.getStringForUser(contentResolver, str, i2);
        }

        public static Uri getUriFor(String str) {
            if (MOVED_TO_SECURE.contains(str)) {
                m.s("Setting ", str, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning Secure URI.", Settings.TAG);
                return NameValueTable.getUriFor(Secure.CONTENT_URI, str);
            }
            if (!MOVED_TO_GLOBAL.contains(str) && !MOVED_TO_SECURE_THEN_GLOBAL.contains(str)) {
                return NameValueTable.getUriFor(CONTENT_URI, str);
            }
            m.s("Setting ", str, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only global URI.", Settings.TAG);
            return NameValueTable.getUriFor(Global.CONTENT_URI, str);
        }

        public static boolean hasInterestingConfigurationChanges(int i2) {
            return ((1073741824 & i2) == 0 && (i2 & 4) == 0) ? false : true;
        }

        public static boolean putConfiguration(ContentResolver contentResolver, Configuration configuration) {
            return putConfigurationForUser(contentResolver, configuration, UserHandle.myUserId());
        }

        public static boolean putConfigurationForUser(ContentResolver contentResolver, Configuration configuration, int i2) {
            return putFloatForUser(contentResolver, FONT_SCALE, configuration.fontScale, i2) && putStringForUser(contentResolver, SYSTEM_LOCALES, configuration.getLocales().toLanguageTags(), i2);
        }

        public static boolean putFloat(ContentResolver contentResolver, String str, float f2) {
            return putFloatForUser(contentResolver, str, f2, UserHandle.myUserId());
        }

        public static boolean putFloatForUser(ContentResolver contentResolver, String str, float f2, int i2) {
            return putStringForUser(contentResolver, str, Float.toString(f2), i2);
        }

        public static boolean putInt(ContentResolver contentResolver, String str, int i2) {
            return putIntForUser(contentResolver, str, i2, UserHandle.myUserId());
        }

        public static boolean putIntForUser(ContentResolver contentResolver, String str, int i2, int i3) {
            return putStringForUser(contentResolver, str, Integer.toString(i2), i3);
        }

        public static boolean putLong(ContentResolver contentResolver, String str, long j2) {
            return putLongForUser(contentResolver, str, j2, UserHandle.myUserId());
        }

        public static boolean putLongForUser(ContentResolver contentResolver, String str, long j2, int i2) {
            return putStringForUser(contentResolver, str, Long.toString(j2), i2);
        }

        public static boolean putString(ContentResolver contentResolver, String str, String str2) {
            return putStringForUser(contentResolver, str, str2, UserHandle.myUserId());
        }

        public static boolean putStringForUser(ContentResolver contentResolver, String str, String str2, int i2) {
            if (MOVED_TO_SECURE.contains(str)) {
                m.s("Setting ", str, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, value is unchanged.", Settings.TAG);
                return false;
            }
            if (!MOVED_TO_GLOBAL.contains(str) && !MOVED_TO_SECURE_THEN_GLOBAL.contains(str)) {
                return sNameValueCache.putStringForUser(contentResolver, str, str2, null, false, i2);
            }
            m.s("Setting ", str, " has moved from android.provider.Settings.System to android.provider.Settings.Global, value is unchanged.", Settings.TAG);
            return false;
        }

        @Deprecated
        public static void setShowGTalkServiceStatus(ContentResolver contentResolver, boolean z2) {
            setShowGTalkServiceStatusForUser(contentResolver, z2, UserHandle.myUserId());
        }

        @Deprecated
        public static void setShowGTalkServiceStatusForUser(ContentResolver contentResolver, boolean z2, int i2) {
            putIntForUser(contentResolver, SHOW_GTALK_SERVICE_STATUS, z2 ? 1 : 0, i2);
        }

        public static float getFloat(ContentResolver contentResolver, String str) {
            return getFloatForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static int getInt(ContentResolver contentResolver, String str) {
            return getIntForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static long getLong(ContentResolver contentResolver, String str) {
            return getLongForUser(contentResolver, str, UserHandle.myUserId());
        }

        public static float getFloatForUser(ContentResolver contentResolver, String str, int i2) throws SettingNotFoundException {
            String stringForUser = getStringForUser(contentResolver, str, i2);
            if (stringForUser != null) {
                try {
                    return Float.parseFloat(stringForUser);
                } catch (NumberFormatException unused) {
                    throw new SettingNotFoundException(str);
                }
            }
            throw new SettingNotFoundException(str);
        }

        public static int getIntForUser(ContentResolver contentResolver, String str, int i2) throws SettingNotFoundException {
            try {
                return Integer.parseInt(getStringForUser(contentResolver, str, i2));
            } catch (NumberFormatException unused) {
                throw new SettingNotFoundException(str);
            }
        }

        public static long getLongForUser(ContentResolver contentResolver, String str, int i2) throws SettingNotFoundException {
            try {
                return Long.parseLong(getStringForUser(contentResolver, str, i2));
            } catch (NumberFormatException unused) {
                throw new SettingNotFoundException(str);
            }
        }
    }

    public static boolean canDrawOverlays(Context context) {
        return isCallingPackageAllowedToDrawOverlays(context, Process.myUid(), context.getOpPackageName(), false);
    }

    public static boolean checkAndNoteChangeNetworkStateOperation(Context context, int i2, String str, boolean z2) {
        if (context.checkCallingOrSelfPermission(Manifest.permission.CHANGE_NETWORK_STATE) == 0) {
            return true;
        }
        return isCallingPackageAllowedToPerformAppOpsProtectedOperation(context, i2, str, z2, 23, PM_CHANGE_NETWORK_STATE, true);
    }

    public static boolean checkAndNoteDrawOverlaysOperation(Context context, int i2, String str, boolean z2) {
        return isCallingPackageAllowedToPerformAppOpsProtectedOperation(context, i2, str, z2, 24, PM_SYSTEM_ALERT_WINDOW, true);
    }

    public static boolean checkAndNoteWriteSettingsOperation(Context context, int i2, String str, boolean z2) {
        return isCallingPackageAllowedToPerformAppOpsProtectedOperation(context, i2, str, z2, 23, PM_WRITE_SETTINGS, true);
    }

    public static String getGTalkDeviceId(long j2) {
        return "android-" + Long.toHexString(j2);
    }

    public static String getPackageNameForUid(Context context, int i2) {
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
        if (packagesForUid == null) {
            return null;
        }
        return packagesForUid[0];
    }

    public static boolean isCallingPackageAllowedToDrawOverlays(Context context, int i2, String str, boolean z2) {
        return isCallingPackageAllowedToPerformAppOpsProtectedOperation(context, i2, str, z2, 24, PM_SYSTEM_ALERT_WINDOW, false);
    }

    public static boolean isCallingPackageAllowedToPerformAppOpsProtectedOperation(Context context, int i2, String str, boolean z2, int i3, String[] strArr, boolean z3) {
        int i4 = 0;
        if (str == null) {
            return false;
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(Context.APP_OPS_SERVICE);
        int iNoteOpNoThrow = z3 ? appOpsManager.noteOpNoThrow(i3, i2, str) : appOpsManager.checkOpNoThrow(i3, i2, str);
        if (iNoteOpNoThrow == 0) {
            return true;
        }
        if (iNoteOpNoThrow == 3) {
            for (String str2 : strArr) {
                if (context.checkCallingOrSelfPermission(str2) == 0) {
                    return true;
                }
            }
        }
        if (!z2) {
            return false;
        }
        StringBuilder sbU = android.accessibilityservice.c.u(str, " was not granted ");
        if (strArr.length > 1) {
            sbU.append(" either of these permissions: ");
        } else {
            sbU.append(" this permission: ");
        }
        while (i4 < strArr.length) {
            sbU.append(strArr[i4]);
            sbU.append(i4 == strArr.length - 1 ? "." : ", ");
            i4++;
        }
        throw new SecurityException(sbU.toString());
    }

    public static boolean isCallingPackageAllowedToWriteSettings(Context context, int i2, String str, boolean z2) {
        return isCallingPackageAllowedToPerformAppOpsProtectedOperation(context, i2, str, z2, 23, PM_WRITE_SETTINGS, false);
    }

    public static boolean isInSystemServer() {
        boolean z2;
        synchronized (sInSystemServerLock) {
            z2 = sInSystemServer;
        }
        return z2;
    }

    public static void setInSystemServer() {
        synchronized (sInSystemServerLock) {
            sInSystemServer = true;
        }
    }
}
