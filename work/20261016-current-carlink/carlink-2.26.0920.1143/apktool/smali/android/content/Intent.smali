.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$FillInFlags;,
        Landroid/content/Intent$CommandOptionHandler;,
        Landroid/content/Intent$CopyMode;,
        Landroid/content/Intent$UriFlags;,
        Landroid/content/Intent$MutableFlags;,
        Landroid/content/Intent$Flags;,
        Landroid/content/Intent$AccessUriMode;,
        Landroid/content/Intent$GrantUriMode;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final ACTION_APPLICATION_PREFERENCES:Ljava/lang/String; = "android.intent.action.APPLICATION_PREFERENCES"

.field public static final ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"

.field public static final ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"

.field public static final ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.CARRIER_SETUP"

.field public static final ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final ACTION_CLEAR_DNS_CACHE:Ljava/lang/String; = "android.intent.action.CLEAR_DNS_CACHE"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"

.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final ACTION_DEVICE_INITIALIZATION_WIZARD:Ljava/lang/String; = "android.intent.action.DEVICE_INITIALIZATION_WIZARD"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_LOCKED_CHANGED:Ljava/lang/String; = "android.intent.action.DEVICE_LOCKED_CHANGED"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final ACTION_DYNAMIC_SENSOR_CHANGED:Ljava/lang/String; = "android.intent.action.DYNAMIC_SENSOR_CHANGED"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EPHEMERAL_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.EPHEMERAL_RESOLVER_SETTINGS"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.FACTORY_RESET"

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_FYT_USB_CAMERA:Ljava/lang/String; = "android.intent.action.FYT_USB_CAMERA"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"

.field public static final ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final ACTION_INSTALL_EPHEMERAL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_EPHEMERAL_PACKAGE"

.field public static final ACTION_INSTALL_FAILURE:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final ACTION_INSTALL_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"

.field public static final ACTION_INSTANT_APP_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"

.field public static final ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_LOCKED_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.LOCKED_BOOT_COMPLETED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_UNLOCKED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNLOCKED"

.field public static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field public static final ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final ACTION_MANAGE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSIONS"

.field public static final ACTION_MANAGE_PERMISSION_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_APPS"

.field public static final ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"

.field public static final ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final ACTION_MEDIA_RESOURCE_GRANTED:Ljava/lang/String; = "android.intent.action.MEDIA_RESOURCE_GRANTED"

.field public static final ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

.field public static final ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field public static final ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final ACTION_PACKAGES_SUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENDED"

.field public static final ACTION_PACKAGES_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_UNSUSPENDED"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field public static final ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field public static final ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"

.field public static final ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final ACTION_QUICK_VIEW:Ljava/lang/String; = "android.intent.action.QUICK_VIEW"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "com.android.internal.intent.action.REQUEST_SHUTDOWN"

.field public static final ACTION_RESOLVE_EPHEMERAL_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_EPHEMERAL_PACKAGE"

.field public static final ACTION_RESOLVE_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

.field public static final ACTION_REVIEW_PERMISSIONS:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSIONS"

.field public static final ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SETTING_RESTORED:Ljava/lang/String; = "android.os.action.SETTING_RESTORED"

.field public static final ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final ACTION_SHOW_APP_INFO:Ljava/lang/String; = "android.intent.action.SHOW_APP_INFO"

.field public static final ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SPRD_USER_SWITCHED:Ljava/lang/String; = "sprd.intent.action.USER_SWITCHED"

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final ACTION_THERMAL_EVENT:Ljava/lang/String; = "android.intent.action.THERMAL_EVENT"

.field public static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"

.field public static final ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"

.field public static final ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final ACTION_USER_UNLOCKED:Ljava/lang/String; = "android.intent.action.USER_UNLOCKED"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"

.field public static final ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DATA:Ljava/lang/String; = "data"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final CATEGORY_HOME_MAIN:Ljava/lang/String; = "android.intent.category.HOME_MAIN"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final CATEGORY_LAUNCHER_APP:Ljava/lang/String; = "android.intent.category.LAUNCHER_APP"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"

.field public static final CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final CATEGORY_SETUP_WIZARD:Ljava/lang/String; = "android.intent.category.SETUP_WIZARD"

.field public static final CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final CATEGORY_TYPED_OPENABLE:Ljava/lang/String; = "android.intent.category.TYPED_OPENABLE"

.field public static final CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final CATEGORY_VR_HOME:Ljava/lang/String; = "android.intent.category.VR_HOME"

.field public static final CONFIRM_TO_DOWNLOAD:Ljava/lang/String; = "confirmToDownload"

.field private static final COPY_MODE_ALL:I = 0x0

.field private static final COPY_MODE_FILTER:I = 0x1

.field private static final COPY_MODE_HISTORY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ALTERNATE_INTENTS:Ljava/lang/String; = "android.intent.extra.ALTERNATE_INTENTS"

.field public static final EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final EXTRA_ASSIST_INPUT_DEVICE_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

.field public static final EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final EXTRA_ASSIST_UID:Ljava/lang/String; = "android.intent.extra.ASSIST_UID"

.field public static final EXTRA_AUTO_LAUNCH_SINGLE_CHOICE:Ljava/lang/String; = "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

.field public static final EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.intent.extra.CALLING_PACKAGE"

.field public static final EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaDefaultRoamingIndicator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaRoamingIndicator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

.field public static final EXTRA_CHOOSER_TARGETS:Ljava/lang/String; = "android.intent.extra.CHOOSER_TARGETS"

.field public static final EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.COMPONENT_NAME"

.field public static final EXTRA_CONTENT_ANNOTATIONS:Ljava/lang/String; = "android.intent.extra.CONTENT_ANNOTATIONS"

.field public static final EXTRA_CSS_INDICATOR:Ljava/lang/String; = "cssIndicator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data-operator-alpha-long"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data-operator-alpha-short"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data-operator-numeric"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_RADIO_TECH:Ljava/lang/String; = "dataRadioTechnology"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_REG_STATE:Ljava/lang/String; = "dataRegState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final EXTRA_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_EPHEMERAL_FAILURE:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_FAILURE"

.field public static final EXTRA_EPHEMERAL_HOSTNAME:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_HOSTNAME"

.field public static final EXTRA_EPHEMERAL_SUCCESS:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_SUCCESS"

.field public static final EXTRA_EPHEMERAL_TOKEN:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_TOKEN"

.field public static final EXTRA_EXCLUDE_COMPONENTS:Ljava/lang/String; = "android.intent.extra.EXCLUDE_COMPONENTS"

.field public static final EXTRA_FORCE_FACTORY_RESET:Ljava/lang/String; = "android.intent.extra.FORCE_FACTORY_RESET"

.field public static final EXTRA_FORCE_MASTER_CLEAR:Ljava/lang/String; = "android.intent.extra.FORCE_MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_FROM_STORAGE:Ljava/lang/String; = "android.intent.extra.FROM_STORAGE"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_INDEX:Ljava/lang/String; = "android.intent.extra.INDEX"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "isDataRoamingFromRegistration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "isUsingCarrierAggregation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final EXTRA_LTE_EARFCN_RSRP_BOOST:Ljava/lang/String; = "LteEarfcnRsrpBoost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_MEDIA_RESOURCE_TYPE:Ljava/lang/String; = "android.intent.extra.MEDIA_RESOURCE_TYPE"

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_AUDIO_CODEC:I = 0x1

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_VIDEO_CODEC:I = 0x0

.field public static final EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final EXTRA_NETWORK_ID:Ljava/lang/String; = "networkId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final EXTRA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "operator-alpha-long"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "operator-alpha-short"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_OPERATOR_NUMERIC:Ljava/lang/String; = "operator-numeric"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"

.field public static final EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_NAME"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final EXTRA_PROCESS_TEXT:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT"

.field public static final EXTRA_PROCESS_TEXT_READONLY:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT_READONLY"

.field public static final EXTRA_QUICK_VIEW_ADVANCED:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_ADVANCED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_QUICK_VIEW_FEATURES:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_FEATURES"

.field public static final EXTRA_QUIET_MODE:Ljava/lang/String; = "android.intent.extra.QUIET_MODE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "android.intent.extra.RESULT_RECEIVER"

.field public static final EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final EXTRA_SETTING_NAME:Ljava/lang/String; = "setting_name"

.field public static final EXTRA_SETTING_NEW_VALUE:Ljava/lang/String; = "new_value"

.field public static final EXTRA_SETTING_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"

.field public static final EXTRA_SETTING_RESTORED_FROM_SDK_INT:Ljava/lang/String; = "restored_from_sdk_int"

.field public static final EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final EXTRA_SIM_ACTIVATION_RESPONSE:Ljava/lang/String; = "android.intent.extra.SIM_ACTIVATION_RESPONSE"

.field public static final EXTRA_SPLIT_NAME:Ljava/lang/String; = "android.intent.extra.SPLIT_NAME"

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final EXTRA_SYSTEM_ID:Ljava/lang/String; = "systemId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_TASK_ID:Ljava/lang/String; = "android.intent.extra.TASK_ID"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_THERMAL_STATE:Ljava/lang/String; = "android.intent.extra.THERMAL_STATE"

.field public static final EXTRA_THERMAL_STATE_EXCEEDED:I = 0x2

.field public static final EXTRA_THERMAL_STATE_NORMAL:I = 0x0

.field public static final EXTRA_THERMAL_STATE_WARNING:I = 0x1

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TIME_PREF_VALUE_USE_12_HOUR:I = 0x0

.field public static final EXTRA_TIME_PREF_VALUE_USE_24_HOUR:I = 0x1

.field public static final EXTRA_TIME_PREF_VALUE_USE_LOCALE_DEFAULT:I = 0x2

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final EXTRA_USER_REQUESTED_SHUTDOWN:Ljava/lang/String; = "android.intent.extra.USER_REQUESTED_SHUTDOWN"

.field public static final EXTRA_VERIFICATION_BUNDLE:Ljava/lang/String; = "android.intent.extra.VERIFICATION_BUNDLE"

.field public static final EXTRA_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.VERSION_CODE"

.field public static final EXTRA_VOICE_RADIO_TECH:Ljava/lang/String; = "radioTechnology"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voiceRegState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voiceRoamingType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_WIPE_ESIMS:Ljava/lang/String; = "com.android.internal.intent.extra.WIPE_ESIMS"

.field public static final EXTRA_WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"

.field public static final FILL_IN_ACTION:I = 0x1

.field public static final FILL_IN_CATEGORIES:I = 0x4

.field public static final FILL_IN_CLIP_DATA:I = 0x80

.field public static final FILL_IN_COMPONENT:I = 0x8

.field public static final FILL_IN_DATA:I = 0x2

.field public static final FILL_IN_PACKAGE:I = 0x10

.field public static final FILL_IN_SELECTOR:I = 0x40

.field public static final FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final FLAG_ACTIVITY_LAUNCH_ADJACENT:I = 0x1000

.field public static final FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final FLAG_DEBUG_TRIAGED_MISSING:I = 0x100

.field public static final FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final FLAG_FOR_APPCLONE:I = -0x80000000

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_FYT_USB_CAMERA_ADD:I = 0x8006

.field public static final FLAG_FYT_USB_CAMERA_REMOVE:I = 0x8005

.field public static final FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_IGNORE_EPHEMERAL:I = 0x200

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final FLAG_RECEIVER_EXCLUDE_BACKGROUND:I = 0x800000

.field public static final FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final FLAG_RECEIVER_FROM_SHELL:I = 0x400000

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field public static final FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000

.field public static final FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x200000

.field public static final FLAG_USB_CAMERA_ADD:I = 0x8002

.field public static final FLAG_USB_CAMERA_REMOVE:I = 0x8001

.field public static final IMMUTABLE_FLAGS:I = 0xc3

.field public static final JOB_ID:Ljava/lang/String; = "jobId"

.field public static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final URI_ALLOW_UNSAFE:I = 0x4

.field public static final URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mComponent:Landroid/content/ComponentName;

.field private mContentUserHint:I

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mInternalExtras:Landroid/os/Bundle;

.field private mLaunchToken:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mSelector:Landroid/content/Intent;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 36
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;I)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 5
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 6
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    .line 13
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 14
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 15
    iget-object v0, p1, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 18
    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    .line 20
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_3

    .line 21
    new-instance p2, Landroid/os/Bundle;

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 22
    :cond_3
    iget-object p2, p1, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_4

    .line 23
    new-instance p2, Landroid/os/Bundle;

    iget-object v0, p1, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    .line 24
    :cond_4
    iget-object p2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p2, :cond_6

    .line 25
    new-instance p2, Landroid/content/ClipData;

    iget-object p1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {p2, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object p2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    goto :goto_0

    .line 26
    :cond_5
    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/BaseBundle;->maybeIsEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    sget-object p1, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_6
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 44
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 29
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 32
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 39
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 42
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.TITLE"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0xc3

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    new-instance p2, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 10
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 12
    :goto_0
    new-instance p0, Landroid/content/ClipData;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object p2, p0

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x23

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v2, "android.intent.action.VIEW"

    if-ltz v1, :cond_1c

    add-int/lit8 v3, v1, 0x1

    const-string v4, "action("

    const/4 v5, 0x0

    const/4 v6, 0x7

    .line 3
    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    const/16 v7, 0x29

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x7

    .line 4
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 5
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v4, v8

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move v9, v5

    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v16

    .line 6
    :goto_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "categories("

    const/16 v11, 0xb

    .line 7
    invoke-virtual {v0, v4, v3, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    const/16 v11, 0x21

    if-eqz v3, :cond_5

    add-int/lit8 v4, v4, 0xb

    .line 8
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_4

    .line 9
    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-ltz v9, :cond_1

    if-le v9, v3, :cond_2

    :cond_1
    move v9, v3

    :cond_2
    if-ge v4, v9, :cond_3

    .line 10
    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    add-int/lit8 v4, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    move v9, v8

    :cond_5
    const-string/jumbo v3, "type("

    const/4 v12, 0x5

    .line 11
    invoke-virtual {v0, v4, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v4, v4, 0x5

    .line 12
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 13
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroid/content/Intent;->mType:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    move v9, v8

    :cond_6
    const-string/jumbo v3, "launchFlags("

    const/16 v12, 0xc

    .line 14
    invoke-virtual {v0, v4, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v4, v4, 0xc

    .line 15
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 16
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v10, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v9, p1, 0x4

    if-nez v9, :cond_7

    and-int/lit16 v4, v4, -0xc4

    .line 17
    iput v4, v10, Landroid/content/Intent;->mFlags:I

    :cond_7
    add-int/lit8 v4, v3, 0x1

    move v9, v8

    :cond_8
    const-string v3, "component("

    const/16 v12, 0xa

    .line 18
    invoke-virtual {v0, v4, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v4, v4, 0xa

    .line 19
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 20
    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-ltz v9, :cond_9

    if-ge v9, v3, :cond_9

    .line 21
    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v9, v8

    .line 22
    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 23
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v10, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    :cond_9
    add-int/lit8 v4, v3, 0x1

    move v9, v8

    :cond_a
    const-string v3, "extras("

    .line 24
    invoke-virtual {v0, v4, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1a

    add-int/2addr v4, v6

    .line 25
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_19

    :goto_2
    if-ge v4, v3, :cond_18

    const/16 v9, 0x3d

    .line 26
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    add-int/lit8 v12, v4, 0x1

    if-le v9, v12, :cond_17

    if-ge v4, v3, :cond_17

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 28
    invoke-virtual {v0, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    .line 29
    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-eq v13, v6, :cond_b

    if-lt v13, v3, :cond_c

    :cond_b
    move v13, v3

    :cond_c
    const-string v14, "EXTRA missing \'!\'"

    if-ge v9, v13, :cond_16

    .line 30
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 31
    iget-object v15, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v15, :cond_d

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    iput-object v15, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_d
    const/16 v15, 0x42

    if-eq v4, v15, :cond_13

    const/16 v15, 0x53

    if-eq v4, v15, :cond_12

    const/16 v15, 0x66

    if-eq v4, v15, :cond_11

    const/16 v15, 0x69

    if-eq v4, v15, :cond_10

    const/16 v15, 0x6c

    if-eq v4, v15, :cond_f

    const/16 v15, 0x73

    if-eq v4, v15, :cond_e

    packed-switch v4, :pswitch_data_0

    .line 32
    :try_start_0
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA has unknown type"

    invoke-direct {v1, v0, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 33
    :pswitch_0
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v4, v12, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_3

    .line 34
    :pswitch_1
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_3

    .line 35
    :pswitch_2
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_3

    .line 36
    :cond_e
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_3

    .line 37
    :cond_f
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v12, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    .line 38
    :cond_10
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 39
    :cond_11
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_3

    .line 40
    :cond_12
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v12, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 41
    :cond_13
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_14

    goto :goto_4

    :cond_14
    if-ne v4, v11, :cond_15

    add-int/lit8 v4, v13, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 43
    :cond_15
    new-instance v1, Ljava/net/URISyntaxException;

    invoke-direct {v1, v0, v14, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 44
    :catch_0
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA value can\'t be parsed"

    invoke-direct {v1, v0, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 45
    :cond_16
    new-instance v1, Ljava/net/URISyntaxException;

    invoke-direct {v1, v0, v14, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 46
    :cond_17
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA missing \'=\'"

    invoke-direct {v1, v0, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_18
    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    .line 47
    :cond_19
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA missing trailing \')\'"

    invoke-direct {v1, v0, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1a
    move v8, v9

    :goto_5
    if-eqz v8, :cond_1b

    .line 48
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto :goto_6

    .line 49
    :cond_1b
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 50
    :goto_6
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 51
    iput-object v2, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    goto :goto_7

    .line 52
    :cond_1c
    new-instance v10, Landroid/content/Intent;

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_1d
    :goto_7
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isAccessUriMode(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/net/Uri;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p0, v0

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/CharSequence;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object p1, v0

    .line 22
    :goto_1
    if-eqz p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object p2, v0

    .line 32
    :goto_2
    new-instance p3, Landroid/content/ClipData$Item;

    .line 33
    .line 34
    invoke-direct {p3, p1, p2, v0, p0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    return-object p3
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string p0, "android.intent.category.LAUNCHER"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.LAUNCHER"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x10008000

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 v0, 0x3b

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    return-object p0
.end method

.method public static parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v5, v1

    .line 12
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    const/16 v7, 0x2f

    .line 17
    .line 18
    const/4 v8, 0x7

    .line 19
    const/4 v9, 0x1

    .line 20
    if-eqz v6, :cond_44

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    const/16 v11, 0x20

    .line 27
    .line 28
    const/4 v12, 0x2

    .line 29
    const/4 v13, -0x1

    .line 30
    sparse-switch v10, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    const-string v7, "--grant-write-uri-permission"

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    const/16 v7, 0x33

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :sswitch_1
    const-string v7, "--activity-multiple-task"

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_2

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_2
    const/16 v7, 0x32

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :sswitch_2
    const-string v7, "--grant-read-uri-permission"

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_3

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_3
    const/16 v7, 0x31

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :sswitch_3
    const-string v7, "--receiver-foreground"

    .line 78
    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-nez v7, :cond_4

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_4
    const/16 v7, 0x30

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :sswitch_4
    const-string v8, "--receiver-no-abort"

    .line 92
    .line 93
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_34

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :sswitch_5
    const-string v7, "--activity-launched-from-history"

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-nez v7, :cond_5

    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :cond_5
    const/16 v7, 0x2e

    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :sswitch_6
    const-string v7, "--activity-clear-when-task-reset"

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_6

    .line 122
    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :cond_6
    const/16 v7, 0x2d

    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :sswitch_7
    const-string v7, "--esal"

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_7

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_7
    const/16 v7, 0x2c

    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :sswitch_8
    const-string v7, "--elal"

    .line 144
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-nez v7, :cond_8

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_8
    const/16 v7, 0x2b

    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :sswitch_9
    const-string v7, "--eial"

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-nez v7, :cond_9

    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :cond_9
    const/16 v7, 0x2a

    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :sswitch_a
    const-string v7, "--efal"

    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_a

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_a
    const/16 v7, 0x29

    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :sswitch_b
    const-string v7, "--selector"

    .line 186
    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-nez v7, :cond_b

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_b
    const/16 v7, 0x28

    .line 196
    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :sswitch_c
    const-string v7, "--receiver-replace-pending"

    .line 200
    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-nez v7, :cond_c

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_c
    const/16 v7, 0x27

    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :sswitch_d
    const-string v7, "--include-stopped-packages"

    .line 214
    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-nez v7, :cond_d

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_d
    const/16 v7, 0x26

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :sswitch_e
    const-string v7, "--exclude-stopped-packages"

    .line 228
    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-nez v7, :cond_e

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_e
    const/16 v7, 0x25

    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :sswitch_f
    const-string v7, "--grant-persistable-uri-permission"

    .line 242
    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-nez v7, :cond_f

    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_f
    const/16 v7, 0x24

    .line 252
    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :sswitch_10
    const-string v7, "--activity-single-top"

    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-nez v7, :cond_10

    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_10
    const/16 v7, 0x23

    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :sswitch_11
    const-string v7, "--receiver-registered-only"

    .line 270
    .line 271
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-nez v7, :cond_11

    .line 276
    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :cond_11
    const/16 v7, 0x22

    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :sswitch_12
    const-string v7, "--activity-no-user-action"

    .line 284
    .line 285
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    if-nez v7, :cond_12

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_12
    const/16 v7, 0x21

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :sswitch_13
    const-string v7, "--activity-clear-top"

    .line 298
    .line 299
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-nez v7, :cond_13

    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :cond_13
    move v7, v11

    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :sswitch_14
    const-string v7, "--activity-reset-task-if-needed"

    .line 311
    .line 312
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_14

    .line 317
    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :cond_14
    const/16 v7, 0x1f

    .line 321
    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :sswitch_15
    const-string v7, "--activity-no-animation"

    .line 325
    .line 326
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-nez v7, :cond_15

    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_15
    const/16 v7, 0x1e

    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :sswitch_16
    const-string v7, "--activity-exclude-from-recents"

    .line 339
    .line 340
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    if-nez v7, :cond_16

    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_16
    const/16 v7, 0x1d

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :sswitch_17
    const-string v7, "--esn"

    .line 353
    .line 354
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-nez v7, :cond_17

    .line 359
    .line 360
    goto/16 :goto_1

    .line 361
    .line 362
    :cond_17
    const/16 v7, 0x1c

    .line 363
    .line 364
    goto/16 :goto_2

    .line 365
    .line 366
    :sswitch_18
    const-string v7, "--esa"

    .line 367
    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-nez v7, :cond_18

    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :cond_18
    const/16 v7, 0x1b

    .line 377
    .line 378
    goto/16 :goto_2

    .line 379
    .line 380
    :sswitch_19
    const-string v7, "--ela"

    .line 381
    .line 382
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    if-nez v7, :cond_19

    .line 387
    .line 388
    goto/16 :goto_1

    .line 389
    .line 390
    :cond_19
    const/16 v7, 0x1a

    .line 391
    .line 392
    goto/16 :goto_2

    .line 393
    .line 394
    :sswitch_1a
    const-string v7, "--eia"

    .line 395
    .line 396
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-nez v7, :cond_1a

    .line 401
    .line 402
    goto/16 :goto_1

    .line 403
    .line 404
    :cond_1a
    const/16 v7, 0x19

    .line 405
    .line 406
    goto/16 :goto_2

    .line 407
    .line 408
    :sswitch_1b
    const-string v7, "--efa"

    .line 409
    .line 410
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    if-nez v7, :cond_1b

    .line 415
    .line 416
    goto/16 :goto_1

    .line 417
    .line 418
    :cond_1b
    const/16 v7, 0x18

    .line 419
    .line 420
    goto/16 :goto_2

    .line 421
    .line 422
    :sswitch_1c
    const-string v7, "--ecn"

    .line 423
    .line 424
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    if-nez v7, :cond_1c

    .line 429
    .line 430
    goto/16 :goto_1

    .line 431
    .line 432
    :cond_1c
    const/16 v7, 0x17

    .line 433
    .line 434
    goto/16 :goto_2

    .line 435
    .line 436
    :sswitch_1d
    const-string v7, "--ez"

    .line 437
    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-nez v7, :cond_1d

    .line 443
    .line 444
    goto/16 :goto_1

    .line 445
    .line 446
    :cond_1d
    const/16 v7, 0x16

    .line 447
    .line 448
    goto/16 :goto_2

    .line 449
    .line 450
    :sswitch_1e
    const-string v7, "--eu"

    .line 451
    .line 452
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    if-nez v7, :cond_1e

    .line 457
    .line 458
    goto/16 :goto_1

    .line 459
    .line 460
    :cond_1e
    const/16 v7, 0x15

    .line 461
    .line 462
    goto/16 :goto_2

    .line 463
    .line 464
    :sswitch_1f
    const-string v7, "--es"

    .line 465
    .line 466
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    if-nez v7, :cond_1f

    .line 471
    .line 472
    goto/16 :goto_1

    .line 473
    .line 474
    :cond_1f
    const/16 v7, 0x14

    .line 475
    .line 476
    goto/16 :goto_2

    .line 477
    .line 478
    :sswitch_20
    const-string v7, "--el"

    .line 479
    .line 480
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    if-nez v7, :cond_20

    .line 485
    .line 486
    goto/16 :goto_1

    .line 487
    .line 488
    :cond_20
    const/16 v7, 0x13

    .line 489
    .line 490
    goto/16 :goto_2

    .line 491
    .line 492
    :sswitch_21
    const-string v7, "--ei"

    .line 493
    .line 494
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v7

    .line 498
    if-nez v7, :cond_21

    .line 499
    .line 500
    goto/16 :goto_1

    .line 501
    .line 502
    :cond_21
    const/16 v7, 0x12

    .line 503
    .line 504
    goto/16 :goto_2

    .line 505
    .line 506
    :sswitch_22
    const-string v7, "--ef"

    .line 507
    .line 508
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    if-nez v7, :cond_22

    .line 513
    .line 514
    goto/16 :goto_1

    .line 515
    .line 516
    :cond_22
    const/16 v7, 0x11

    .line 517
    .line 518
    goto/16 :goto_2

    .line 519
    .line 520
    :sswitch_23
    const-string v7, "-t"

    .line 521
    .line 522
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v7

    .line 526
    if-nez v7, :cond_23

    .line 527
    .line 528
    goto/16 :goto_1

    .line 529
    .line 530
    :cond_23
    const/16 v7, 0x10

    .line 531
    .line 532
    goto/16 :goto_2

    .line 533
    .line 534
    :sswitch_24
    const-string v7, "-p"

    .line 535
    .line 536
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v7

    .line 540
    if-nez v7, :cond_24

    .line 541
    .line 542
    goto/16 :goto_1

    .line 543
    .line 544
    :cond_24
    const/16 v7, 0xf

    .line 545
    .line 546
    goto/16 :goto_2

    .line 547
    .line 548
    :sswitch_25
    const-string v7, "-n"

    .line 549
    .line 550
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    if-nez v7, :cond_25

    .line 555
    .line 556
    goto/16 :goto_1

    .line 557
    .line 558
    :cond_25
    const/16 v7, 0xe

    .line 559
    .line 560
    goto/16 :goto_2

    .line 561
    .line 562
    :sswitch_26
    const-string v7, "-f"

    .line 563
    .line 564
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v7

    .line 568
    if-nez v7, :cond_26

    .line 569
    .line 570
    goto/16 :goto_1

    .line 571
    .line 572
    :cond_26
    const/16 v7, 0xd

    .line 573
    .line 574
    goto/16 :goto_2

    .line 575
    .line 576
    :sswitch_27
    const-string v7, "-e"

    .line 577
    .line 578
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v7

    .line 582
    if-nez v7, :cond_27

    .line 583
    .line 584
    goto/16 :goto_1

    .line 585
    .line 586
    :cond_27
    const/16 v7, 0xc

    .line 587
    .line 588
    goto/16 :goto_2

    .line 589
    .line 590
    :sswitch_28
    const-string v7, "-d"

    .line 591
    .line 592
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    if-nez v7, :cond_28

    .line 597
    .line 598
    goto/16 :goto_1

    .line 599
    .line 600
    :cond_28
    const/16 v7, 0xb

    .line 601
    .line 602
    goto/16 :goto_2

    .line 603
    .line 604
    :sswitch_29
    const-string v7, "-c"

    .line 605
    .line 606
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v7

    .line 610
    if-nez v7, :cond_29

    .line 611
    .line 612
    goto/16 :goto_1

    .line 613
    .line 614
    :cond_29
    const/16 v7, 0xa

    .line 615
    .line 616
    goto/16 :goto_2

    .line 617
    .line 618
    :sswitch_2a
    const-string v7, "-a"

    .line 619
    .line 620
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    if-nez v7, :cond_2a

    .line 625
    .line 626
    goto/16 :goto_1

    .line 627
    .line 628
    :cond_2a
    const/16 v7, 0x9

    .line 629
    .line 630
    goto/16 :goto_2

    .line 631
    .line 632
    :sswitch_2b
    const-string v7, "--receiver-include-background"

    .line 633
    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    if-nez v7, :cond_2b

    .line 639
    .line 640
    goto/16 :goto_1

    .line 641
    .line 642
    :cond_2b
    const/16 v7, 0x8

    .line 643
    .line 644
    goto/16 :goto_2

    .line 645
    .line 646
    :sswitch_2c
    const-string v7, "--activity-previous-is-top"

    .line 647
    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v7

    .line 652
    if-nez v7, :cond_2c

    .line 653
    .line 654
    goto :goto_1

    .line 655
    :cond_2c
    move v7, v8

    .line 656
    goto :goto_2

    .line 657
    :sswitch_2d
    const-string v7, "--activity-brought-to-front"

    .line 658
    .line 659
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v7

    .line 663
    if-nez v7, :cond_2d

    .line 664
    .line 665
    goto :goto_1

    .line 666
    :cond_2d
    const/4 v7, 0x6

    .line 667
    goto :goto_2

    .line 668
    :sswitch_2e
    const-string v7, "--activity-reorder-to-front"

    .line 669
    .line 670
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    if-nez v7, :cond_2e

    .line 675
    .line 676
    goto :goto_1

    .line 677
    :cond_2e
    const/4 v7, 0x5

    .line 678
    goto :goto_2

    .line 679
    :sswitch_2f
    const-string v7, "--debug-log-resolution"

    .line 680
    .line 681
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    if-nez v7, :cond_2f

    .line 686
    .line 687
    goto :goto_1

    .line 688
    :cond_2f
    const/4 v7, 0x4

    .line 689
    goto :goto_2

    .line 690
    :sswitch_30
    const-string v7, "--activity-clear-task"

    .line 691
    .line 692
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v7

    .line 696
    if-nez v7, :cond_30

    .line 697
    .line 698
    goto :goto_1

    .line 699
    :cond_30
    const/4 v7, 0x3

    .line 700
    goto :goto_2

    .line 701
    :sswitch_31
    const-string v7, "--activity-no-history"

    .line 702
    .line 703
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v7

    .line 707
    if-nez v7, :cond_31

    .line 708
    .line 709
    goto :goto_1

    .line 710
    :cond_31
    move v7, v12

    .line 711
    goto :goto_2

    .line 712
    :sswitch_32
    const-string v7, "--activity-task-on-home"

    .line 713
    .line 714
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v7

    .line 718
    if-nez v7, :cond_32

    .line 719
    .line 720
    goto :goto_1

    .line 721
    :cond_32
    move v7, v9

    .line 722
    goto :goto_2

    .line 723
    :sswitch_33
    const-string v7, "--grant-prefix-uri-permission"

    .line 724
    .line 725
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v7

    .line 729
    if-nez v7, :cond_33

    .line 730
    .line 731
    goto :goto_1

    .line 732
    :cond_33
    const/4 v7, 0x0

    .line 733
    goto :goto_2

    .line 734
    :goto_1
    move v7, v13

    .line 735
    :cond_34
    :goto_2
    const-string v8, "Bad component name: "

    .line 736
    .line 737
    const/high16 v10, 0x20000000

    .line 738
    .line 739
    const/high16 v13, 0x8000000

    .line 740
    .line 741
    const-string v14, "(?<!\\\\),"

    .line 742
    .line 743
    const-string v15, ","

    .line 744
    .line 745
    packed-switch v7, :pswitch_data_0

    .line 746
    .line 747
    .line 748
    if-eqz v0, :cond_43

    .line 749
    .line 750
    move-object/from16 v10, p0

    .line 751
    .line 752
    invoke-interface {v0, v6, v10}, Landroid/content/Intent$CommandOptionHandler;->handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z

    .line 753
    .line 754
    .line 755
    move-result v7

    .line 756
    if-eqz v7, :cond_43

    .line 757
    .line 758
    goto/16 :goto_0

    .line 759
    .line 760
    :pswitch_0
    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 761
    .line 762
    .line 763
    goto/16 :goto_d

    .line 764
    .line 765
    :pswitch_1
    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    .line 767
    .line 768
    goto/16 :goto_d

    .line 769
    .line 770
    :pswitch_2
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 771
    .line 772
    .line 773
    goto/16 :goto_d

    .line 774
    .line 775
    :pswitch_3
    const/high16 v6, 0x10000000

    .line 776
    .line 777
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 778
    .line 779
    .line 780
    goto/16 :goto_d

    .line 781
    .line 782
    :pswitch_4
    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    .line 784
    .line 785
    goto/16 :goto_d

    .line 786
    .line 787
    :pswitch_5
    const/high16 v6, 0x100000

    .line 788
    .line 789
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 790
    .line 791
    .line 792
    goto/16 :goto_d

    .line 793
    .line 794
    :pswitch_6
    const/high16 v6, 0x80000

    .line 795
    .line 796
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 797
    .line 798
    .line 799
    goto/16 :goto_d

    .line 800
    .line 801
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v6

    .line 809
    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v6

    .line 813
    new-instance v7, Ljava/util/ArrayList;

    .line 814
    .line 815
    array-length v8, v6

    .line 816
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 817
    .line 818
    .line 819
    const/4 v8, 0x0

    .line 820
    :goto_3
    array-length v10, v6

    .line 821
    if-ge v8, v10, :cond_35

    .line 822
    .line 823
    aget-object v10, v6, v8

    .line 824
    .line 825
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    add-int/lit8 v8, v8, 0x1

    .line 829
    .line 830
    goto :goto_3

    .line 831
    :cond_35
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 832
    .line 833
    .line 834
    goto/16 :goto_c

    .line 835
    .line 836
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v6

    .line 844
    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v6

    .line 848
    new-instance v7, Ljava/util/ArrayList;

    .line 849
    .line 850
    array-length v8, v6

    .line 851
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 852
    .line 853
    .line 854
    const/4 v8, 0x0

    .line 855
    :goto_4
    array-length v10, v6

    .line 856
    if-ge v8, v10, :cond_36

    .line 857
    .line 858
    aget-object v10, v6, v8

    .line 859
    .line 860
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 861
    .line 862
    .line 863
    move-result-object v10

    .line 864
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    add-int/lit8 v8, v8, 0x1

    .line 868
    .line 869
    goto :goto_4

    .line 870
    :cond_36
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 871
    .line 872
    .line 873
    goto/16 :goto_c

    .line 874
    .line 875
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v6

    .line 879
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v7

    .line 883
    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v7

    .line 887
    new-instance v8, Ljava/util/ArrayList;

    .line 888
    .line 889
    array-length v9, v7

    .line 890
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 891
    .line 892
    .line 893
    const/4 v9, 0x0

    .line 894
    :goto_5
    array-length v10, v7

    .line 895
    if-ge v9, v10, :cond_37

    .line 896
    .line 897
    aget-object v10, v7, v9

    .line 898
    .line 899
    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 900
    .line 901
    .line 902
    move-result-object v10

    .line 903
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    add-int/lit8 v9, v9, 0x1

    .line 907
    .line 908
    goto :goto_5

    .line 909
    :cond_37
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 910
    .line 911
    .line 912
    goto/16 :goto_d

    .line 913
    .line 914
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v6

    .line 922
    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v6

    .line 926
    new-instance v7, Ljava/util/ArrayList;

    .line 927
    .line 928
    array-length v8, v6

    .line 929
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 930
    .line 931
    .line 932
    const/4 v8, 0x0

    .line 933
    :goto_6
    array-length v10, v6

    .line 934
    if-ge v8, v10, :cond_38

    .line 935
    .line 936
    aget-object v10, v6, v8

    .line 937
    .line 938
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 939
    .line 940
    .line 941
    move-result-object v10

    .line 942
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    add-int/lit8 v8, v8, 0x1

    .line 946
    .line 947
    goto :goto_6

    .line 948
    :cond_38
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 949
    .line 950
    .line 951
    goto/16 :goto_c

    .line 952
    .line 953
    :pswitch_b
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    .line 955
    .line 956
    new-instance v5, Landroid/content/Intent;

    .line 957
    .line 958
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 959
    .line 960
    .line 961
    goto/16 :goto_0

    .line 962
    .line 963
    :pswitch_c
    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 964
    .line 965
    .line 966
    goto/16 :goto_d

    .line 967
    .line 968
    :pswitch_d
    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 969
    .line 970
    .line 971
    goto/16 :goto_d

    .line 972
    .line 973
    :pswitch_e
    const/16 v6, 0x10

    .line 974
    .line 975
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 976
    .line 977
    .line 978
    goto/16 :goto_d

    .line 979
    .line 980
    :pswitch_f
    const/16 v6, 0x40

    .line 981
    .line 982
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 983
    .line 984
    .line 985
    goto/16 :goto_d

    .line 986
    .line 987
    :pswitch_10
    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 988
    .line 989
    .line 990
    goto/16 :goto_d

    .line 991
    .line 992
    :pswitch_11
    const/high16 v6, 0x40000000    # 2.0f

    .line 993
    .line 994
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 995
    .line 996
    .line 997
    goto/16 :goto_d

    .line 998
    .line 999
    :pswitch_12
    const/high16 v6, 0x40000

    .line 1000
    .line 1001
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1002
    .line 1003
    .line 1004
    goto/16 :goto_d

    .line 1005
    .line 1006
    :pswitch_13
    const/high16 v6, 0x4000000

    .line 1007
    .line 1008
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1009
    .line 1010
    .line 1011
    goto/16 :goto_d

    .line 1012
    .line 1013
    :pswitch_14
    const/high16 v6, 0x200000

    .line 1014
    .line 1015
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_d

    .line 1019
    .line 1020
    :pswitch_15
    const/high16 v6, 0x10000

    .line 1021
    .line 1022
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_d

    .line 1026
    .line 1027
    :pswitch_16
    const/high16 v6, 0x800000

    .line 1028
    .line 1029
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_d

    .line 1033
    .line 1034
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v6

    .line 1038
    const/4 v7, 0x0

    .line 1039
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    .line 1041
    .line 1042
    goto/16 :goto_d

    .line 1043
    .line 1044
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v4

    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v6

    .line 1052
    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v6

    .line 1056
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_c

    .line 1060
    .line 1061
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v4

    .line 1065
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v6

    .line 1069
    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v6

    .line 1073
    array-length v7, v6

    .line 1074
    new-array v7, v7, [J

    .line 1075
    .line 1076
    const/4 v8, 0x0

    .line 1077
    :goto_7
    array-length v10, v6

    .line 1078
    if-ge v8, v10, :cond_39

    .line 1079
    .line 1080
    aget-object v10, v6, v8

    .line 1081
    .line 1082
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v10

    .line 1086
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 1087
    .line 1088
    .line 1089
    move-result-wide v10

    .line 1090
    aput-wide v10, v7, v8

    .line 1091
    .line 1092
    add-int/lit8 v8, v8, 0x1

    .line 1093
    .line 1094
    goto :goto_7

    .line 1095
    :cond_39
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_c

    .line 1099
    .line 1100
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v6

    .line 1104
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v7

    .line 1108
    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v7

    .line 1112
    array-length v8, v7

    .line 1113
    new-array v8, v8, [I

    .line 1114
    .line 1115
    const/4 v9, 0x0

    .line 1116
    :goto_8
    array-length v10, v7

    .line 1117
    if-ge v9, v10, :cond_3a

    .line 1118
    .line 1119
    aget-object v10, v7, v9

    .line 1120
    .line 1121
    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v10

    .line 1125
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1126
    .line 1127
    .line 1128
    move-result v10

    .line 1129
    aput v10, v8, v9

    .line 1130
    .line 1131
    add-int/lit8 v9, v9, 0x1

    .line 1132
    .line 1133
    goto :goto_8

    .line 1134
    :cond_3a
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_d

    .line 1138
    .line 1139
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v4

    .line 1143
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v6

    .line 1147
    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v6

    .line 1151
    array-length v7, v6

    .line 1152
    new-array v7, v7, [F

    .line 1153
    .line 1154
    const/4 v8, 0x0

    .line 1155
    :goto_9
    array-length v10, v6

    .line 1156
    if-ge v8, v10, :cond_3b

    .line 1157
    .line 1158
    aget-object v10, v6, v8

    .line 1159
    .line 1160
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v10

    .line 1164
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 1165
    .line 1166
    .line 1167
    move-result v10

    .line 1168
    aput v10, v7, v8

    .line 1169
    .line 1170
    add-int/lit8 v8, v8, 0x1

    .line 1171
    .line 1172
    goto :goto_9

    .line 1173
    :cond_3b
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_c

    .line 1177
    .line 1178
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v6

    .line 1182
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v7

    .line 1186
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v9

    .line 1190
    if-eqz v9, :cond_3c

    .line 1191
    .line 1192
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1193
    .line 1194
    .line 1195
    goto/16 :goto_d

    .line 1196
    .line 1197
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1198
    .line 1199
    invoke-static {v8, v7}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    throw v0

    .line 1207
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v6

    .line 1211
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v7

    .line 1215
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v7

    .line 1219
    const-string/jumbo v8, "true"

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v8

    .line 1226
    if-nez v8, :cond_40

    .line 1227
    .line 1228
    const-string/jumbo v8, "t"

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v8

    .line 1235
    if-eqz v8, :cond_3d

    .line 1236
    .line 1237
    goto :goto_b

    .line 1238
    :cond_3d
    const-string v8, "false"

    .line 1239
    .line 1240
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1241
    .line 1242
    .line 1243
    move-result v8

    .line 1244
    if-nez v8, :cond_3f

    .line 1245
    .line 1246
    const-string v8, "f"

    .line 1247
    .line 1248
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v8

    .line 1252
    if-eqz v8, :cond_3e

    .line 1253
    .line 1254
    goto :goto_a

    .line 1255
    :cond_3e
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v8

    .line 1259
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1260
    .line 1261
    .line 1262
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    if-eqz v7, :cond_3f

    .line 1264
    .line 1265
    goto :goto_b

    .line 1266
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1267
    .line 1268
    const-string v1, "Invalid boolean value: "

    .line 1269
    .line 1270
    invoke-static {v1, v7}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1

    .line 1274
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1275
    .line 1276
    .line 1277
    throw v0

    .line 1278
    :cond_3f
    :goto_a
    const/4 v9, 0x0

    .line 1279
    :cond_40
    :goto_b
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1280
    .line 1281
    .line 1282
    goto/16 :goto_d

    .line 1283
    .line 1284
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v6

    .line 1288
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v7

    .line 1292
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v7

    .line 1296
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1297
    .line 1298
    .line 1299
    goto/16 :goto_d

    .line 1300
    .line 1301
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v6

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v7

    .line 1309
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v7

    .line 1313
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1314
    .line 1315
    .line 1316
    goto/16 :goto_d

    .line 1317
    .line 1318
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v6

    .line 1322
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v7

    .line 1326
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v7

    .line 1330
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1331
    .line 1332
    .line 1333
    goto/16 :goto_d

    .line 1334
    .line 1335
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v4

    .line 1339
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v6

    .line 1343
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v6

    .line 1347
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1348
    .line 1349
    .line 1350
    goto :goto_c

    .line 1351
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v3

    .line 1355
    if-ne v5, v1, :cond_0

    .line 1356
    .line 1357
    goto :goto_c

    .line 1358
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v6

    .line 1362
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    .line 1364
    .line 1365
    if-ne v5, v1, :cond_42

    .line 1366
    .line 1367
    goto :goto_c

    .line 1368
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v6

    .line 1372
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v7

    .line 1376
    if-eqz v7, :cond_41

    .line 1377
    .line 1378
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1379
    .line 1380
    .line 1381
    if-ne v5, v1, :cond_42

    .line 1382
    .line 1383
    goto :goto_c

    .line 1384
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1385
    .line 1386
    invoke-static {v8, v6}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v1

    .line 1390
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    throw v0

    .line 1394
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v6

    .line 1398
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v6

    .line 1402
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1403
    .line 1404
    .line 1405
    move-result v6

    .line 1406
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1407
    .line 1408
    .line 1409
    goto/16 :goto_d

    .line 1410
    .line 1411
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v6

    .line 1415
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v7

    .line 1419
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    .line 1421
    .line 1422
    goto :goto_d

    .line 1423
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v2

    .line 1427
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    if-ne v5, v1, :cond_0

    .line 1432
    .line 1433
    goto :goto_c

    .line 1434
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v6

    .line 1438
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    .line 1440
    .line 1441
    if-ne v5, v1, :cond_42

    .line 1442
    .line 1443
    goto :goto_c

    .line 1444
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v6

    .line 1448
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    .line 1450
    .line 1451
    if-ne v5, v1, :cond_42

    .line 1452
    .line 1453
    :goto_c
    move v4, v9

    .line 1454
    goto/16 :goto_0

    .line 1455
    .line 1456
    :pswitch_2a
    const/high16 v6, 0x1000000

    .line 1457
    .line 1458
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1459
    .line 1460
    .line 1461
    goto :goto_d

    .line 1462
    :pswitch_2b
    const/high16 v6, 0x1000000

    .line 1463
    .line 1464
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1465
    .line 1466
    .line 1467
    goto :goto_d

    .line 1468
    :pswitch_2c
    const/high16 v6, 0x400000

    .line 1469
    .line 1470
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1471
    .line 1472
    .line 1473
    goto :goto_d

    .line 1474
    :pswitch_2d
    const/high16 v6, 0x20000

    .line 1475
    .line 1476
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1477
    .line 1478
    .line 1479
    goto :goto_d

    .line 1480
    :pswitch_2e
    const/16 v6, 0x8

    .line 1481
    .line 1482
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1483
    .line 1484
    .line 1485
    goto :goto_d

    .line 1486
    :pswitch_2f
    const v6, 0x8000

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1490
    .line 1491
    .line 1492
    goto :goto_d

    .line 1493
    :pswitch_30
    const/high16 v6, 0x40000000    # 2.0f

    .line 1494
    .line 1495
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1496
    .line 1497
    .line 1498
    goto :goto_d

    .line 1499
    :pswitch_31
    const/16 v6, 0x4000

    .line 1500
    .line 1501
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1502
    .line 1503
    .line 1504
    goto :goto_d

    .line 1505
    :pswitch_32
    const/16 v6, 0x80

    .line 1506
    .line 1507
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1508
    .line 1509
    .line 1510
    :cond_42
    :goto_d
    move-object/from16 v10, p0

    .line 1511
    .line 1512
    goto/16 :goto_0

    .line 1513
    .line 1514
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1515
    .line 1516
    const-string v1, "Unknown option: "

    .line 1517
    .line 1518
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v1

    .line 1522
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    throw v0

    .line 1526
    :cond_44
    move-object/from16 v10, p0

    .line 1527
    .line 1528
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    .line 1530
    .line 1531
    if-eq v5, v1, :cond_45

    .line 1532
    .line 1533
    move v0, v9

    .line 1534
    goto :goto_e

    .line 1535
    :cond_45
    const/4 v0, 0x0

    .line 1536
    :goto_e
    if-eqz v0, :cond_46

    .line 1537
    .line 1538
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1539
    .line 1540
    .line 1541
    goto :goto_f

    .line 1542
    :cond_46
    move-object v1, v5

    .line 1543
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v2

    .line 1547
    const-string v3, "android.intent.category.LAUNCHER"

    .line 1548
    .line 1549
    const-string v5, "android.intent.action.MAIN"

    .line 1550
    .line 1551
    if-nez v2, :cond_48

    .line 1552
    .line 1553
    if-eqz v0, :cond_47

    .line 1554
    .line 1555
    new-instance v0, Landroid/content/Intent;

    .line 1556
    .line 1557
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    .line 1562
    .line 1563
    goto :goto_10

    .line 1564
    :cond_47
    const/4 v0, 0x0

    .line 1565
    goto :goto_10

    .line 1566
    :cond_48
    const/16 v0, 0x3a

    .line 1567
    .line 1568
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 1569
    .line 1570
    .line 1571
    move-result v0

    .line 1572
    if-ltz v0, :cond_49

    .line 1573
    .line 1574
    invoke-static {v2, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    goto :goto_10

    .line 1579
    :cond_49
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    .line 1580
    .line 1581
    .line 1582
    move-result v0

    .line 1583
    if-ltz v0, :cond_4a

    .line 1584
    .line 1585
    new-instance v0, Landroid/content/Intent;

    .line 1586
    .line 1587
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    .line 1592
    .line 1593
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v2

    .line 1597
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1598
    .line 1599
    .line 1600
    goto :goto_10

    .line 1601
    :cond_4a
    new-instance v0, Landroid/content/Intent;

    .line 1602
    .line 1603
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    .line 1611
    .line 1612
    :goto_10
    if-eqz v0, :cond_4e

    .line 1613
    .line 1614
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v2

    .line 1618
    const/4 v3, 0x0

    .line 1619
    invoke-virtual {v1, v3}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1620
    .line 1621
    .line 1622
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v4

    .line 1626
    invoke-virtual {v0, v3}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v3

    .line 1633
    if-eqz v3, :cond_4b

    .line 1634
    .line 1635
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v3

    .line 1639
    if-eqz v3, :cond_4b

    .line 1640
    .line 1641
    new-instance v3, Ljava/util/HashSet;

    .line 1642
    .line 1643
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v5

    .line 1647
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v3

    .line 1654
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1655
    .line 1656
    .line 1657
    move-result v5

    .line 1658
    if-eqz v5, :cond_4b

    .line 1659
    .line 1660
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v5

    .line 1664
    check-cast v5, Ljava/lang/String;

    .line 1665
    .line 1666
    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 1667
    .line 1668
    .line 1669
    goto :goto_11

    .line 1670
    :cond_4b
    const/16 v3, 0x48

    .line 1671
    .line 1672
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1673
    .line 1674
    .line 1675
    if-nez v2, :cond_4c

    .line 1676
    .line 1677
    goto :goto_12

    .line 1678
    :cond_4c
    if-eqz v4, :cond_4d

    .line 1679
    .line 1680
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1681
    .line 1682
    .line 1683
    :goto_12
    move-object v2, v4

    .line 1684
    :cond_4d
    invoke-virtual {v1, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1685
    .line 1686
    .line 1687
    move v4, v9

    .line 1688
    :cond_4e
    if-eqz v4, :cond_4f

    .line 1689
    .line 1690
    return-object v1

    .line 1691
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1692
    .line 1693
    const-string v1, "No intent supplied"

    .line 1694
    .line 1695
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1696
    .line 1697
    .line 1698
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7ffea226 -> :sswitch_33
        -0x7e40bfdd -> :sswitch_32
        -0x61305b9a -> :sswitch_31
        -0x4aae571d -> :sswitch_30
        -0x3fbe74d1 -> :sswitch_2f
        -0x328eb9b9 -> :sswitch_2e
        -0x31a9343b -> :sswitch_2d
        -0x2f378b56 -> :sswitch_2c
        -0x2e804d8f -> :sswitch_2b
        0x5d4 -> :sswitch_2a
        0x5d6 -> :sswitch_29
        0x5d7 -> :sswitch_28
        0x5d8 -> :sswitch_27
        0x5d9 -> :sswitch_26
        0x5e1 -> :sswitch_25
        0x5e3 -> :sswitch_24
        0x5e7 -> :sswitch_23
        0x152a41 -> :sswitch_22
        0x152a44 -> :sswitch_21
        0x152a47 -> :sswitch_20
        0x152a4e -> :sswitch_1f
        0x152a50 -> :sswitch_1e
        0x152a55 -> :sswitch_1d
        0x2901df0 -> :sswitch_1c
        0x2901e40 -> :sswitch_1b
        0x2901e9d -> :sswitch_1a
        0x2901efa -> :sswitch_19
        0x2901fd3 -> :sswitch_18
        0x2901fe0 -> :sswitch_17
        0x41eb1c6 -> :sswitch_16
        0x54a2ed6 -> :sswitch_15
        0xb611ab9 -> :sswitch_14
        0xe1b6a37 -> :sswitch_13
        0x1998b94a -> :sswitch_12
        0x1a0135d9 -> :sswitch_11
        0x1a23762e -> :sswitch_10
        0x1f699c40 -> :sswitch_f
        0x22987a20 -> :sswitch_e
        0x2caeb912 -> :sswitch_d
        0x2e337d40 -> :sswitch_c
        0x47f6597f -> :sswitch_b
        0x4f73aa2c -> :sswitch_a
        0x4f73b56f -> :sswitch_9
        0x4f73c0b2 -> :sswitch_8
        0x4f73daf9 -> :sswitch_7
        0x50b32d5c -> :sswitch_6
        0x5359f12e -> :sswitch_5
        0x569e74a2 -> :sswitch_4
        0x62838641 -> :sswitch_3
        0x67da9e16 -> :sswitch_2
        0x69396684 -> :sswitch_1
        0x6c467a2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_26
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .locals 9

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/internal/R$styleable;->Intent:[I

    .line 7
    .line 8
    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    :goto_0
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x4

    .line 47
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    new-instance v8, Landroid/content/ComponentName;

    .line 56
    .line 57
    invoke-direct {v8, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eq v5, v4, :cond_9

    .line 75
    .line 76
    if-ne v5, v2, :cond_3

    .line 77
    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-le v7, v1, :cond_9

    .line 83
    .line 84
    :cond_3
    if-eq v5, v2, :cond_2

    .line 85
    .line 86
    if-ne v5, v6, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v7, "categories"

    .line 94
    .line 95
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_6

    .line 100
    .line 101
    sget-object v5, Lcom/android/internal/R$styleable;->IntentCategory:[I

    .line 102
    .line 103
    invoke-virtual {p0, p2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    .line 113
    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const-string v7, "extra"

    .line 124
    .line 125
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_8

    .line 130
    .line 131
    iget-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 132
    .line 133
    if-nez v5, :cond_7

    .line 134
    .line 135
    new-instance v5, Landroid/os/Bundle;

    .line 136
    .line 137
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 141
    .line 142
    :cond_7
    iget-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-virtual {p0, v7, p2, v5}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    return-object v0
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "android-app:"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 10
    and-int/lit8 v4, p1, 0x3

    .line 11
    .line 12
    const-string/jumbo v5, "intent:"

    .line 13
    .line 14
    .line 15
    const-string v6, "android.intent.action.VIEW"

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 30
    .line 31
    .line 32
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :try_start_3
    new-instance v3, Ljava/net/URISyntaxException;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v3, v1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v3

    .line 51
    :cond_0
    const-string v4, "#"

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    const/4 v7, -0x1

    .line 58
    if-ne v4, v7, :cond_1

    .line 59
    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    .line 63
    .line 64
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_1
    const-string v8, "#Intent;"

    .line 73
    .line 74
    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_3

    .line 79
    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_2
    move v4, v7

    .line 88
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .line 89
    .line 90
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-ltz v4, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 99
    add-int/lit8 v4, v4, 0x8

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move-object v7, v1

    .line 103
    :goto_0
    move v9, v2

    .line 104
    move v11, v9

    .line 105
    move-object v8, v3

    .line 106
    const/4 v10, 0x0

    .line 107
    :goto_1
    const-string v12, ":"

    .line 108
    .line 109
    const-string v13, ""

    .line 110
    .line 111
    if-ltz v4, :cond_1c

    .line 112
    .line 113
    :try_start_5
    const-string v14, "end"

    .line 114
    .line 115
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-nez v14, :cond_1c

    .line 120
    .line 121
    const/16 v14, 0x3d

    .line 122
    .line 123
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->indexOf(II)I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-gez v14, :cond_5

    .line 128
    .line 129
    add-int/lit8 v14, v4, -0x1

    .line 130
    .line 131
    :cond_5
    const/16 v15, 0x3b

    .line 132
    .line 133
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->indexOf(II)I

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    if-ge v14, v15, :cond_6

    .line 138
    .line 139
    add-int/lit8 v13, v14, 0x1

    .line 140
    .line 141
    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    :cond_6
    const-string v6, "action="

    .line 150
    .line 151
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    const/16 v16, 0x1

    .line 156
    .line 157
    if-eqz v6, :cond_7

    .line 158
    .line 159
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    if-nez v9, :cond_1a

    .line 163
    .line 164
    move/from16 v11, v16

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_7
    const-string v6, "category="

    .line 169
    .line 170
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_8

    .line 175
    .line 176
    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_8
    const-string/jumbo v6, "type="

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_9

    .line 189
    .line 190
    iput-object v13, v8, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_9
    const-string/jumbo v6, "launchFlags="

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_a

    .line 202
    .line 203
    invoke-static {v13}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    iput v6, v8, Landroid/content/Intent;->mFlags:I

    .line 212
    .line 213
    and-int/lit8 v12, p1, 0x4

    .line 214
    .line 215
    if-nez v12, :cond_1a

    .line 216
    .line 217
    and-int/lit16 v6, v6, -0xc4

    .line 218
    .line 219
    iput v6, v8, Landroid/content/Intent;->mFlags:I

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :cond_a
    const-string/jumbo v6, "package="

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_b

    .line 231
    .line 232
    iput-object v13, v8, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :cond_b
    const-string v6, "component="

    .line 237
    .line 238
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_c

    .line 243
    .line 244
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    iput-object v6, v8, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :cond_c
    const-string/jumbo v6, "scheme="

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_e

    .line 260
    .line 261
    if-eqz v9, :cond_d

    .line 262
    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    iput-object v6, v8, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :cond_d
    move-object v10, v13

    .line 287
    goto/16 :goto_2

    .line 288
    .line 289
    :cond_e
    const-string/jumbo v6, "sourceBounds="

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_f

    .line 297
    .line 298
    invoke-static {v13}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    iput-object v6, v8, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_f
    add-int/lit8 v6, v4, 0x3

    .line 307
    .line 308
    if-ne v15, v6, :cond_10

    .line 309
    .line 310
    const-string v6, "SEL"

    .line 311
    .line 312
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-eqz v6, :cond_10

    .line 317
    .line 318
    new-instance v8, Landroid/content/Intent;

    .line 319
    .line 320
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 321
    .line 322
    .line 323
    move/from16 v9, v16

    .line 324
    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :cond_10
    add-int/lit8 v6, v4, 0x2

    .line 328
    .line 329
    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    iget-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 338
    .line 339
    if-nez v12, :cond_11

    .line 340
    .line 341
    new-instance v12, Landroid/os/Bundle;

    .line 342
    .line 343
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 344
    .line 345
    .line 346
    iput-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 347
    .line 348
    :cond_11
    iget-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 349
    .line 350
    const-string v14, "S."

    .line 351
    .line 352
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 353
    .line 354
    .line 355
    move-result v14

    .line 356
    if-eqz v14, :cond_12

    .line 357
    .line 358
    invoke-virtual {v12, v6, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :cond_12
    const-string v14, "B."

    .line 364
    .line 365
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    if-eqz v14, :cond_13

    .line 370
    .line 371
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v13

    .line 375
    invoke-virtual {v12, v6, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_2

    .line 379
    .line 380
    :cond_13
    const-string v14, "b."

    .line 381
    .line 382
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 383
    .line 384
    .line 385
    move-result v14

    .line 386
    if-eqz v14, :cond_14

    .line 387
    .line 388
    invoke-static {v13}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 389
    .line 390
    .line 391
    move-result v13

    .line 392
    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 393
    .line 394
    .line 395
    goto :goto_2

    .line 396
    :cond_14
    const-string v14, "c."

    .line 397
    .line 398
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 399
    .line 400
    .line 401
    move-result v14

    .line 402
    if-eqz v14, :cond_15

    .line 403
    .line 404
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 409
    .line 410
    .line 411
    goto :goto_2

    .line 412
    :cond_15
    const-string v14, "d."

    .line 413
    .line 414
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 415
    .line 416
    .line 417
    move-result v14

    .line 418
    if-eqz v14, :cond_16

    .line 419
    .line 420
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 421
    .line 422
    .line 423
    move-result-wide v13

    .line 424
    invoke-virtual {v12, v6, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 425
    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_16
    const-string v14, "f."

    .line 429
    .line 430
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 431
    .line 432
    .line 433
    move-result v14

    .line 434
    if-eqz v14, :cond_17

    .line 435
    .line 436
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 437
    .line 438
    .line 439
    move-result v13

    .line 440
    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 441
    .line 442
    .line 443
    goto :goto_2

    .line 444
    :cond_17
    const-string/jumbo v14, "i."

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 448
    .line 449
    .line 450
    move-result v14

    .line 451
    if-eqz v14, :cond_18

    .line 452
    .line 453
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    invoke-virtual {v12, v6, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 458
    .line 459
    .line 460
    goto :goto_2

    .line 461
    :cond_18
    const-string/jumbo v14, "l."

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 465
    .line 466
    .line 467
    move-result v14

    .line 468
    if-eqz v14, :cond_19

    .line 469
    .line 470
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 471
    .line 472
    .line 473
    move-result-wide v13

    .line 474
    invoke-virtual {v12, v6, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 475
    .line 476
    .line 477
    goto :goto_2

    .line 478
    :cond_19
    const-string/jumbo v14, "s."

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 482
    .line 483
    .line 484
    move-result v14

    .line 485
    if-eqz v14, :cond_1b

    .line 486
    .line 487
    invoke-static {v13}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 488
    .line 489
    .line 490
    move-result v13

    .line 491
    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 492
    .line 493
    .line 494
    :cond_1a
    :goto_2
    add-int/lit8 v4, v15, 0x1

    .line 495
    .line 496
    goto/16 :goto_1

    .line 497
    .line 498
    :cond_1b
    new-instance v0, Ljava/net/URISyntaxException;

    .line 499
    .line 500
    const-string/jumbo v2, "unknown EXTRA type"

    .line 501
    .line 502
    .line 503
    invoke-direct {v0, v1, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    .line 505
    .line 506
    throw v0

    .line 507
    :cond_1c
    if-eqz v9, :cond_1d

    .line 508
    .line 509
    iget-object v2, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 510
    .line 511
    if-nez v2, :cond_1e

    .line 512
    .line 513
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 514
    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_1d
    move-object v3, v8

    .line 518
    :cond_1e
    :goto_3
    if-eqz v7, :cond_28

    .line 519
    .line 520
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    if-eqz v2, :cond_1f

    .line 525
    .line 526
    const/4 v0, 0x7

    .line 527
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    if-eqz v10, :cond_27

    .line 532
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const/16 v2, 0x3a

    .line 542
    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    goto/16 :goto_8

    .line 554
    .line 555
    :cond_1f
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_27

    .line 560
    .line 561
    const/16 v0, 0xc

    .line 562
    .line 563
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    const/16 v2, 0x2f

    .line 568
    .line 569
    if-ne v0, v2, :cond_26

    .line 570
    .line 571
    const/16 v0, 0xd

    .line 572
    .line 573
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-ne v0, v2, :cond_26

    .line 578
    .line 579
    const/16 v0, 0xe

    .line 580
    .line 581
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 582
    .line 583
    .line 584
    move-result v5
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    .line 585
    const-string v6, "android.intent.action.MAIN"

    .line 586
    .line 587
    if-gez v5, :cond_20

    .line 588
    .line 589
    :try_start_6
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    iput-object v0, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 594
    .line 595
    if-nez v11, :cond_26

    .line 596
    .line 597
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    .line 599
    .line 600
    goto/16 :goto_7

    .line 601
    .line 602
    :cond_20
    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    iput-object v0, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 607
    .line 608
    add-int/lit8 v0, v5, 0x1

    .line 609
    .line 610
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 611
    .line 612
    .line 613
    move-result v8

    .line 614
    if-ge v0, v8, :cond_23

    .line 615
    .line 616
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    if-ltz v8, :cond_22

    .line 621
    .line 622
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v10

    .line 626
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    if-ge v8, v0, :cond_21

    .line 631
    .line 632
    add-int/lit8 v0, v8, 0x1

    .line 633
    .line 634
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 635
    .line 636
    .line 637
    move-result v5

    .line 638
    if-ltz v5, :cond_21

    .line 639
    .line 640
    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    goto :goto_5

    .line 645
    :cond_21
    move v5, v8

    .line 646
    goto :goto_4

    .line 647
    :cond_22
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v10

    .line 651
    :cond_23
    :goto_4
    const/4 v0, 0x0

    .line 652
    :goto_5
    if-nez v10, :cond_24

    .line 653
    .line 654
    if-nez v11, :cond_26

    .line 655
    .line 656
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    .line 658
    .line 659
    goto :goto_7

    .line 660
    :cond_24
    if-nez v0, :cond_25

    .line 661
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    :goto_6
    move-object v7, v0

    .line 678
    goto :goto_8

    .line 679
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v6, "://"

    .line 688
    .line 689
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    goto :goto_6

    .line 707
    :cond_26
    :goto_7
    move-object v7, v13

    .line 708
    :cond_27
    :goto_8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 709
    .line 710
    .line 711
    move-result v0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    .line 712
    if-lez v0, :cond_28

    .line 713
    .line 714
    :try_start_7
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    iput-object v0, v3, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    .line 719
    .line 720
    goto :goto_9

    .line 721
    :catch_1
    move-exception v0

    .line 722
    :try_start_8
    new-instance v2, Ljava/net/URISyntaxException;

    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-direct {v2, v1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    throw v2
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    .line 732
    :cond_28
    :goto_9
    return-object v3

    .line 733
    :catch_2
    move v2, v4

    .line 734
    :catch_3
    new-instance v0, Ljava/net/URISyntaxException;

    .line 735
    .line 736
    const-string/jumbo v3, "illegal Intent URI format"

    .line 737
    .line 738
    .line 739
    invoke-direct {v0, v1, v3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 740
    .line 741
    .line 742
    throw v0
.end method

.method public static printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 47

    .line 1
    const-string v0, "<INTENT> specifications include these flags and arguments:"

    .line 2
    .line 3
    const-string v1, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]"

    .line 4
    .line 5
    const-string v2, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    .line 6
    .line 7
    const-string v3, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    .line 8
    .line 9
    const-string v4, "    [--esn <EXTRA_KEY> ...]"

    .line 10
    .line 11
    const-string v5, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    .line 12
    .line 13
    const-string v6, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    .line 14
    .line 15
    const-string v7, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    .line 16
    .line 17
    const-string v8, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    .line 18
    .line 19
    const-string v9, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    .line 20
    .line 21
    const-string v10, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    .line 22
    .line 23
    const-string v11, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    .line 24
    .line 25
    const-string v12, "        (mutiple extras passed as Integer[])"

    .line 26
    .line 27
    const-string v13, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    .line 28
    .line 29
    const-string v14, "        (mutiple extras passed as List<Integer>)"

    .line 30
    .line 31
    const-string v15, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    .line 32
    .line 33
    const-string v16, "        (mutiple extras passed as Long[])"

    .line 34
    .line 35
    const-string v17, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    .line 36
    .line 37
    const-string v18, "        (mutiple extras passed as List<Long>)"

    .line 38
    .line 39
    const-string v19, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    .line 40
    .line 41
    const-string v20, "        (mutiple extras passed as Float[])"

    .line 42
    .line 43
    const-string v21, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    .line 44
    .line 45
    const-string v22, "        (mutiple extras passed as List<Float>)"

    .line 46
    .line 47
    const-string v23, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    .line 48
    .line 49
    const-string v24, "        (mutiple extras passed as String[]; to embed a comma into a string,"

    .line 50
    .line 51
    const-string v25, "         escape it using \"\\,\")"

    .line 52
    .line 53
    const-string v26, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    .line 54
    .line 55
    const-string v27, "        (mutiple extras passed as List<String>; to embed a comma into a string,"

    .line 56
    .line 57
    const-string v28, "         escape it using \"\\,\")"

    .line 58
    .line 59
    const-string v29, "    [-f <FLAG>]"

    .line 60
    .line 61
    const-string v30, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    .line 62
    .line 63
    const-string v31, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    .line 64
    .line 65
    const-string v32, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    .line 66
    .line 67
    const-string v33, "    [--include-stopped-packages]"

    .line 68
    .line 69
    const-string v34, "    [--activity-brought-to-front] [--activity-clear-top]"

    .line 70
    .line 71
    const-string v35, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    .line 72
    .line 73
    const-string v36, "    [--activity-launched-from-history] [--activity-multiple-task]"

    .line 74
    .line 75
    const-string v37, "    [--activity-no-animation] [--activity-no-history]"

    .line 76
    .line 77
    const-string v38, "    [--activity-no-user-action] [--activity-previous-is-top]"

    .line 78
    .line 79
    const-string v39, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    .line 80
    .line 81
    const-string v40, "    [--activity-single-top] [--activity-clear-task]"

    .line 82
    .line 83
    const-string v41, "    [--activity-task-on-home]"

    .line 84
    .line 85
    const-string v42, "    [--receiver-registered-only] [--receiver-replace-pending]"

    .line 86
    .line 87
    const-string v43, "    [--receiver-foreground] [--receiver-no-abort]"

    .line 88
    .line 89
    const-string v44, "    [--receiver-include-background]"

    .line 90
    .line 91
    const-string v45, "    [--selector]"

    .line 92
    .line 93
    const-string v46, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    .line 94
    .line 95
    filled-new-array/range {v0 .. v46}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_0
    const/16 v2, 0x2f

    .line 101
    .line 102
    if-ge v1, v2, :cond_0

    .line 103
    .line 104
    aget-object v2, v0, v1

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object/from16 v3, p0

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    sub-int/2addr v2, v3

    .line 16
    :goto_0
    const-string v4, "Intent"

    .line 17
    .line 18
    if-ltz v2, :cond_6

    .line 19
    .line 20
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string v7, "action"

    .line 29
    .line 30
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string v7, "data"

    .line 41
    .line 42
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string/jumbo v7, "type"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const-string v7, "component"

    .line 88
    .line 89
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_4

    .line 94
    .line 95
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const-string v7, "flags"

    .line 104
    .line 105
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    const/16 v4, 0x10

    .line 112
    .line 113
    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const-string/jumbo v6, "restoreFromXml: unknown attribute="

    .line 122
    .line 123
    .line 124
    invoke-static {v6, v5, v4}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eq v2, v3, :cond_9

    .line 135
    .line 136
    const/4 v5, 0x3

    .line 137
    if-ne v2, v5, :cond_7

    .line 138
    .line 139
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-ge v5, v1, :cond_9

    .line 144
    .line 145
    :cond_7
    const/4 v5, 0x2

    .line 146
    if-ne v2, v5, :cond_6

    .line 147
    .line 148
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v5, "categories"

    .line 153
    .line 154
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_8

    .line 159
    .line 160
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    sub-int/2addr v2, v3

    .line 165
    :goto_3
    if-ltz v2, :cond_6

    .line 166
    .line 167
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    add-int/lit8 v2, v2, -0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string/jumbo v6, "restoreFromXml: unknown name="

    .line 180
    .line 181
    .line 182
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_9
    return-object v0
.end method

.method private toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v0, 0x80

    .line 4
    .line 5
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, v6

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const-string p2, "SEL;"

    .line 22
    .line 23
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 27
    .line 28
    iget-object p2, v0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x0

    .line 38
    :goto_0
    move-object v2, p2

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v1, v6

    .line 42
    move v5, p5

    .line 43
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-lez p2, :cond_2

    .line 51
    .line 52
    const-string p2, "#Intent;"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, "end"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method private toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/16 p5, 0x3b

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "scheme="

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    const-string p2, "action="

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    move p2, p3

    .line 50
    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ge p2, v0, :cond_2

    .line 57
    .line 58
    const-string v0, "category="

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 85
    .line 86
    const-string v0, "/"

    .line 87
    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    const-string/jumbo p2, "type="

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p2, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_3
    iget p2, p0, Landroid/content/Intent;->mFlags:I

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    const-string/jumbo p2, "launchFlags=0x"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget p2, p0, Landroid/content/Intent;->mFlags:I

    .line 119
    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object p2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-nez p2, :cond_5

    .line 139
    .line 140
    const-string/jumbo p2, "package="

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object p2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 159
    .line 160
    if-eqz p2, :cond_6

    .line 161
    .line 162
    const-string p2, "component="

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p2, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_6
    iget-object p2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 184
    .line 185
    if-eqz p2, :cond_7

    .line 186
    .line 187
    const-string/jumbo p2, "sourceBounds="

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 194
    .line 195
    invoke-virtual {p2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    :cond_7
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 210
    .line 211
    if-eqz p2, :cond_12

    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    :cond_8
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result p4

    .line 225
    if-eqz p4, :cond_12

    .line 226
    .line 227
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p4

    .line 231
    check-cast p4, Ljava/lang/String;

    .line 232
    .line 233
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 234
    .line 235
    invoke-virtual {v0, p4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    instance-of v1, v0, Ljava/lang/String;

    .line 240
    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    const/16 v1, 0x53

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_9
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 247
    .line 248
    if-eqz v1, :cond_a

    .line 249
    .line 250
    const/16 v1, 0x42

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_a
    instance-of v1, v0, Ljava/lang/Byte;

    .line 254
    .line 255
    if-eqz v1, :cond_b

    .line 256
    .line 257
    const/16 v1, 0x62

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_b
    instance-of v1, v0, Ljava/lang/Character;

    .line 261
    .line 262
    if-eqz v1, :cond_c

    .line 263
    .line 264
    const/16 v1, 0x63

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_c
    instance-of v1, v0, Ljava/lang/Double;

    .line 268
    .line 269
    if-eqz v1, :cond_d

    .line 270
    .line 271
    const/16 v1, 0x64

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_d
    instance-of v1, v0, Ljava/lang/Float;

    .line 275
    .line 276
    if-eqz v1, :cond_e

    .line 277
    .line 278
    const/16 v1, 0x66

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_e
    instance-of v1, v0, Ljava/lang/Integer;

    .line 282
    .line 283
    if-eqz v1, :cond_f

    .line 284
    .line 285
    const/16 v1, 0x69

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_f
    instance-of v1, v0, Ljava/lang/Long;

    .line 289
    .line 290
    if-eqz v1, :cond_10

    .line 291
    .line 292
    const/16 v1, 0x6c

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_10
    instance-of v1, v0, Ljava/lang/Short;

    .line 296
    .line 297
    if-eqz v1, :cond_11

    .line 298
    .line 299
    const/16 v1, 0x73

    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_11
    move v1, p3

    .line 303
    :goto_2
    if-eqz v1, :cond_8

    .line 304
    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const/16 v1, 0x2e

    .line 309
    .line 310
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p4

    .line 317
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const/16 p4, 0x3d

    .line 321
    .line 322
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p4

    .line 329
    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p4

    .line 333
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    goto :goto_1

    .line 340
    :cond_12
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public canStripForHistory()Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public cloneFilter()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fillIn(Landroid/content/Intent;I)I
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    and-int/lit8 v3, p2, 0x1

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    iget-object v3, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 21
    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v4, :cond_5

    .line 27
    .line 28
    :cond_2
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 29
    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    :cond_3
    and-int/lit8 v4, p2, 0x2

    .line 37
    .line 38
    if-eqz v4, :cond_5

    .line 39
    .line 40
    :cond_4
    iput-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 41
    .line 42
    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 45
    .line 46
    or-int/lit8 v0, v0, 0x2

    .line 47
    .line 48
    move v2, v1

    .line 49
    :cond_5
    iget-object v3, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 50
    .line 51
    if-eqz v3, :cond_8

    .line 52
    .line 53
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 54
    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    and-int/lit8 v4, p2, 0x4

    .line 58
    .line 59
    if-eqz v4, :cond_8

    .line 60
    .line 61
    :cond_6
    if-eqz v3, :cond_7

    .line 62
    .line 63
    new-instance v4, Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-direct {v4, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 66
    .line 67
    .line 68
    iput-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 69
    .line 70
    :cond_7
    or-int/lit8 v0, v0, 0x4

    .line 71
    .line 72
    :cond_8
    iget-object v3, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v3, :cond_a

    .line 75
    .line 76
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v4, :cond_9

    .line 79
    .line 80
    and-int/lit8 v4, p2, 0x10

    .line 81
    .line 82
    if-eqz v4, :cond_a

    .line 83
    .line 84
    :cond_9
    iget-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 85
    .line 86
    if-nez v4, :cond_a

    .line 87
    .line 88
    iput-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 89
    .line 90
    or-int/lit8 v0, v0, 0x10

    .line 91
    .line 92
    :cond_a
    iget-object v3, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 93
    .line 94
    if-eqz v3, :cond_b

    .line 95
    .line 96
    and-int/lit8 v4, p2, 0x40

    .line 97
    .line 98
    if-eqz v4, :cond_b

    .line 99
    .line 100
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 101
    .line 102
    if-nez v4, :cond_b

    .line 103
    .line 104
    new-instance v4, Landroid/content/Intent;

    .line 105
    .line 106
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 107
    .line 108
    .line 109
    iput-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    iput-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 113
    .line 114
    or-int/lit8 v0, v0, 0x40

    .line 115
    .line 116
    :cond_b
    iget-object v3, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 117
    .line 118
    if-eqz v3, :cond_d

    .line 119
    .line 120
    iget-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 121
    .line 122
    if-eqz v4, :cond_c

    .line 123
    .line 124
    and-int/lit16 v4, p2, 0x80

    .line 125
    .line 126
    if-eqz v4, :cond_d

    .line 127
    .line 128
    :cond_c
    iput-object v3, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 129
    .line 130
    or-int/lit16 v0, v0, 0x80

    .line 131
    .line 132
    move v2, v1

    .line 133
    :cond_d
    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 134
    .line 135
    if-eqz v3, :cond_e

    .line 136
    .line 137
    and-int/lit8 v4, p2, 0x8

    .line 138
    .line 139
    if-eqz v4, :cond_e

    .line 140
    .line 141
    iput-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 142
    .line 143
    or-int/lit8 v0, v0, 0x8

    .line 144
    .line 145
    :cond_e
    iget v3, p0, Landroid/content/Intent;->mFlags:I

    .line 146
    .line 147
    iget v4, p1, Landroid/content/Intent;->mFlags:I

    .line 148
    .line 149
    or-int/2addr v3, v4

    .line 150
    iput v3, p0, Landroid/content/Intent;->mFlags:I

    .line 151
    .line 152
    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 153
    .line 154
    if-eqz v3, :cond_10

    .line 155
    .line 156
    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 157
    .line 158
    if-eqz v3, :cond_f

    .line 159
    .line 160
    and-int/lit8 p2, p2, 0x20

    .line 161
    .line 162
    if-eqz p2, :cond_10

    .line 163
    .line 164
    :cond_f
    new-instance p2, Landroid/graphics/Rect;

    .line 165
    .line 166
    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 167
    .line 168
    invoke-direct {p2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 169
    .line 170
    .line 171
    iput-object p2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 172
    .line 173
    or-int/lit8 v0, v0, 0x20

    .line 174
    .line 175
    :cond_10
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 176
    .line 177
    if-nez p2, :cond_11

    .line 178
    .line 179
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 180
    .line 181
    if-eqz p2, :cond_12

    .line 182
    .line 183
    new-instance p2, Landroid/os/Bundle;

    .line 184
    .line 185
    iget-object v2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 186
    .line 187
    invoke-direct {p2, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 188
    .line 189
    .line 190
    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_11
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 194
    .line 195
    if-eqz p2, :cond_12

    .line 196
    .line 197
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    .line 198
    .line 199
    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 200
    .line 201
    invoke-direct {p2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 202
    .line 203
    .line 204
    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 205
    .line 206
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catch_0
    move-exception p2

    .line 213
    const-string v1, "Intent"

    .line 214
    .line 215
    const-string v3, "Failure filling in extras"

    .line 216
    .line 217
    invoke-static {v1, v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .line 219
    .line 220
    :cond_12
    move v1, v2

    .line 221
    :goto_1
    if-eqz v1, :cond_13

    .line 222
    .line 223
    iget p2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 224
    .line 225
    const/4 v1, -0x2

    .line 226
    if-ne p2, v1, :cond_13

    .line 227
    .line 228
    iget p1, p1, Landroid/content/Intent;->mContentUserHint:I

    .line 229
    .line 230
    if-eq p1, v1, :cond_13

    .line 231
    .line 232
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 233
    .line 234
    :cond_13
    return v0
.end method

.method public filterEquals(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 17
    .line 18
    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    return v0

    .line 38
    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    return v0

    .line 49
    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 50
    .line 51
    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 52
    .line 53
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_5

    .line 58
    .line 59
    return v0

    .line 60
    :cond_5
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 61
    .line 62
    iget-object p1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_6

    .line 69
    .line 70
    return v0

    .line 71
    :cond_6
    const/4 p1, 0x1

    .line 72
    return p1
.end method

.method public filterHashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/2addr v1, v0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/2addr v1, v0

    .line 20
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v1, v0

    .line 29
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v1, v0

    .line 56
    :cond_5
    return v1
.end method

.method public fixUris(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "android.intent.action.SEND"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v2, "android.intent.extra.STREAM"

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/net/Uri;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ge v3, v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Landroid/net/Uri;

    .line 81
    .line 82
    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_5

    .line 103
    .line 104
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    :cond_5
    const-string/jumbo v0, "output"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroid/net/Uri;

    .line 128
    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    :goto_0
    return p2
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :goto_0
    return p2
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    :goto_0
    return p2
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUserHint()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    :goto_0
    return-wide p2
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    :goto_0
    return p2
.end method

.method public getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    :goto_0
    return p2
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getInternalExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLaunchToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    :goto_0
    return-wide p2
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSelector()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    :goto_0
    return p2
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasFileDescriptors()Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDocument()Z
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExcludingStopped()Z
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeStripForHistory()Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->canStripForHistory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public migrateExtraStreamToClipData()Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isParcelled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "android.intent.action.CHOOSER"

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    :try_start_0
    const-string v0, "android.intent.extra.INTENT"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/content/Intent;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    or-int/2addr v0, v1

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    :cond_2
    move v0, v1

    .line 49
    :goto_0
    :try_start_1
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    :goto_1
    array-length v3, v2

    .line 58
    if-ge v1, v3, :cond_4

    .line 59
    .line 60
    aget-object v3, v2, v1

    .line 61
    .line 62
    check-cast v3, Landroid/content/Intent;

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 67
    .line 68
    .line 69
    move-result v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    or-int/2addr v0, v3

    .line 71
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_1
    :cond_4
    return v0

    .line 75
    :cond_5
    const-string v2, "android.intent.action.SEND"

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const-string v3, "android.intent.extra.HTML_TEXT"

    .line 82
    .line 83
    const-string v4, "android.intent.extra.TEXT"

    .line 84
    .line 85
    const-string v5, "android.intent.extra.STREAM"

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v7, 0x1

    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/net/Uri;

    .line 96
    .line 97
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    if-nez v2, :cond_6

    .line 108
    .line 109
    if-eqz v3, :cond_10

    .line 110
    .line 111
    :cond_6
    new-instance v4, Landroid/content/ClipData;

    .line 112
    .line 113
    new-array v5, v7, [Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    aput-object v8, v5, v1

    .line 120
    .line 121
    new-instance v8, Landroid/content/ClipData$Item;

    .line 122
    .line 123
    invoke-direct {v8, v2, v3, v6, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v4, v6, v5, v8}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    .line 134
    .line 135
    return v7

    .line 136
    :cond_7
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_e

    .line 143
    .line 144
    :try_start_3
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    goto :goto_2

    .line 163
    :cond_8
    const/4 v4, -0x1

    .line 164
    :goto_2
    if-eqz v2, :cond_a

    .line 165
    .line 166
    if-ltz v4, :cond_9

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eq v4, v5, :cond_9

    .line 173
    .line 174
    return v1

    .line 175
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    :cond_a
    if-eqz v3, :cond_c

    .line 180
    .line 181
    if-ltz v4, :cond_b

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eq v4, v5, :cond_b

    .line 188
    .line 189
    return v1

    .line 190
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    :cond_c
    if-lez v4, :cond_10

    .line 195
    .line 196
    new-instance v5, Landroid/content/ClipData;

    .line 197
    .line 198
    new-array v8, v7, [Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    aput-object v9, v8, v1

    .line 205
    .line 206
    invoke-static {v0, v2, v3, v1}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-direct {v5, v6, v8, v9}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 211
    .line 212
    .line 213
    move v6, v7

    .line 214
    :goto_3
    if-ge v6, v4, :cond_d

    .line 215
    .line 216
    invoke-static {v0, v2, v3, v6}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v5, v8}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 221
    .line 222
    .line 223
    add-int/lit8 v6, v6, 0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_d
    invoke-virtual {p0, v5}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 230
    .line 231
    .line 232
    return v7

    .line 233
    :cond_e
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-nez v2, :cond_f

    .line 240
    .line 241
    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 242
    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_f

    .line 248
    .line 249
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    .line 250
    .line 251
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_10

    .line 256
    .line 257
    :cond_f
    :try_start_4
    const-string/jumbo v0, "output"

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    .line 265
    .line 266
    if-eqz v0, :cond_10

    .line 267
    .line 268
    const-string v1, ""

    .line 269
    .line 270
    invoke-static {v1, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 275
    .line 276
    .line 277
    const/4 v0, 0x3

    .line 278
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    return v7

    .line 282
    :catch_2
    :cond_10
    return v1
.end method

.method public prepareToEnterProcess()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/ClipData;->prepareToEnterProcess()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 20
    .line 21
    const/4 v1, -0x2

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v2, 0x3e8

    .line 33
    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 39
    .line 40
    .line 41
    iput v1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public prepareToLeaveProcess(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 3
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    return-void
.end method

.method public prepareToLeaveProcess(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 5
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    .line 9
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 12
    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 13
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v2, "Intent.getData()"

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_12

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p1, :cond_12

    .line 14
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_c
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_d
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_e
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 15
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 16
    :cond_12
    :pswitch_0
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 17
    iget-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 18
    iget-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    :cond_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cb4d57b -> :sswitch_e
        -0x6342a1e0 -> :sswitch_d
        -0x5a4113c8 -> :sswitch_c
        -0x4418042d -> :sswitch_b
        -0x39738481 -> :sswitch_a
        -0x254e496f -> :sswitch_9
        0xf54386e -> :sswitch_8
        0x187b165e -> :sswitch_7
        0x22b70ddb -> :sswitch_6
        0x32c98ebd -> :sswitch_5
        0x543610e0 -> :sswitch_4
        0x5559c83a -> :sswitch_3
        0x7277a986 -> :sswitch_2
        0x751aa7fa -> :sswitch_1
        0x79e65f52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareToLeaveUser(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1

    .line 7
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 1

    .line 22
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1

    .line 19
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    .line 13
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 1

    .line 16
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    .line 31
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 33
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    .line 28
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 30
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 25
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 27
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1

    .line 10
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 60
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 54
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 57
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    .line 34
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 48
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 42
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public putInternalExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/Uri;

    .line 15
    .line 16
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/graphics/Rect;

    .line 55
    .line 56
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 57
    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lez v0, :cond_1

    .line 63
    .line 64
    new-instance v1, Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 92
    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    new-instance v0, Landroid/content/Intent;

    .line 100
    .line 101
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 105
    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    new-instance v0, Landroid/content/ClipData;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 118
    .line 119
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    .line 136
    .line 137
    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public removeFlags(I)V
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-void
.end method

.method public removeUnsafeExtras()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/high16 v0, 0x10000

    .line 7
    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/content/ComponentName;

    .line 15
    .line 16
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 17
    .line 18
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x10000

    .line 11
    .line 12
    or-int/2addr p2, v0

    .line 13
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    return-object p1
.end method

.method public resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_4

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 26
    .line 27
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 28
    .line 29
    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 32
    .line 33
    and-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    .line 39
    .line 40
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 41
    .line 42
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 43
    .line 44
    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    move-object p2, v2

    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v1, "Multiple system services handle "

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ": "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p2, ", "

    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_4
    return-object p2
.end method

.method public resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v1, "content"

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "action"

    .line 7
    .line 8
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v2, "data"

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string/jumbo v2, "type"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const-string v2, "component"

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "flags"

    .line 56
    .line 57
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const-string v0, "categories"

    .line 65
    .line 66
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    add-int/lit8 v2, v2, -0x1

    .line 76
    .line 77
    :goto_0
    if-ltz v2, :cond_4

    .line 78
    .line 79
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/String;

    .line 86
    .line 87
    const-string v4, "category"

    .line 88
    .line 89
    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v2, v2, -0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    .line 97
    .line 98
    :cond_5
    return-void
.end method

.method public setAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setAllowFds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public setDefusable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .locals 0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public setLaunchToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Can\'t set package name when selector is already set"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eq p1, p0, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "Can\'t set selector when package name is already set"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Intent being set as a selector of itself"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "Intent { "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, v0

    .line 15
    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 16
    .line 17
    .line 18
    const-string v1, " }"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public toInsecureStringWithClip()Ljava/lang/String;
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "Intent { "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x1

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, v0

    .line 15
    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 16
    .line 17
    .line 18
    const-string v1, " }"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public toShortString(ZZZZ)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .locals 7

    .line 4
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "act="

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 6
    :goto_0
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/16 v4, 0x20

    if-eqz v3, :cond_4

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "cat=["

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 9
    :goto_1
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    if-lez v0, :cond_2

    const/16 v3, 0x2c

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "]"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 13
    :cond_4
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v3, :cond_7

    if-nez v0, :cond_5

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "dat="

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    .line 16
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 17
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 18
    :cond_7
    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v0, "typ="

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 21
    :cond_9
    iget v3, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v3, :cond_b

    if-nez v0, :cond_a

    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const-string v0, "flg=0x"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 24
    :cond_b
    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_d

    if-nez v0, :cond_c

    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v0, "pkg="

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_d
    if-eqz p3, :cond_f

    .line 27
    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_f

    if-nez v0, :cond_e

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    const-string v0, "cmp="

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 30
    :cond_f
    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_11

    if-nez v0, :cond_10

    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    const-string v0, "bnds="

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 33
    :cond_11
    iget-object v3, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v3, :cond_15

    if-nez v0, :cond_12

    .line 34
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    const-string v0, "clip={"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_13

    .line 36
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 37
    :cond_13
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 38
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z

    move-result v0

    xor-int/2addr v2, v0

    .line 39
    :cond_14
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, v2}, Landroid/content/ClipData;->toShortStringShortItems(Ljava/lang/StringBuilder;Z)V

    :goto_3
    const/16 v0, 0x7d

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_15
    if-eqz p4, :cond_17

    .line 41
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_17

    if-nez v0, :cond_16

    .line 42
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    const-string v0, "(has extras)"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_17
    move v1, v0

    .line 44
    :goto_4
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_19

    if-nez v1, :cond_18

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    const-string/jumbo v0, "u="

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    :cond_19
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_1a

    const-string v0, " sel="

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string/jumbo p2, "}"

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "Intent { "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, v0

    .line 15
    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 16
    .line 17
    .line 18
    const-string v1, " }"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri(I)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v0, 0x80

    .line 4
    .line 5
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    and-int/lit8 v0, p1, 0x2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const-string v0, "android-app://"

    .line 18
    .line 19
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x2f

    .line 38
    .line 39
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    const/16 v2, 0x3f

    .line 79
    .line 80
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    const/16 v2, 0x23

    .line 95
    .line 96
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_2
    const/4 v2, 0x0

    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    const-string v0, "android.intent.action.MAIN"

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const-string v0, "android.intent.action.VIEW"

    .line 109
    .line 110
    :goto_0
    move-object v3, v0

    .line 111
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v1, v6

    .line 115
    move v5, p1

    .line 116
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v1, "Intent must include an explicit package name to build an android-app: "

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 145
    .line 146
    const-string/jumbo v2, "intent:"

    .line 147
    .line 148
    .line 149
    if-eqz v0, :cond_b

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    and-int/lit8 v3, p1, 0x1

    .line 156
    .line 157
    if-eqz v3, :cond_a

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    const/4 v4, 0x0

    .line 164
    move v5, v4

    .line 165
    :goto_1
    if-ge v5, v3, :cond_a

    .line 166
    .line 167
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    const/16 v8, 0x61

    .line 172
    .line 173
    if-lt v7, v8, :cond_6

    .line 174
    .line 175
    const/16 v8, 0x7a

    .line 176
    .line 177
    if-le v7, v8, :cond_9

    .line 178
    .line 179
    :cond_6
    const/16 v8, 0x41

    .line 180
    .line 181
    if-lt v7, v8, :cond_7

    .line 182
    .line 183
    const/16 v8, 0x5a

    .line 184
    .line 185
    if-le v7, v8, :cond_9

    .line 186
    .line 187
    :cond_7
    const/16 v8, 0x2e

    .line 188
    .line 189
    if-eq v7, v8, :cond_9

    .line 190
    .line 191
    const/16 v8, 0x2d

    .line 192
    .line 193
    if-ne v7, v8, :cond_8

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_8
    const/16 v3, 0x3a

    .line 197
    .line 198
    if-ne v7, v3, :cond_a

    .line 199
    .line 200
    if-lez v5, :cond_a

    .line 201
    .line 202
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    add-int/lit8 v5, v5, 0x1

    .line 210
    .line 211
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    goto :goto_3

    .line 216
    :cond_9
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_a
    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_b
    and-int/lit8 v0, p1, 0x1

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    :cond_c
    :goto_4
    move-object v2, v1

    .line 231
    const-string v3, "android.intent.action.VIEW"

    .line 232
    .line 233
    const/4 v4, 0x0

    .line 234
    move-object v0, p0

    .line 235
    move-object v1, v6

    .line 236
    move v5, p1

    .line 237
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    move v3, v2

    .line 61
    :goto_1
    if-ge v3, v0, :cond_2

    .line 62
    .line 63
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 88
    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 104
    .line 105
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    .line 111
    .line 112
    :goto_3
    iget p2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Landroid/content/Intent;->mInternalExtras:Landroid/os/Bundle;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
