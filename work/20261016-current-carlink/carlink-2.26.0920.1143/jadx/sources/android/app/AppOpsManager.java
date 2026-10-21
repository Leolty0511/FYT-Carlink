package android.app;

import android.Manifest;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.security.keystore.KeyProperties;
import android.util.ArrayMap;
import com.android.internal.app.IAppOpsCallback;
import com.android.internal.app.IAppOpsService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppOpsManager {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;
    public static final String OPSTR_ACTIVATE_VPN = "android:activate_vpn";
    public static final String OPSTR_ADD_VOICEMAIL = "android:add_voicemail";
    public static final String OPSTR_ANSWER_PHONE_CALLS = "android:answer_phone_calls";
    public static final String OPSTR_BODY_SENSORS = "android:body_sensors";
    public static final String OPSTR_CALL_PHONE = "android:call_phone";
    public static final String OPSTR_CAMERA = "android:camera";
    public static final String OPSTR_COARSE_LOCATION = "android:coarse_location";
    public static final String OPSTR_FINE_LOCATION = "android:fine_location";
    public static final String OPSTR_GET_ACCOUNTS = "android:get_accounts";
    public static final String OPSTR_GET_USAGE_STATS = "android:get_usage_stats";
    public static final String OPSTR_INSTANT_APP_START_FOREGROUND = "android:instant_app_start_foreground";
    public static final String OPSTR_MOCK_LOCATION = "android:mock_location";
    public static final String OPSTR_MONITOR_HIGH_POWER_LOCATION = "android:monitor_location_high_power";
    public static final String OPSTR_MONITOR_LOCATION = "android:monitor_location";
    public static final String OPSTR_PICTURE_IN_PICTURE = "android:picture_in_picture";
    public static final String OPSTR_POST_AUTORUN = "android:post_autorun";
    public static final String OPSTR_PROCESS_OUTGOING_CALLS = "android:process_outgoing_calls";
    public static final String OPSTR_READ_CALENDAR = "android:read_calendar";
    public static final String OPSTR_READ_CALL_LOG = "android:read_call_log";
    public static final String OPSTR_READ_CELL_BROADCASTS = "android:read_cell_broadcasts";
    public static final String OPSTR_READ_CONTACTS = "android:read_contacts";
    public static final String OPSTR_READ_EXTERNAL_STORAGE = "android:read_external_storage";
    public static final String OPSTR_READ_PHONE_NUMBERS = "android:read_phone_numbers";
    public static final String OPSTR_READ_PHONE_STATE = "android:read_phone_state";
    public static final String OPSTR_READ_SMS = "android:read_sms";
    public static final String OPSTR_RECEIVE_MMS = "android:receive_mms";
    public static final String OPSTR_RECEIVE_SMS = "android:receive_sms";
    public static final String OPSTR_RECEIVE_WAP_PUSH = "android:receive_wap_push";
    public static final String OPSTR_RECORD_AUDIO = "android:record_audio";
    public static final String OPSTR_SEND_SMS = "android:send_sms";
    public static final String OPSTR_SYSTEM_ALERT_WINDOW = "android:system_alert_window";
    public static final String OPSTR_USE_FINGERPRINT = "android:use_fingerprint";
    public static final String OPSTR_USE_SIP = "android:use_sip";
    public static final String OPSTR_WRITE_CALENDAR = "android:write_calendar";
    public static final String OPSTR_WRITE_CALL_LOG = "android:write_call_log";
    public static final String OPSTR_WRITE_CONTACTS = "android:write_contacts";
    public static final String OPSTR_WRITE_EXTERNAL_STORAGE = "android:write_external_storage";
    public static final String OPSTR_WRITE_SETTINGS = "android:write_settings";
    public static final int OP_ACCESS_NOTIFICATIONS = 25;
    public static final int OP_ACTIVATE_VPN = 47;
    public static final int OP_ADD_VOICEMAIL = 52;
    public static final int OP_ANSWER_PHONE_CALLS = 69;
    public static final int OP_ASSIST_SCREENSHOT = 50;
    public static final int OP_ASSIST_STRUCTURE = 49;
    public static final int OP_AUDIO_ACCESSIBILITY_VOLUME = 64;
    public static final int OP_AUDIO_ALARM_VOLUME = 37;
    public static final int OP_AUDIO_BLUETOOTH_VOLUME = 39;
    public static final int OP_AUDIO_MASTER_VOLUME = 33;
    public static final int OP_AUDIO_MEDIA_VOLUME = 36;
    public static final int OP_AUDIO_NOTIFICATION_VOLUME = 38;
    public static final int OP_AUDIO_RING_VOLUME = 35;
    public static final int OP_AUDIO_VOICE_VOLUME = 34;
    public static final int OP_BODY_SENSORS = 56;
    public static final int OP_CALL_PHONE = 13;
    public static final int OP_CAMERA = 26;
    public static final int OP_COARSE_LOCATION = 0;
    public static final int OP_FINE_LOCATION = 1;
    public static final int OP_GET_ACCOUNTS = 62;
    public static final int OP_GET_USAGE_STATS = 43;
    public static final int OP_GPS = 2;
    public static final int OP_INSTANT_APP_START_FOREGROUND = 68;
    public static final int OP_MOCK_LOCATION = 58;
    public static final int OP_MONITOR_HIGH_POWER_LOCATION = 42;
    public static final int OP_MONITOR_LOCATION = 41;
    public static final int OP_MUTE_MICROPHONE = 44;
    public static final int OP_NEIGHBORING_CELLS = 12;
    public static final int OP_NONE = -1;
    public static final int OP_PICTURE_IN_PICTURE = 67;
    public static final int OP_PLAY_AUDIO = 28;
    public static final int OP_POST_AUTORUN = 70;
    public static final int OP_POST_NOTIFICATION = 11;
    public static final int OP_PROCESS_OUTGOING_CALLS = 54;
    public static final int OP_PROJECT_MEDIA = 46;
    public static final int OP_READ_CALENDAR = 8;
    public static final int OP_READ_CALL_LOG = 6;
    public static final int OP_READ_CELL_BROADCASTS = 57;
    public static final int OP_READ_CLIPBOARD = 29;
    public static final int OP_READ_CONTACTS = 4;
    public static final int OP_READ_EXTERNAL_STORAGE = 59;
    public static final int OP_READ_ICC_SMS = 21;
    public static final int OP_READ_PHONE_NUMBERS = 65;
    public static final int OP_READ_PHONE_STATE = 51;
    public static final int OP_READ_SMS = 14;
    public static final int OP_RECEIVE_EMERGECY_SMS = 17;
    public static final int OP_RECEIVE_MMS = 18;
    public static final int OP_RECEIVE_SMS = 16;
    public static final int OP_RECEIVE_WAP_PUSH = 19;
    public static final int OP_RECORD_AUDIO = 27;
    public static final int OP_REQUEST_INSTALL_PACKAGES = 66;
    public static final int OP_RUN_IN_BACKGROUND = 63;
    public static final int OP_SEND_SMS = 20;
    public static final int OP_SYSTEM_ALERT_WINDOW = 24;
    public static final int OP_TAKE_AUDIO_FOCUS = 32;
    public static final int OP_TAKE_MEDIA_BUTTONS = 31;
    public static final int OP_TOAST_WINDOW = 45;
    public static final int OP_TURN_SCREEN_ON = 61;
    public static final int OP_USE_FINGERPRINT = 55;
    public static final int OP_USE_SIP = 53;
    public static final int OP_VIBRATE = 3;
    public static final int OP_WAKE_LOCK = 40;
    public static final int OP_WIFI_SCAN = 10;
    public static final int OP_WRITE_CALENDAR = 9;
    public static final int OP_WRITE_CALL_LOG = 7;
    public static final int OP_WRITE_CLIPBOARD = 30;
    public static final int OP_WRITE_CONTACTS = 5;
    public static final int OP_WRITE_EXTERNAL_STORAGE = 60;
    public static final int OP_WRITE_ICC_SMS = 22;
    public static final int OP_WRITE_SETTINGS = 23;
    public static final int OP_WRITE_SMS = 15;
    public static final int OP_WRITE_WALLPAPER = 48;
    public static final int _NUM_OP = 71;
    private static boolean[] sOpAllowSystemRestrictionBypass;
    private static int[] sOpDefaultMode;
    private static boolean[] sOpDisableReset;
    private static String[] sOpNames;
    private static String[] sOpPerms;
    private static String[] sOpRestrictions;
    private static String[] sOpToString;
    private static int[] sOpToSwitch;
    static IBinder sToken;
    final Context mContext;
    final ArrayMap<OnOpChangedListener, IAppOpsCallback> mModeWatchers = new ArrayMap<>();
    final IAppOpsService mService;
    private static final int[] RUNTIME_AND_APPOP_PERMISSIONS_OPS = {4, 5, 62, 8, 9, 20, 16, 14, 19, 18, 57, 59, 60, 0, 1, 51, 65, 13, 6, 7, 52, 53, 54, 69, 27, 26, 56, 25, 24, 23, 66};
    private static HashMap<String, Integer> sOpStrToOp = new HashMap<>();
    private static HashMap<String, Integer> sPermToOp = new HashMap<>();

    public static class OnOpChangedInternalListener implements OnOpChangedListener {
        public void onOpChanged(int i2, String str) {
        }

        @Override // android.app.AppOpsManager.OnOpChangedListener
        public void onOpChanged(String str, String str2) {
        }
    }

    public interface OnOpChangedListener {
        void onOpChanged(String str, String str2);
    }

    static {
        sOpToSwitch = new int[]{0, 0, 0, 3, 4, 5, 6, 7, 8, 9, 0, 11, 0, 13, 14, 15, 16, 16, 18, 19, 20, 14, 15, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 0, 0, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69};
        sOpToString = new String[]{OPSTR_COARSE_LOCATION, OPSTR_FINE_LOCATION, null, null, OPSTR_READ_CONTACTS, OPSTR_WRITE_CONTACTS, OPSTR_READ_CALL_LOG, OPSTR_WRITE_CALL_LOG, OPSTR_READ_CALENDAR, OPSTR_WRITE_CALENDAR, null, null, null, OPSTR_CALL_PHONE, OPSTR_READ_SMS, null, OPSTR_RECEIVE_SMS, null, OPSTR_RECEIVE_MMS, OPSTR_RECEIVE_WAP_PUSH, OPSTR_SEND_SMS, null, null, OPSTR_WRITE_SETTINGS, OPSTR_SYSTEM_ALERT_WINDOW, null, OPSTR_CAMERA, OPSTR_RECORD_AUDIO, null, null, null, null, null, null, null, null, null, null, null, null, null, OPSTR_MONITOR_LOCATION, OPSTR_MONITOR_HIGH_POWER_LOCATION, OPSTR_GET_USAGE_STATS, null, null, null, OPSTR_ACTIVATE_VPN, null, null, null, OPSTR_READ_PHONE_STATE, OPSTR_ADD_VOICEMAIL, OPSTR_USE_SIP, OPSTR_PROCESS_OUTGOING_CALLS, OPSTR_USE_FINGERPRINT, OPSTR_BODY_SENSORS, OPSTR_READ_CELL_BROADCASTS, OPSTR_MOCK_LOCATION, OPSTR_READ_EXTERNAL_STORAGE, OPSTR_WRITE_EXTERNAL_STORAGE, null, OPSTR_GET_ACCOUNTS, null, null, OPSTR_READ_PHONE_NUMBERS, null, OPSTR_PICTURE_IN_PICTURE, OPSTR_INSTANT_APP_START_FOREGROUND, OPSTR_ANSWER_PHONE_CALLS};
        sOpNames = new String[]{"COARSE_LOCATION", "FINE_LOCATION", "GPS", "VIBRATE", "READ_CONTACTS", "WRITE_CONTACTS", "READ_CALL_LOG", "WRITE_CALL_LOG", "READ_CALENDAR", "WRITE_CALENDAR", "WIFI_SCAN", "POST_NOTIFICATION", "NEIGHBORING_CELLS", "CALL_PHONE", "READ_SMS", "WRITE_SMS", "RECEIVE_SMS", "RECEIVE_EMERGECY_SMS", "RECEIVE_MMS", "RECEIVE_WAP_PUSH", "SEND_SMS", "READ_ICC_SMS", "WRITE_ICC_SMS", "WRITE_SETTINGS", "SYSTEM_ALERT_WINDOW", "ACCESS_NOTIFICATIONS", "CAMERA", "RECORD_AUDIO", "PLAY_AUDIO", "READ_CLIPBOARD", "WRITE_CLIPBOARD", "TAKE_MEDIA_BUTTONS", "TAKE_AUDIO_FOCUS", "AUDIO_MASTER_VOLUME", "AUDIO_VOICE_VOLUME", "AUDIO_RING_VOLUME", "AUDIO_MEDIA_VOLUME", "AUDIO_ALARM_VOLUME", "AUDIO_NOTIFICATION_VOLUME", "AUDIO_BLUETOOTH_VOLUME", "WAKE_LOCK", "MONITOR_LOCATION", "MONITOR_HIGH_POWER_LOCATION", "GET_USAGE_STATS", "MUTE_MICROPHONE", "TOAST_WINDOW", "PROJECT_MEDIA", "ACTIVATE_VPN", "WRITE_WALLPAPER", "ASSIST_STRUCTURE", "ASSIST_SCREENSHOT", "OP_READ_PHONE_STATE", "ADD_VOICEMAIL", "USE_SIP", "PROCESS_OUTGOING_CALLS", "USE_FINGERPRINT", "BODY_SENSORS", "READ_CELL_BROADCASTS", "MOCK_LOCATION", "READ_EXTERNAL_STORAGE", "WRITE_EXTERNAL_STORAGE", "TURN_ON_SCREEN", "GET_ACCOUNTS", "RUN_IN_BACKGROUND", "AUDIO_ACCESSIBILITY_VOLUME", "READ_PHONE_NUMBERS", "REQUEST_INSTALL_PACKAGES", "PICTURE_IN_PICTURE", "INSTANT_APP_START_FOREGROUND", "ANSWER_PHONE_CALLS"};
        sOpPerms = new String[]{Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission.ACCESS_FINE_LOCATION, null, Manifest.permission.VIBRATE, Manifest.permission.READ_CONTACTS, Manifest.permission.WRITE_CONTACTS, Manifest.permission.READ_CALL_LOG, Manifest.permission.WRITE_CALL_LOG, Manifest.permission.READ_CALENDAR, Manifest.permission.WRITE_CALENDAR, Manifest.permission.ACCESS_WIFI_STATE, null, null, Manifest.permission.CALL_PHONE, Manifest.permission.READ_SMS, null, Manifest.permission.RECEIVE_SMS, Manifest.permission.RECEIVE_EMERGENCY_BROADCAST, Manifest.permission.RECEIVE_MMS, Manifest.permission.RECEIVE_WAP_PUSH, Manifest.permission.SEND_SMS, Manifest.permission.READ_SMS, null, Manifest.permission.WRITE_SETTINGS, Manifest.permission.SYSTEM_ALERT_WINDOW, Manifest.permission.ACCESS_NOTIFICATIONS, Manifest.permission.CAMERA, Manifest.permission.RECORD_AUDIO, null, null, null, null, null, null, null, null, null, null, null, null, Manifest.permission.WAKE_LOCK, null, null, Manifest.permission.PACKAGE_USAGE_STATS, null, null, null, null, null, null, null, Manifest.permission.READ_PHONE_STATE, Manifest.permission.ADD_VOICEMAIL, Manifest.permission.USE_SIP, Manifest.permission.PROCESS_OUTGOING_CALLS, Manifest.permission.USE_FINGERPRINT, Manifest.permission.BODY_SENSORS, Manifest.permission.READ_CELL_BROADCASTS, null, Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE, null, Manifest.permission.GET_ACCOUNTS, null, null, Manifest.permission.READ_PHONE_NUMBERS, Manifest.permission.REQUEST_INSTALL_PACKAGES, null, Manifest.permission.INSTANT_APP_FOREGROUND_SERVICE, Manifest.permission.ANSWER_PHONE_CALLS};
        sOpRestrictions = new String[]{UserManager.DISALLOW_SHARE_LOCATION, UserManager.DISALLOW_SHARE_LOCATION, UserManager.DISALLOW_SHARE_LOCATION, null, null, null, UserManager.DISALLOW_OUTGOING_CALLS, UserManager.DISALLOW_OUTGOING_CALLS, null, null, UserManager.DISALLOW_SHARE_LOCATION, null, null, null, UserManager.DISALLOW_SMS, UserManager.DISALLOW_SMS, UserManager.DISALLOW_SMS, null, UserManager.DISALLOW_SMS, null, UserManager.DISALLOW_SMS, UserManager.DISALLOW_SMS, UserManager.DISALLOW_SMS, null, UserManager.DISALLOW_CREATE_WINDOWS, null, UserManager.DISALLOW_CAMERA, UserManager.DISALLOW_RECORD_AUDIO, null, null, null, null, null, UserManager.DISALLOW_ADJUST_VOLUME, UserManager.DISALLOW_ADJUST_VOLUME, UserManager.DISALLOW_ADJUST_VOLUME, UserManager.DISALLOW_ADJUST_VOLUME, UserManager.DISALLOW_ADJUST_VOLUME, UserManager.DISALLOW_ADJUST_VOLUME, UserManager.DISALLOW_ADJUST_VOLUME, null, UserManager.DISALLOW_SHARE_LOCATION, UserManager.DISALLOW_SHARE_LOCATION, null, UserManager.DISALLOW_UNMUTE_MICROPHONE, UserManager.DISALLOW_CREATE_WINDOWS, null, null, UserManager.DISALLOW_WALLPAPER, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, UserManager.DISALLOW_ADJUST_VOLUME, null, null, null, null, null};
        sOpAllowSystemRestrictionBypass = new boolean[]{true, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
        sOpDefaultMode = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0};
        sOpDisableReset = new boolean[]{false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
        sOpToSwitch = AppOpsManagerWrapper.addItem(sOpToSwitch, 70);
        sOpToString = AppOpsManagerWrapper.addItem(sOpToString, (String) null);
        sOpNames = AppOpsManagerWrapper.addItem(sOpNames, "POST_AUTORUN");
        sOpPerms = AppOpsManagerWrapper.addItem(sOpPerms, (String) null);
        sOpRestrictions = AppOpsManagerWrapper.addItem(sOpRestrictions, (String) null);
        sOpAllowSystemRestrictionBypass = AppOpsManagerWrapper.addItem(sOpAllowSystemRestrictionBypass, false);
        sOpDefaultMode = AppOpsManagerWrapper.addItem(sOpDefaultMode, 0);
        boolean[] zArrAddItem = AppOpsManagerWrapper.addItem(sOpDisableReset, false);
        sOpDisableReset = zArrAddItem;
        if (sOpToSwitch.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpToSwitch length "), sOpToSwitch.length, " should be 71"));
        }
        if (sOpToString.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpToString length "), sOpToString.length, " should be 71"));
        }
        if (sOpNames.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpNames length "), sOpNames.length, " should be 71"));
        }
        if (sOpPerms.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpPerms length "), sOpPerms.length, " should be 71"));
        }
        if (sOpDefaultMode.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpDefaultMode length "), sOpDefaultMode.length, " should be 71"));
        }
        if (zArrAddItem.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpDisableReset length "), sOpDisableReset.length, " should be 71"));
        }
        if (sOpRestrictions.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpRestrictions length "), sOpRestrictions.length, " should be 71"));
        }
        if (sOpAllowSystemRestrictionBypass.length != 71) {
            throw new IllegalStateException(android.accessibilityservice.c.m(new StringBuilder("sOpAllowSYstemRestrictionsBypass length "), sOpRestrictions.length, " should be 71"));
        }
        for (int i2 = 0; i2 < 71; i2++) {
            String str = sOpToString[i2];
            if (str != null) {
                sOpStrToOp.put(str, Integer.valueOf(i2));
            }
        }
        for (int i3 : RUNTIME_AND_APPOP_PERMISSIONS_OPS) {
            String str2 = sOpPerms[i3];
            if (str2 != null) {
                sPermToOp.put(str2, Integer.valueOf(i3));
            }
        }
    }

    public AppOpsManager(Context context, IAppOpsService iAppOpsService) {
        this.mContext = context;
        this.mService = iAppOpsService;
    }

    private String buildSecurityExceptionMsg(int i2, int i3, String str) {
        return str + " from uid " + i3 + " not allowed to perform " + sOpNames[i2];
    }

    public static IBinder getToken(IAppOpsService iAppOpsService) {
        synchronized (AppOpsManager.class) {
            IBinder iBinder = sToken;
            if (iBinder != null) {
                return iBinder;
            }
            try {
                IBinder token = iAppOpsService.getToken(new Binder());
                sToken = token;
                return token;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public static boolean opAllowSystemBypassRestriction(int i2) {
        return sOpAllowSystemRestrictionBypass[i2];
    }

    public static boolean opAllowsReset(int i2) {
        return !sOpDisableReset[i2];
    }

    public static int opToDefaultMode(int i2) {
        return sOpDefaultMode[i2];
    }

    public static String opToName(int i2) {
        if (i2 == -1) {
            return KeyProperties.DIGEST_NONE;
        }
        String[] strArr = sOpNames;
        return i2 < strArr.length ? strArr[i2] : android.accessibilityservice.c.e("Unknown(", i2, ")");
    }

    public static String opToPermission(int i2) {
        return sOpPerms[i2];
    }

    public static String opToRestriction(int i2) {
        return sOpRestrictions[i2];
    }

    public static int opToSwitch(int i2) {
        return sOpToSwitch[i2];
    }

    public static String permissionToOp(String str) {
        Integer num = sPermToOp.get(str);
        if (num == null) {
            return null;
        }
        return sOpToString[num.intValue()];
    }

    public static int permissionToOpCode(String str) {
        Integer num = sPermToOp.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public static int strDebugOpToOp(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = sOpNames;
            if (i2 >= strArr.length) {
                throw new IllegalArgumentException(android.accessibilityservice.c.j("Unknown operation string: ", str));
            }
            if (strArr[i2].equals(str)) {
                return i2;
            }
            i2++;
        }
    }

    public static int strOpToOp(String str) {
        Integer num = sOpStrToOp.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.j("Unknown operation string: ", str));
    }

    public int checkAudioOp(int i2, int i3, int i4, String str) {
        try {
            int iCheckAudioOperation = this.mService.checkAudioOperation(i2, i3, i4, str);
            if (iCheckAudioOperation != 2) {
                return iCheckAudioOperation;
            }
            throw new SecurityException(buildSecurityExceptionMsg(i2, i4, str));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int checkAudioOpNoThrow(int i2, int i3, int i4, String str) {
        try {
            return this.mService.checkAudioOperation(i2, i3, i4, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int checkOp(String str, int i2, String str2) {
        return checkOp(strOpToOp(str), i2, str2);
    }

    public int checkOpNoThrow(String str, int i2, String str2) {
        return checkOpNoThrow(strOpToOp(str), i2, str2);
    }

    public void checkPackage(int i2, String str) {
        try {
            if (this.mService.checkPackage(i2, str) == 0) {
                return;
            }
            throw new SecurityException("Package " + str + " does not belong to " + i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void finishOp(String str, int i2, String str2) {
        finishOp(strOpToOp(str), i2, str2);
    }

    public List<PackageOps> getOpsForPackage(int i2, String str, int[] iArr) {
        try {
            return this.mService.getOpsForPackage(i2, str, iArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<PackageOps> getPackagesForOps(int[] iArr) {
        try {
            return this.mService.getPackagesForOps(iArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isOperationActive(int i2, int i3, String str) {
        try {
            return this.mService.isOperationActive(i2, i3, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int noteOp(String str, int i2, String str2) {
        return noteOp(strOpToOp(str), i2, str2);
    }

    public int noteOpNoThrow(String str, int i2, String str2) {
        return noteOpNoThrow(strOpToOp(str), i2, str2);
    }

    public int noteProxyOp(String str, String str2) {
        return noteProxyOp(strOpToOp(str), str2);
    }

    public int noteProxyOpNoThrow(String str, String str2) {
        return noteProxyOpNoThrow(strOpToOp(str), str2);
    }

    public void resetAllModes() {
        try {
            this.mService.resetAllModes(UserHandle.myUserId(), null);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setMode(int i2, int i3, String str, int i4) {
        try {
            this.mService.setMode(i2, i3, str, i4);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setRestriction(int i2, int i3, int i4, String[] strArr) {
        try {
            this.mService.setAudioRestriction(i2, i3, Binder.getCallingUid(), i4, strArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUidMode(int i2, int i3, int i4) {
        try {
            this.mService.setUidMode(i2, i3, i4);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUserRestriction(int i2, boolean z2, IBinder iBinder) {
        setUserRestriction(i2, z2, iBinder, null);
    }

    public void setUserRestrictionForUser(int i2, boolean z2, IBinder iBinder, String[] strArr, int i3) {
        try {
            this.mService.setUserRestriction(i2, z2, iBinder, i3, strArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int startOp(String str, int i2, String str2) {
        return startOp(strOpToOp(str), i2, str2);
    }

    public int startOpNoThrow(String str, int i2, String str2) {
        return startOpNoThrow(strOpToOp(str), i2, str2);
    }

    public void startWatchingMode(String str, String str2, OnOpChangedListener onOpChangedListener) {
        startWatchingMode(strOpToOp(str), str2, onOpChangedListener);
    }

    public void stopWatchingMode(OnOpChangedListener onOpChangedListener) {
        synchronized (this.mModeWatchers) {
            IAppOpsCallback iAppOpsCallback = this.mModeWatchers.get(onOpChangedListener);
            if (iAppOpsCallback != null) {
                try {
                    this.mService.stopWatchingMode(iAppOpsCallback);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
        }
    }

    public int checkOp(int i2, int i3, String str) {
        try {
            int iCheckOperation = this.mService.checkOperation(i2, i3, str);
            if (iCheckOperation != 2) {
                return iCheckOperation;
            }
            throw new SecurityException(buildSecurityExceptionMsg(i2, i3, str));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int checkOpNoThrow(int i2, int i3, String str) {
        try {
            return this.mService.checkOperation(i2, i3, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void finishOp(int i2, int i3, String str) {
        try {
            IAppOpsService iAppOpsService = this.mService;
            iAppOpsService.finishOperation(getToken(iAppOpsService), i2, i3, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int noteOp(int i2, int i3, String str) {
        try {
            int iNoteOperation = this.mService.noteOperation(i2, i3, str);
            if (iNoteOperation != 2) {
                return iNoteOperation;
            }
            throw new SecurityException(buildSecurityExceptionMsg(i2, i3, str));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int noteOpNoThrow(int i2, int i3, String str) {
        try {
            return this.mService.noteOperation(i2, i3, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int noteProxyOp(int i2, String str) {
        int iNoteProxyOpNoThrow = noteProxyOpNoThrow(i2, str);
        if (iNoteProxyOpNoThrow != 2) {
            return iNoteProxyOpNoThrow;
        }
        throw new SecurityException("Proxy package " + this.mContext.getOpPackageName() + " from uid " + Process.myUid() + " or calling package " + str + " from uid " + Binder.getCallingUid() + " not allowed to perform " + sOpNames[i2]);
    }

    public int noteProxyOpNoThrow(int i2, String str) {
        try {
            return this.mService.noteProxyOperation(i2, this.mContext.getOpPackageName(), Binder.getCallingUid(), str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUserRestriction(int i2, boolean z2, IBinder iBinder, String[] strArr) {
        setUserRestrictionForUser(i2, z2, iBinder, strArr, this.mContext.getUserId());
    }

    public int startOp(int i2, int i3, String str) {
        try {
            IAppOpsService iAppOpsService = this.mService;
            int iStartOperation = iAppOpsService.startOperation(getToken(iAppOpsService), i2, i3, str);
            if (iStartOperation != 2) {
                return iStartOperation;
            }
            throw new SecurityException(buildSecurityExceptionMsg(i2, i3, str));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int startOpNoThrow(int i2, int i3, String str) {
        try {
            IAppOpsService iAppOpsService = this.mService;
            return iAppOpsService.startOperation(getToken(iAppOpsService), i2, i3, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startWatchingMode(int i2, String str, final OnOpChangedListener onOpChangedListener) {
        synchronized (this.mModeWatchers) {
            IAppOpsCallback iAppOpsCallback = this.mModeWatchers.get(onOpChangedListener);
            if (iAppOpsCallback == null) {
                iAppOpsCallback = new IAppOpsCallback.Stub() { // from class: android.app.AppOpsManager.1
                    @Override // com.android.internal.app.IAppOpsCallback
                    public void opChanged(int i3, int i4, String str2) {
                        OnOpChangedListener onOpChangedListener2 = onOpChangedListener;
                        if (onOpChangedListener2 instanceof OnOpChangedInternalListener) {
                            ((OnOpChangedInternalListener) onOpChangedListener2).onOpChanged(i3, str2);
                        }
                        if (AppOpsManager.sOpToString[i3] != null) {
                            onOpChangedListener.onOpChanged(AppOpsManager.sOpToString[i3], str2);
                        }
                    }
                };
                this.mModeWatchers.put(onOpChangedListener, iAppOpsCallback);
            }
            try {
                this.mService.startWatchingMode(i2, str, iAppOpsCallback);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public void setUidMode(String str, int i2, int i3) {
        try {
            this.mService.setUidMode(strOpToOp(str), i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static class PackageOps implements Parcelable {
        public static final Parcelable.Creator<PackageOps> CREATOR = new Parcelable.Creator<PackageOps>() { // from class: android.app.AppOpsManager.PackageOps.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PackageOps createFromParcel(Parcel parcel) {
                return new PackageOps(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PackageOps[] newArray(int i2) {
                return new PackageOps[i2];
            }
        };
        private final List<OpEntry> mEntries;
        private final String mPackageName;
        private final int mUid;

        public PackageOps(String str, int i2, List<OpEntry> list) {
            this.mPackageName = str;
            this.mUid = i2;
            this.mEntries = list;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public List<OpEntry> getOps() {
            return this.mEntries;
        }

        public String getPackageName() {
            return this.mPackageName;
        }

        public int getUid() {
            return this.mUid;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mPackageName);
            parcel.writeInt(this.mUid);
            parcel.writeInt(this.mEntries.size());
            for (int i3 = 0; i3 < this.mEntries.size(); i3++) {
                this.mEntries.get(i3).writeToParcel(parcel, i2);
            }
        }

        public PackageOps(Parcel parcel) {
            this.mPackageName = parcel.readString();
            this.mUid = parcel.readInt();
            this.mEntries = new ArrayList();
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                this.mEntries.add(OpEntry.CREATOR.createFromParcel(parcel));
            }
        }
    }

    public void finishOp(int i2) {
        finishOp(i2, Process.myUid(), this.mContext.getOpPackageName());
    }

    public int noteOp(int i2) {
        return noteOp(i2, Process.myUid(), this.mContext.getOpPackageName());
    }

    public int startOp(int i2) {
        return startOp(i2, Process.myUid(), this.mContext.getOpPackageName());
    }

    public static class OpEntry implements Parcelable {
        public static final Parcelable.Creator<OpEntry> CREATOR = new Parcelable.Creator<OpEntry>() { // from class: android.app.AppOpsManager.OpEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OpEntry createFromParcel(Parcel parcel) {
                return new OpEntry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OpEntry[] newArray(int i2) {
                return new OpEntry[i2];
            }
        };
        private final int mDuration;
        private final int mMode;
        private final int mOp;
        private final String mProxyPackageName;
        private final int mProxyUid;
        private final long mRejectTime;
        private final long mTime;

        public OpEntry(int i2, int i3, long j2, long j3, int i4, int i5, String str) {
            this.mOp = i2;
            this.mMode = i3;
            this.mTime = j2;
            this.mRejectTime = j3;
            this.mDuration = i4;
            this.mProxyUid = i5;
            this.mProxyPackageName = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getDuration() {
            int i2 = this.mDuration;
            return i2 == -1 ? (int) (System.currentTimeMillis() - this.mTime) : i2;
        }

        public int getMode() {
            return this.mMode;
        }

        public int getOp() {
            return this.mOp;
        }

        public String getProxyPackageName() {
            return this.mProxyPackageName;
        }

        public int getProxyUid() {
            return this.mProxyUid;
        }

        public long getRejectTime() {
            return this.mRejectTime;
        }

        public long getTime() {
            return this.mTime;
        }

        public boolean isRunning() {
            return this.mDuration == -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mOp);
            parcel.writeInt(this.mMode);
            parcel.writeLong(this.mTime);
            parcel.writeLong(this.mRejectTime);
            parcel.writeInt(this.mDuration);
            parcel.writeInt(this.mProxyUid);
            parcel.writeString(this.mProxyPackageName);
        }

        public OpEntry(Parcel parcel) {
            this.mOp = parcel.readInt();
            this.mMode = parcel.readInt();
            this.mTime = parcel.readLong();
            this.mRejectTime = parcel.readLong();
            this.mDuration = parcel.readInt();
            this.mProxyUid = parcel.readInt();
            this.mProxyPackageName = parcel.readString();
        }
    }
}
