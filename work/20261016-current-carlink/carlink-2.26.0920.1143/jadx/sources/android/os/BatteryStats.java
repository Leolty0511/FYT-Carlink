package android.os;

import android.app.backup.FullBackup;
import android.app.job.JobParameters;
import android.app.m;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.media.MediaCodec;
import android.media.TtmlUtils;
import android.net.TrafficStats;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiEnterpriseConfig;
import android.provider.SettingsStringUtil;
import android.provider.Telephony;
import android.telephony.SignalStrength;
import android.text.format.DateFormat;
import android.util.ArrayMap;
import android.util.LongSparseArray;
import android.util.MutableBoolean;
import android.util.Pair;
import android.util.Printer;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.view.SurfaceControl;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.os.BatterySipper;
import com.android.internal.os.BatteryStatsHelper;
import com.android.internal.telephony.PhoneConstants;
import com.google.common.base.Ascii;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class BatteryStats implements Parcelable {
    private static final String AGGREGATED_WAKELOCK_DATA = "awl";
    public static final int AGGREGATED_WAKE_TYPE_PARTIAL = 20;
    private static final String APK_DATA = "apk";
    private static final String AUDIO_DATA = "aud";
    public static final int AUDIO_TURNED_ON = 15;
    private static final String BATTERY_DATA = "bt";
    private static final String BATTERY_DISCHARGE_DATA = "dc";
    private static final String BATTERY_LEVEL_DATA = "lv";
    private static final int BATTERY_STATS_CHECKIN_VERSION = 9;
    private static final String BLUETOOTH_CONTROLLER_DATA = "ble";
    private static final String BLUETOOTH_MISC_DATA = "blem";
    public static final int BLUETOOTH_SCAN_ON = 19;
    public static final int BLUETOOTH_UNOPTIMIZED_SCAN_ON = 21;
    private static final long BYTES_PER_GB = 1073741824;
    private static final long BYTES_PER_KB = 1024;
    private static final long BYTES_PER_MB = 1048576;
    private static final String CAMERA_DATA = "cam";
    public static final int CAMERA_TURNED_ON = 17;
    private static final String CHARGE_STEP_DATA = "csd";
    private static final String CHARGE_TIME_REMAIN_DATA = "ctr";
    static final String CHECKIN_VERSION = "27";
    private static final String CPU_DATA = "cpu";
    private static final String CPU_TIMES_AT_FREQ_DATA = "ctf";
    public static final int DATA_CONNECTION_1xRTT = 7;
    public static final int DATA_CONNECTION_CDMA = 4;
    private static final String DATA_CONNECTION_COUNT_DATA = "dcc";
    public static final int DATA_CONNECTION_EDGE = 2;
    public static final int DATA_CONNECTION_EHRPD = 14;
    public static final int DATA_CONNECTION_EVDO_0 = 5;
    public static final int DATA_CONNECTION_EVDO_A = 6;
    public static final int DATA_CONNECTION_EVDO_B = 12;
    public static final int DATA_CONNECTION_GPRS = 1;
    public static final int DATA_CONNECTION_HSDPA = 8;
    public static final int DATA_CONNECTION_HSPA = 10;
    public static final int DATA_CONNECTION_HSPAP = 15;
    public static final int DATA_CONNECTION_HSUPA = 9;
    public static final int DATA_CONNECTION_IDEN = 11;
    public static final int DATA_CONNECTION_LTE = 13;
    static final String[] DATA_CONNECTION_NAMES;
    public static final int DATA_CONNECTION_NONE = 0;
    public static final int DATA_CONNECTION_OTHER = 16;
    private static final String DATA_CONNECTION_TIME_DATA = "dct";
    public static final int DATA_CONNECTION_UMTS = 3;
    public static final int DEVICE_IDLE_MODE_DEEP = 2;
    public static final int DEVICE_IDLE_MODE_LIGHT = 1;
    public static final int DEVICE_IDLE_MODE_OFF = 0;
    private static final String DISCHARGE_STEP_DATA = "dsd";
    private static final String DISCHARGE_TIME_REMAIN_DATA = "dtr";
    public static final int DUMP_CHARGED_ONLY = 2;
    public static final int DUMP_DAILY_ONLY = 4;
    public static final int DUMP_DEVICE_WIFI_ONLY = 64;
    public static final int DUMP_HISTORY_ONLY = 8;
    public static final int DUMP_INCLUDE_HISTORY = 16;
    public static final int DUMP_VERBOSE = 32;
    private static final String FLASHLIGHT_DATA = "fla";
    public static final int FLASHLIGHT_TURNED_ON = 16;
    public static final int FOREGROUND_ACTIVITY = 10;
    private static final String FOREGROUND_ACTIVITY_DATA = "fg";
    public static final int FOREGROUND_SERVICE = 22;
    private static final String FOREGROUND_SERVICE_DATA = "fgs";
    public static final int FULL_WIFI_LOCK = 5;
    private static final String GLOBAL_BLUETOOTH_CONTROLLER_DATA = "gble";
    private static final String GLOBAL_CPU_FREQ_DATA = "gcf";
    private static final String GLOBAL_MODEM_CONTROLLER_DATA = "gmcd";
    private static final String GLOBAL_NETWORK_DATA = "gn";
    private static final String GLOBAL_WIFI_CONTROLLER_DATA = "gwfcd";
    private static final String GLOBAL_WIFI_DATA = "gwfl";
    private static final String HISTORY_DATA = "h";
    public static final String[] HISTORY_EVENT_CHECKIN_NAMES;
    public static final IntToString[] HISTORY_EVENT_INT_FORMATTERS;
    public static final String[] HISTORY_EVENT_NAMES;
    public static final BitDescription[] HISTORY_STATE2_DESCRIPTIONS;
    public static final BitDescription[] HISTORY_STATE_DESCRIPTIONS;
    private static final String HISTORY_STRING_POOL = "hsp";
    public static final int JOB = 14;
    private static final String JOB_COMPLETION_DATA = "jbc";
    private static final String JOB_DATA = "jb";
    private static final String KERNEL_WAKELOCK_DATA = "kwl";
    private static final boolean LOCAL_LOGV = false;
    public static final int MAX_TRACKED_SCREEN_STATE = 4;
    private static final String MISC_DATA = "m";
    private static final String MODEM_CONTROLLER_DATA = "mcd";
    public static final int NETWORK_BT_RX_DATA = 4;
    public static final int NETWORK_BT_TX_DATA = 5;
    private static final String NETWORK_DATA = "nt";
    public static final int NETWORK_MOBILE_BG_RX_DATA = 6;
    public static final int NETWORK_MOBILE_BG_TX_DATA = 7;
    public static final int NETWORK_MOBILE_RX_DATA = 0;
    public static final int NETWORK_MOBILE_TX_DATA = 1;
    public static final int NETWORK_WIFI_BG_RX_DATA = 8;
    public static final int NETWORK_WIFI_BG_TX_DATA = 9;
    public static final int NETWORK_WIFI_RX_DATA = 2;
    public static final int NETWORK_WIFI_TX_DATA = 3;
    public static final int NUM_DATA_CONNECTION_TYPES = 17;
    public static final int NUM_NETWORK_ACTIVITY_TYPES = 10;
    public static final int NUM_SCREEN_BRIGHTNESS_BINS = 5;
    public static final int NUM_WIFI_SIGNAL_STRENGTH_BINS = 5;
    public static final int NUM_WIFI_STATES = 8;
    public static final int NUM_WIFI_SUPPL_STATES = 13;
    private static final String POWER_USE_ITEM_DATA = "pwi";
    private static final String POWER_USE_SUMMARY_DATA = "pws";
    private static final String PROCESS_DATA = "pr";
    public static final int PROCESS_STATE = 12;
    private static final String RESOURCE_POWER_MANAGER_DATA = "rpm";
    public static final String RESULT_RECEIVER_CONTROLLER_KEY = "controller_activity";
    public static final int SCREEN_BRIGHTNESS_BRIGHT = 4;
    public static final int SCREEN_BRIGHTNESS_DARK = 0;
    private static final String SCREEN_BRIGHTNESS_DATA = "br";
    public static final int SCREEN_BRIGHTNESS_DIM = 1;
    public static final int SCREEN_BRIGHTNESS_LIGHT = 3;
    public static final int SCREEN_BRIGHTNESS_MEDIUM = 2;
    static final String[] SCREEN_BRIGHTNESS_NAMES;
    static final String[] SCREEN_BRIGHTNESS_SHORT_NAMES;
    protected static final boolean SCREEN_OFF_RPM_STATS_ENABLED = false;
    public static final int SENSOR = 3;
    private static final String SENSOR_DATA = "sr";
    public static final String SERVICE_NAME = "batterystats";
    private static final String SIGNAL_SCANNING_TIME_DATA = "sst";
    private static final String SIGNAL_STRENGTH_COUNT_DATA = "sgc";
    private static final String SIGNAL_STRENGTH_TIME_DATA = "sgt";
    private static final String STATE_TIME_DATA = "st";
    public static final int STATS_CURRENT = 1;
    public static final int STATS_SINCE_CHARGED = 0;
    public static final int STATS_SINCE_UNPLUGGED = 2;
    private static final String[] STAT_NAMES = {"l", FullBackup.CACHE_TREE_TOKEN, "u"};
    public static final long STEP_LEVEL_INITIAL_MODE_MASK = 71776119061217280L;
    public static final int STEP_LEVEL_INITIAL_MODE_SHIFT = 48;
    public static final long STEP_LEVEL_LEVEL_MASK = 280375465082880L;
    public static final int STEP_LEVEL_LEVEL_SHIFT = 40;
    public static final int[] STEP_LEVEL_MODES_OF_INTEREST;
    public static final int STEP_LEVEL_MODE_DEVICE_IDLE = 8;
    public static final String[] STEP_LEVEL_MODE_LABELS;
    public static final int STEP_LEVEL_MODE_POWER_SAVE = 4;
    public static final int STEP_LEVEL_MODE_SCREEN_STATE = 3;
    public static final int[] STEP_LEVEL_MODE_VALUES;
    public static final long STEP_LEVEL_MODIFIED_MODE_MASK = -72057594037927936L;
    public static final int STEP_LEVEL_MODIFIED_MODE_SHIFT = 56;
    public static final long STEP_LEVEL_TIME_MASK = 1099511627775L;
    public static final int SYNC = 13;
    private static final String SYNC_DATA = "sy";
    private static final String TAG = "BatteryStats";
    private static final String UID_DATA = "uid";
    private static final String USER_ACTIVITY_DATA = "ua";
    private static final String VERSION_DATA = "vers";
    private static final String VIBRATOR_DATA = "vib";
    public static final int VIBRATOR_ON = 9;
    private static final String VIDEO_DATA = "vid";
    public static final int VIDEO_TURNED_ON = 8;
    private static final String WAKELOCK_DATA = "wl";
    private static final String WAKEUP_ALARM_DATA = "wua";
    private static final String WAKEUP_REASON_DATA = "wr";
    public static final int WAKE_TYPE_DRAW = 18;
    public static final int WAKE_TYPE_FULL = 1;
    public static final int WAKE_TYPE_PARTIAL = 0;
    public static final int WAKE_TYPE_WINDOW = 2;
    public static final int WIFI_BATCHED_SCAN = 11;
    private static final String WIFI_CONTROLLER_DATA = "wfcd";
    private static final String WIFI_DATA = "wfl";
    public static final int WIFI_MULTICAST_ENABLED = 7;
    public static final int WIFI_RUNNING = 4;
    public static final int WIFI_SCAN = 6;
    private static final String WIFI_SIGNAL_STRENGTH_COUNT_DATA = "wsgc";
    private static final String WIFI_SIGNAL_STRENGTH_TIME_DATA = "wsgt";
    private static final String WIFI_STATE_COUNT_DATA = "wsc";
    static final String[] WIFI_STATE_NAMES;
    public static final int WIFI_STATE_OFF = 0;
    public static final int WIFI_STATE_OFF_SCANNING = 1;
    public static final int WIFI_STATE_ON_CONNECTED_P2P = 5;
    public static final int WIFI_STATE_ON_CONNECTED_STA = 4;
    public static final int WIFI_STATE_ON_CONNECTED_STA_P2P = 6;
    public static final int WIFI_STATE_ON_DISCONNECTED = 3;
    public static final int WIFI_STATE_ON_NO_NETWORKS = 2;
    public static final int WIFI_STATE_SOFT_AP = 7;
    private static final String WIFI_STATE_TIME_DATA = "wst";
    public static final int WIFI_SUPPL_STATE_ASSOCIATED = 7;
    public static final int WIFI_SUPPL_STATE_ASSOCIATING = 6;
    public static final int WIFI_SUPPL_STATE_AUTHENTICATING = 5;
    public static final int WIFI_SUPPL_STATE_COMPLETED = 10;
    private static final String WIFI_SUPPL_STATE_COUNT_DATA = "wssc";
    public static final int WIFI_SUPPL_STATE_DISCONNECTED = 1;
    public static final int WIFI_SUPPL_STATE_DORMANT = 11;
    public static final int WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE = 8;
    public static final int WIFI_SUPPL_STATE_GROUP_HANDSHAKE = 9;
    public static final int WIFI_SUPPL_STATE_INACTIVE = 3;
    public static final int WIFI_SUPPL_STATE_INTERFACE_DISABLED = 2;
    public static final int WIFI_SUPPL_STATE_INVALID = 0;
    static final String[] WIFI_SUPPL_STATE_NAMES;
    public static final int WIFI_SUPPL_STATE_SCANNING = 4;
    static final String[] WIFI_SUPPL_STATE_SHORT_NAMES;
    private static final String WIFI_SUPPL_STATE_TIME_DATA = "wsst";
    public static final int WIFI_SUPPL_STATE_UNINITIALIZED = 12;
    private static final IntToString sIntToString;
    private static final IntToString sUidToString;
    private final String UID_TIMES_TYPE_ALL;
    private final StringBuilder mFormatBuilder;
    private final Formatter mFormatter;

    /* JADX INFO: renamed from: android.os.BatteryStats$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$android$internal$os$BatterySipper$DrainType;

        static {
            int[] iArr = new int[BatterySipper.DrainType.values().length];
            $SwitchMap$com$android$internal$os$BatterySipper$DrainType = iArr;
            try {
                iArr[BatterySipper.DrainType.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.CELL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.WIFI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.BLUETOOTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.SCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.FLASHLIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.APP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.USER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.UNACCOUNTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.OVERCOUNTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.CAMERA.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static abstract class ControllerActivityCounter {
        public abstract LongCounter getIdleTimeCounter();

        public abstract LongCounter getPowerCounter();

        public abstract LongCounter getRxTimeCounter();

        public abstract LongCounter[] getTxTimeCounters();
    }

    public static abstract class Counter {
        public abstract int getCountLocked(int i2);

        public abstract void logState(Printer printer, String str);
    }

    public static final class DailyItem {
        public LevelStepTracker mChargeSteps;
        public LevelStepTracker mDischargeSteps;
        public long mEndTime;
        public ArrayList<PackageChange> mPackageChanges;
        public long mStartTime;
    }

    public static final class HistoryEventTracker {
        private final HashMap<String, SparseIntArray>[] mActiveEvents = new HashMap[22];

        public HashMap<String, SparseIntArray> getStateForEvent(int i2) {
            return this.mActiveEvents[i2];
        }

        public void removeEvents(int i2) {
            this.mActiveEvents[i2 & HistoryItem.EVENT_TYPE_MASK] = null;
        }

        public boolean updateState(int i2, String str, int i3, int i4) {
            SparseIntArray sparseIntArray;
            int iIndexOfKey;
            if ((32768 & i2) == 0) {
                if ((i2 & 16384) == 0) {
                    return true;
                }
                HashMap<String, SparseIntArray> map = this.mActiveEvents[i2 & HistoryItem.EVENT_TYPE_MASK];
                if (map == null || (sparseIntArray = map.get(str)) == null || (iIndexOfKey = sparseIntArray.indexOfKey(i3)) < 0) {
                    return false;
                }
                sparseIntArray.removeAt(iIndexOfKey);
                if (sparseIntArray.size() > 0) {
                    return true;
                }
                map.remove(str);
                return true;
            }
            int i5 = i2 & HistoryItem.EVENT_TYPE_MASK;
            HashMap<String, SparseIntArray> map2 = this.mActiveEvents[i5];
            if (map2 == null) {
                map2 = new HashMap<>();
                this.mActiveEvents[i5] = map2;
            }
            SparseIntArray sparseIntArray2 = map2.get(str);
            if (sparseIntArray2 == null) {
                sparseIntArray2 = new SparseIntArray();
                map2.put(str, sparseIntArray2);
            }
            if (sparseIntArray2.indexOfKey(i3) >= 0) {
                return false;
            }
            sparseIntArray2.put(i3, i4);
            return true;
        }
    }

    public static class HistoryPrinter {
        int oldState = 0;
        int oldState2 = 0;
        int oldLevel = -1;
        int oldStatus = -1;
        int oldHealth = -1;
        int oldPlug = -1;
        int oldTemp = -1;
        int oldVolt = -1;
        int oldChargeMAh = -1;
        long lastTime = -1;

        private void printStepCpuUidCheckinDetails(PrintWriter printWriter, int i2, int i3, int i4) {
            printWriter.print('/');
            printWriter.print(i2);
            printWriter.print(SettingsStringUtil.DELIMITER);
            printWriter.print(i3);
            printWriter.print(SettingsStringUtil.DELIMITER);
            printWriter.print(i4);
        }

        private void printStepCpuUidDetails(PrintWriter printWriter, int i2, int i3, int i4) {
            UserHandle.formatUid(printWriter, i2);
            printWriter.print("=");
            printWriter.print(i3);
            printWriter.print("u+");
            printWriter.print(i4);
            printWriter.print("s");
        }

        public void printNextItem(PrintWriter printWriter, HistoryItem historyItem, long j2, boolean z2, boolean z3) {
            if (z2) {
                printWriter.print(9);
                printWriter.print(',');
                printWriter.print(BatteryStats.HISTORY_DATA);
                printWriter.print(',');
                long j3 = this.lastTime;
                if (j3 < 0) {
                    printWriter.print(historyItem.time - j2);
                } else {
                    printWriter.print(historyItem.time - j3);
                }
                this.lastTime = historyItem.time;
            } else {
                printWriter.print("  ");
                TimeUtils.formatDuration(historyItem.time - j2, printWriter, 19);
                printWriter.print(" (");
                printWriter.print(historyItem.numReadInts);
                printWriter.print(") ");
            }
            byte b2 = historyItem.cmd;
            if (b2 == 4) {
                if (z2) {
                    printWriter.print(SettingsStringUtil.DELIMITER);
                }
                printWriter.println("START");
                reset();
                return;
            }
            String str = WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
            if (b2 == 5 || b2 == 7) {
                if (z2) {
                    printWriter.print(SettingsStringUtil.DELIMITER);
                }
                if (historyItem.cmd == 7) {
                    printWriter.print("RESET:");
                    reset();
                }
                printWriter.print("TIME:");
                if (z2) {
                    printWriter.println(historyItem.currentTime);
                    return;
                } else {
                    printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", historyItem.currentTime).toString());
                    return;
                }
            }
            if (b2 == 8) {
                if (z2) {
                    printWriter.print(SettingsStringUtil.DELIMITER);
                }
                printWriter.println("SHUTDOWN");
                return;
            }
            if (b2 == 6) {
                if (z2) {
                    printWriter.print(SettingsStringUtil.DELIMITER);
                }
                printWriter.println("*OVERFLOW*");
                return;
            }
            if (z2) {
                int i2 = this.oldLevel;
                byte b3 = historyItem.batteryLevel;
                if (i2 != b3) {
                    this.oldLevel = b3;
                    printWriter.print(",Bl=");
                    printWriter.print(historyItem.batteryLevel);
                }
            } else {
                byte b4 = historyItem.batteryLevel;
                if (b4 < 10) {
                    printWriter.print("00");
                } else if (b4 < 100) {
                    printWriter.print(WifiEnterpriseConfig.ENGINE_DISABLE);
                }
                printWriter.print(historyItem.batteryLevel);
                if (z3) {
                    printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    int i3 = historyItem.states;
                    if (i3 >= 0) {
                        if (i3 < 16) {
                            printWriter.print("0000000");
                        } else if (i3 < 256) {
                            printWriter.print("000000");
                        } else if (i3 < 4096) {
                            printWriter.print("00000");
                        } else if (i3 < 65536) {
                            printWriter.print("0000");
                        } else if (i3 < 1048576) {
                            printWriter.print("000");
                        } else if (i3 < 16777216) {
                            printWriter.print("00");
                        } else if (i3 < 268435456) {
                            printWriter.print(WifiEnterpriseConfig.ENGINE_DISABLE);
                        }
                    }
                    printWriter.print(Integer.toHexString(historyItem.states));
                }
            }
            int i4 = this.oldStatus;
            byte b5 = historyItem.batteryStatus;
            String str2 = FullBackup.FILES_TREE_TOKEN;
            String str3 = FullBackup.CACHE_TREE_TOKEN;
            if (i4 != b5) {
                this.oldStatus = b5;
                printWriter.print(z2 ? ",Bs=" : " status=");
                int i5 = this.oldStatus;
                if (i5 == 1) {
                    printWriter.print(z2 ? "?" : "unknown");
                } else if (i5 == 2) {
                    printWriter.print(z2 ? FullBackup.CACHE_TREE_TOKEN : "charging");
                } else if (i5 == 3) {
                    printWriter.print(z2 ? "d" : "discharging");
                } else if (i5 == 4) {
                    printWriter.print(z2 ? "n" : "not-charging");
                } else if (i5 != 5) {
                    printWriter.print(i5);
                } else {
                    printWriter.print(z2 ? FullBackup.FILES_TREE_TOKEN : "full");
                }
            }
            int i6 = this.oldHealth;
            byte b6 = historyItem.batteryHealth;
            if (i6 != b6) {
                this.oldHealth = b6;
                printWriter.print(z2 ? ",Bh=" : " health=");
                int i7 = this.oldHealth;
                switch (i7) {
                    case 1:
                        printWriter.print(z2 ? "?" : "unknown");
                        break;
                    case 2:
                        printWriter.print(z2 ? "g" : "good");
                        break;
                    case 3:
                        printWriter.print(z2 ? BatteryStats.HISTORY_DATA : "overheat");
                        break;
                    case 4:
                        printWriter.print(z2 ? "d" : "dead");
                        break;
                    case 5:
                        printWriter.print(z2 ? Telephony.BaseMmsColumns.MMS_VERSION : "over-voltage");
                        break;
                    case 6:
                        if (!z2) {
                            str2 = "failure";
                        }
                        printWriter.print(str2);
                        break;
                    case 7:
                        if (!z2) {
                            str3 = "cold";
                        }
                        printWriter.print(str3);
                        break;
                    default:
                        printWriter.print(i7);
                        break;
                }
            }
            int i8 = this.oldPlug;
            byte b7 = historyItem.batteryPlugType;
            if (i8 != b7) {
                this.oldPlug = b7;
                printWriter.print(z2 ? ",Bp=" : " plug=");
                int i9 = this.oldPlug;
                if (i9 == 0) {
                    printWriter.print(z2 ? "n" : "none");
                } else if (i9 == 1) {
                    printWriter.print(z2 ? FullBackup.APK_TREE_TOKEN : "ac");
                } else if (i9 == 2) {
                    printWriter.print(z2 ? "u" : Context.USB_SERVICE);
                } else if (i9 != 4) {
                    printWriter.print(i9);
                } else {
                    printWriter.print(z2 ? "w" : "wireless");
                }
            }
            int i10 = this.oldTemp;
            short s2 = historyItem.batteryTemperature;
            if (i10 != s2) {
                this.oldTemp = s2;
                printWriter.print(z2 ? ",Bt=" : " temp=");
                printWriter.print(this.oldTemp);
            }
            int i11 = this.oldVolt;
            char c = historyItem.batteryVoltage;
            if (i11 != c) {
                this.oldVolt = c;
                printWriter.print(z2 ? ",Bv=" : " volt=");
                printWriter.print(this.oldVolt);
            }
            int i12 = historyItem.batteryChargeUAh / 1000;
            if (this.oldChargeMAh != i12) {
                this.oldChargeMAh = i12;
                printWriter.print(z2 ? ",Bcc=" : " charge=");
                printWriter.print(this.oldChargeMAh);
            }
            BatteryStats.printBitDescriptions(printWriter, this.oldState, historyItem.states, historyItem.wakelockTag, BatteryStats.HISTORY_STATE_DESCRIPTIONS, !z2);
            BatteryStats.printBitDescriptions(printWriter, this.oldState2, historyItem.states2, null, BatteryStats.HISTORY_STATE2_DESCRIPTIONS, !z2);
            if (historyItem.wakeReasonTag != null) {
                if (z2) {
                    printWriter.print(",wr=");
                    printWriter.print(historyItem.wakeReasonTag.poolIdx);
                } else {
                    printWriter.print(" wake_reason=");
                    printWriter.print(historyItem.wakeReasonTag.uid);
                    printWriter.print(":\"");
                    printWriter.print(historyItem.wakeReasonTag.string);
                    printWriter.print("\"");
                }
            }
            if (historyItem.eventCode != 0) {
                if (z2) {
                    str = ",";
                }
                printWriter.print(str);
                int i13 = historyItem.eventCode;
                if ((32768 & i13) != 0) {
                    printWriter.print("+");
                } else if ((i13 & 16384) != 0) {
                    printWriter.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                }
                String[] strArr = z2 ? BatteryStats.HISTORY_EVENT_CHECKIN_NAMES : BatteryStats.HISTORY_EVENT_NAMES;
                int i14 = historyItem.eventCode & HistoryItem.EVENT_TYPE_MASK;
                if (i14 < 0 || i14 >= strArr.length) {
                    printWriter.print(z2 ? "Ev" : "event");
                    printWriter.print(i14);
                } else {
                    printWriter.print(strArr[i14]);
                }
                printWriter.print("=");
                if (z2) {
                    printWriter.print(historyItem.eventTag.poolIdx);
                } else {
                    printWriter.append(BatteryStats.HISTORY_EVENT_INT_FORMATTERS[i14].applyAsString(historyItem.eventTag.uid));
                    printWriter.print(":\"");
                    printWriter.print(historyItem.eventTag.string);
                    printWriter.print("\"");
                }
            }
            printWriter.println();
            if (historyItem.stepDetails != null) {
                if (z2) {
                    printWriter.print(9);
                    printWriter.print(',');
                    printWriter.print(BatteryStats.HISTORY_DATA);
                    printWriter.print(",0,Dcpu=");
                    printWriter.print(historyItem.stepDetails.userTime);
                    printWriter.print(SettingsStringUtil.DELIMITER);
                    printWriter.print(historyItem.stepDetails.systemTime);
                    HistoryStepDetails historyStepDetails = historyItem.stepDetails;
                    int i15 = historyStepDetails.appCpuUid1;
                    if (i15 >= 0) {
                        printStepCpuUidCheckinDetails(printWriter, i15, historyStepDetails.appCpuUTime1, historyStepDetails.appCpuSTime1);
                        HistoryStepDetails historyStepDetails2 = historyItem.stepDetails;
                        int i16 = historyStepDetails2.appCpuUid2;
                        if (i16 >= 0) {
                            printStepCpuUidCheckinDetails(printWriter, i16, historyStepDetails2.appCpuUTime2, historyStepDetails2.appCpuSTime2);
                        }
                        HistoryStepDetails historyStepDetails3 = historyItem.stepDetails;
                        int i17 = historyStepDetails3.appCpuUid3;
                        if (i17 >= 0) {
                            printStepCpuUidCheckinDetails(printWriter, i17, historyStepDetails3.appCpuUTime3, historyStepDetails3.appCpuSTime3);
                        }
                    }
                    printWriter.println();
                    printWriter.print(9);
                    printWriter.print(',');
                    printWriter.print(BatteryStats.HISTORY_DATA);
                    printWriter.print(",0,Dpst=");
                    printWriter.print(historyItem.stepDetails.statUserTime);
                    printWriter.print(',');
                    printWriter.print(historyItem.stepDetails.statSystemTime);
                    printWriter.print(',');
                    printWriter.print(historyItem.stepDetails.statIOWaitTime);
                    printWriter.print(',');
                    printWriter.print(historyItem.stepDetails.statIrqTime);
                    printWriter.print(',');
                    printWriter.print(historyItem.stepDetails.statSoftIrqTime);
                    printWriter.print(',');
                    printWriter.print(historyItem.stepDetails.statIdlTime);
                    printWriter.print(',');
                    String str4 = historyItem.stepDetails.statPlatformIdleState;
                    if (str4 != null) {
                        printWriter.print(str4);
                        if (historyItem.stepDetails.statSubsystemPowerState != null) {
                            printWriter.print(',');
                        }
                    }
                    String str5 = historyItem.stepDetails.statSubsystemPowerState;
                    if (str5 != null) {
                        printWriter.print(str5);
                    }
                    printWriter.println();
                } else {
                    printWriter.print("                 Details: cpu=");
                    printWriter.print(historyItem.stepDetails.userTime);
                    printWriter.print("u+");
                    printWriter.print(historyItem.stepDetails.systemTime);
                    printWriter.print("s");
                    if (historyItem.stepDetails.appCpuUid1 >= 0) {
                        printWriter.print(" (");
                        HistoryStepDetails historyStepDetails4 = historyItem.stepDetails;
                        printStepCpuUidDetails(printWriter, historyStepDetails4.appCpuUid1, historyStepDetails4.appCpuUTime1, historyStepDetails4.appCpuSTime1);
                        if (historyItem.stepDetails.appCpuUid2 >= 0) {
                            printWriter.print(", ");
                            HistoryStepDetails historyStepDetails5 = historyItem.stepDetails;
                            printStepCpuUidDetails(printWriter, historyStepDetails5.appCpuUid2, historyStepDetails5.appCpuUTime2, historyStepDetails5.appCpuSTime2);
                        }
                        if (historyItem.stepDetails.appCpuUid3 >= 0) {
                            printWriter.print(", ");
                            HistoryStepDetails historyStepDetails6 = historyItem.stepDetails;
                            printStepCpuUidDetails(printWriter, historyStepDetails6.appCpuUid3, historyStepDetails6.appCpuUTime3, historyStepDetails6.appCpuSTime3);
                        }
                        printWriter.print(')');
                    }
                    printWriter.println();
                    printWriter.print("                          /proc/stat=");
                    printWriter.print(historyItem.stepDetails.statUserTime);
                    printWriter.print(" usr, ");
                    printWriter.print(historyItem.stepDetails.statSystemTime);
                    printWriter.print(" sys, ");
                    printWriter.print(historyItem.stepDetails.statIOWaitTime);
                    printWriter.print(" io, ");
                    printWriter.print(historyItem.stepDetails.statIrqTime);
                    printWriter.print(" irq, ");
                    printWriter.print(historyItem.stepDetails.statSoftIrqTime);
                    printWriter.print(" sirq, ");
                    printWriter.print(historyItem.stepDetails.statIdlTime);
                    printWriter.print(" idle");
                    HistoryStepDetails historyStepDetails7 = historyItem.stepDetails;
                    int i18 = historyStepDetails7.statUserTime + historyStepDetails7.statSystemTime + historyStepDetails7.statIOWaitTime + historyStepDetails7.statIrqTime + historyStepDetails7.statSoftIrqTime;
                    int i19 = historyStepDetails7.statIdlTime + i18;
                    if (i19 > 0) {
                        printWriter.print(" (");
                        printWriter.print(String.format("%.1f%%", Float.valueOf((i18 / i19) * 100.0f)));
                        printWriter.print(" of ");
                        StringBuilder sb = new StringBuilder(64);
                        BatteryStats.formatTimeMsNoSpace(sb, i19 * 10);
                        printWriter.print(sb);
                        printWriter.print(")");
                    }
                    printWriter.print(", PlatformIdleStat ");
                    printWriter.print(historyItem.stepDetails.statPlatformIdleState);
                    printWriter.println();
                    printWriter.print(", SubsystemPowerState ");
                    printWriter.print(historyItem.stepDetails.statSubsystemPowerState);
                    printWriter.println();
                }
            }
            this.oldState = historyItem.states;
            this.oldState2 = historyItem.states2;
        }

        public void reset() {
            this.oldState2 = 0;
            this.oldState = 0;
            this.oldLevel = -1;
            this.oldStatus = -1;
            this.oldHealth = -1;
            this.oldPlug = -1;
            this.oldTemp = -1;
            this.oldVolt = -1;
            this.oldChargeMAh = -1;
        }
    }

    public static final class HistoryStepDetails {
        public int appCpuSTime1;
        public int appCpuSTime2;
        public int appCpuSTime3;
        public int appCpuUTime1;
        public int appCpuUTime2;
        public int appCpuUTime3;
        public int appCpuUid1;
        public int appCpuUid2;
        public int appCpuUid3;
        public int statIOWaitTime;
        public int statIdlTime;
        public int statIrqTime;
        public String statPlatformIdleState;
        public int statSoftIrqTime;
        public String statSubsystemPowerState;
        public int statSystemTime;
        public int statUserTime;
        public int systemTime;
        public int userTime;

        public HistoryStepDetails() {
            clear();
        }

        public void clear() {
            this.systemTime = 0;
            this.userTime = 0;
            this.appCpuUid3 = -1;
            this.appCpuUid2 = -1;
            this.appCpuUid1 = -1;
            this.appCpuSTime3 = 0;
            this.appCpuUTime3 = 0;
            this.appCpuSTime2 = 0;
            this.appCpuUTime2 = 0;
            this.appCpuSTime1 = 0;
            this.appCpuUTime1 = 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.userTime = parcel.readInt();
            this.systemTime = parcel.readInt();
            this.appCpuUid1 = parcel.readInt();
            this.appCpuUTime1 = parcel.readInt();
            this.appCpuSTime1 = parcel.readInt();
            this.appCpuUid2 = parcel.readInt();
            this.appCpuUTime2 = parcel.readInt();
            this.appCpuSTime2 = parcel.readInt();
            this.appCpuUid3 = parcel.readInt();
            this.appCpuUTime3 = parcel.readInt();
            this.appCpuSTime3 = parcel.readInt();
            this.statUserTime = parcel.readInt();
            this.statSystemTime = parcel.readInt();
            this.statIOWaitTime = parcel.readInt();
            this.statIrqTime = parcel.readInt();
            this.statSoftIrqTime = parcel.readInt();
            this.statIdlTime = parcel.readInt();
            this.statPlatformIdleState = parcel.readString();
            this.statSubsystemPowerState = parcel.readString();
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.userTime);
            parcel.writeInt(this.systemTime);
            parcel.writeInt(this.appCpuUid1);
            parcel.writeInt(this.appCpuUTime1);
            parcel.writeInt(this.appCpuSTime1);
            parcel.writeInt(this.appCpuUid2);
            parcel.writeInt(this.appCpuUTime2);
            parcel.writeInt(this.appCpuSTime2);
            parcel.writeInt(this.appCpuUid3);
            parcel.writeInt(this.appCpuUTime3);
            parcel.writeInt(this.appCpuSTime3);
            parcel.writeInt(this.statUserTime);
            parcel.writeInt(this.statSystemTime);
            parcel.writeInt(this.statIOWaitTime);
            parcel.writeInt(this.statIrqTime);
            parcel.writeInt(this.statSoftIrqTime);
            parcel.writeInt(this.statIdlTime);
            parcel.writeString(this.statPlatformIdleState);
            parcel.writeString(this.statSubsystemPowerState);
        }
    }

    @FunctionalInterface
    public interface IntToString {
        String applyAsString(int i2);
    }

    public static abstract class LongCounter {
        public abstract long getCountLocked(int i2);

        public abstract void logState(Printer printer, String str);
    }

    public static abstract class LongCounterArray {
        public abstract long[] getCountsLocked(int i2);

        public abstract void logState(Printer printer, String str);
    }

    public static final class PackageChange {
        public String mPackageName;
        public boolean mUpdate;
        public int mVersionCode;
    }

    public static abstract class Timer {
        public abstract int getCountLocked(int i2);

        public long getCurrentDurationMsLocked(long j2) {
            return -1L;
        }

        public long getMaxDurationMsLocked(long j2) {
            return -1L;
        }

        public Timer getSubTimer() {
            return null;
        }

        public abstract long getTimeSinceMarkLocked(long j2);

        public long getTotalDurationMsLocked(long j2) {
            return -1L;
        }

        public abstract long getTotalTimeLocked(long j2, int i2);

        public boolean isRunningLocked() {
            return false;
        }

        public abstract void logState(Printer printer, String str);
    }

    public static final class TimerEntry {
        final int mId;
        final String mName;
        final long mTime;
        final Timer mTimer;

        public TimerEntry(String str, int i2, Timer timer, long j2) {
            this.mName = str;
            this.mId = i2;
            this.mTimer = timer;
            this.mTime = j2;
        }
    }

    public static abstract class Uid {
        public static final int NUM_PROCESS_STATE = 6;
        public static final int NUM_USER_ACTIVITY_TYPES = 4;
        public static final int NUM_WIFI_BATCHED_SCAN_BINS = 5;
        public static final int PROCESS_STATE_BACKGROUND = 4;
        public static final int PROCESS_STATE_CACHED = 5;
        public static final int PROCESS_STATE_FOREGROUND = 3;
        public static final int PROCESS_STATE_FOREGROUND_SERVICE = 1;
        public static final int PROCESS_STATE_TOP = 0;
        public static final int PROCESS_STATE_TOP_SLEEPING = 2;
        static final String[] PROCESS_STATE_NAMES = {"Top", "Fg Service", "Top Sleeping", "Foreground", "Background", "Cached"};
        static final String[] USER_ACTIVITY_TYPES = {"other", "button", "touch", Context.ACCESSIBILITY_SERVICE};

        public class Pid {
            public int mWakeNesting;
            public long mWakeStartMs;
            public long mWakeSumMs;

            public Pid() {
            }
        }

        public static abstract class Pkg {

            public static abstract class Serv {
                public abstract int getLaunches(int i2);

                public abstract long getStartTime(long j2, int i2);

                public abstract int getStarts(int i2);
            }

            public abstract ArrayMap<String, ? extends Serv> getServiceStats();

            public abstract ArrayMap<String, ? extends Counter> getWakeupAlarmStats();
        }

        public static abstract class Proc {

            public static class ExcessivePower {
                public static final int TYPE_CPU = 2;
                public static final int TYPE_WAKE = 1;
                public long overTime;
                public int type;
                public long usedTime;
            }

            public abstract int countExcessivePowers();

            public abstract ExcessivePower getExcessivePower(int i2);

            public abstract long getForegroundTime(int i2);

            public abstract int getNumAnrs(int i2);

            public abstract int getNumCrashes(int i2);

            public abstract int getStarts(int i2);

            public abstract long getSystemTime(int i2);

            public abstract long getUserTime(int i2);

            public abstract boolean isActive();
        }

        public static abstract class Sensor {
            public static final int GPS = -10000;

            public abstract int getHandle();

            public abstract Timer getSensorBackgroundTime();

            public abstract Timer getSensorTime();
        }

        public static abstract class Wakelock {
            public abstract Timer getWakeTime(int i2);
        }

        public abstract Timer getAggregatedPartialWakelockTimer();

        public abstract Timer getAudioTurnedOnTimer();

        public abstract ControllerActivityCounter getBluetoothControllerActivity();

        public abstract Timer getBluetoothScanBackgroundTimer();

        public abstract Counter getBluetoothScanResultBgCounter();

        public abstract Counter getBluetoothScanResultCounter();

        public abstract Timer getBluetoothScanTimer();

        public abstract Timer getBluetoothUnoptimizedScanBackgroundTimer();

        public abstract Timer getBluetoothUnoptimizedScanTimer();

        public abstract Timer getCameraTurnedOnTimer();

        public abstract long[] getCpuFreqTimes(int i2);

        public abstract Timer getFlashlightTurnedOnTimer();

        public abstract Timer getForegroundActivityTimer();

        public abstract Timer getForegroundServiceTimer();

        public abstract long getFullWifiLockTime(long j2, int i2);

        public abstract ArrayMap<String, SparseIntArray> getJobCompletionStats();

        public abstract ArrayMap<String, ? extends Timer> getJobStats();

        public abstract int getMobileRadioActiveCount(int i2);

        public abstract long getMobileRadioActiveTime(int i2);

        public abstract long getMobileRadioApWakeupCount(int i2);

        public abstract ControllerActivityCounter getModemControllerActivity();

        public abstract long getNetworkActivityBytes(int i2, int i3);

        public abstract long getNetworkActivityPackets(int i2, int i3);

        public abstract ArrayMap<String, ? extends Pkg> getPackageStats();

        public abstract SparseArray<? extends Pid> getPidStats();

        public abstract long getProcessStateTime(int i2, long j2, int i3);

        public abstract Timer getProcessStateTimer(int i2);

        public abstract ArrayMap<String, ? extends Proc> getProcessStats();

        public abstract long[] getScreenOffCpuFreqTimes(int i2);

        public abstract SparseArray<? extends Sensor> getSensorStats();

        public abstract ArrayMap<String, ? extends Timer> getSyncStats();

        public abstract long getSystemCpuTimeUs(int i2);

        public abstract long getTimeAtCpuSpeed(int i2, int i3, int i4);

        public abstract int getUid();

        public abstract int getUserActivityCount(int i2, int i3);

        public abstract long getUserCpuTimeUs(int i2);

        public abstract Timer getVibratorOnTimer();

        public abstract Timer getVideoTurnedOnTimer();

        public abstract ArrayMap<String, ? extends Wakelock> getWakelockStats();

        public abstract int getWifiBatchedScanCount(int i2, int i3);

        public abstract long getWifiBatchedScanTime(int i2, long j2, int i3);

        public abstract ControllerActivityCounter getWifiControllerActivity();

        public abstract long getWifiMulticastTime(long j2, int i2);

        public abstract long getWifiRadioApWakeupCount(int i2);

        public abstract long getWifiRunningTime(long j2, int i2);

        public abstract long getWifiScanActualTime(long j2);

        public abstract int getWifiScanBackgroundCount(int i2);

        public abstract long getWifiScanBackgroundTime(long j2);

        public abstract int getWifiScanCount(int i2);

        public abstract long getWifiScanTime(long j2, int i2);

        public abstract boolean hasNetworkActivity();

        public abstract boolean hasUserActivity();

        public abstract void noteActivityPausedLocked(long j2);

        public abstract void noteActivityResumedLocked(long j2);

        public abstract void noteFullWifiLockAcquiredLocked(long j2);

        public abstract void noteFullWifiLockReleasedLocked(long j2);

        public abstract void noteUserActivityLocked(int i2);

        public abstract void noteWifiBatchedScanStartedLocked(int i2, long j2);

        public abstract void noteWifiBatchedScanStoppedLocked(long j2);

        public abstract void noteWifiMulticastDisabledLocked(long j2);

        public abstract void noteWifiMulticastEnabledLocked(long j2);

        public abstract void noteWifiRunningLocked(long j2);

        public abstract void noteWifiScanStartedLocked(long j2);

        public abstract void noteWifiScanStoppedLocked(long j2);

        public abstract void noteWifiStoppedLocked(long j2);
    }

    static {
        String[] strArr = {"dark", "dim", "medium", "light", "bright"};
        SCREEN_BRIGHTNESS_NAMES = strArr;
        String[] strArr2 = {WifiEnterpriseConfig.ENGINE_DISABLE, WifiEnterpriseConfig.ENGINE_ENABLE, "2", "3", "4"};
        SCREEN_BRIGHTNESS_SHORT_NAMES = strArr2;
        String[] strArr3 = {"none", "gprs", "edge", "umts", "cdma", "evdo_0", "evdo_A", "1xrtt", "hsdpa", "hsupa", "hspa", "iden", "evdo_b", "lte", "ehrpd", "hspap", "other"};
        DATA_CONNECTION_NAMES = strArr3;
        String[] strArr4 = {"invalid", "disconn", "disabled", "inactive", "scanning", "authenticating", "associating", "associated", "4-way-handshake", "group-handshake", "completed", "dormant", "uninit"};
        WIFI_SUPPL_STATE_NAMES = strArr4;
        String[] strArr5 = {"inv", "dsc", "dis", "inact", "scan", "auth", "ascing", "asced", "4-way", WifiConfiguration.GroupCipher.varName, "compl", "dorm", "uninit"};
        WIFI_SUPPL_STATE_SHORT_NAMES = strArr5;
        HISTORY_STATE_DESCRIPTIONS = new BitDescription[]{new BitDescription(Integer.MIN_VALUE, "running", FullBackup.ROOT_TREE_TOKEN), new BitDescription(1073741824, "wake_lock", "w"), new BitDescription(8388608, Context.SENSOR_SERVICE, "s"), new BitDescription(536870912, "gps", "g"), new BitDescription(268435456, "wifi_full_lock", "Wl"), new BitDescription(134217728, "wifi_scan", "Ws"), new BitDescription(65536, "wifi_multicast", "Wm"), new BitDescription(67108864, "wifi_radio", "Wr"), new BitDescription(33554432, "mobile_radio", "Pr"), new BitDescription(2097152, "phone_scanning", "Psc"), new BitDescription(4194304, "audio", FullBackup.APK_TREE_TOKEN), new BitDescription(1048576, "screen", "S"), new BitDescription(524288, BatteryManager.EXTRA_PLUGGED, "BP"), new BitDescription(262144, "screen_doze", "Sd"), new BitDescription(HistoryItem.STATE_DATA_CONNECTION_MASK, 9, "data_conn", "Pcn", strArr3, strArr3), new BitDescription(448, 6, "phone_state", "Pst", new String[]{"in", "out", PhoneConstants.APN_TYPE_EMERGENCY, "off"}, new String[]{"in", "out", "em", "off"}), new BitDescription(56, 3, "phone_signal_strength", "Pss", SignalStrength.SIGNAL_STRENGTH_NAMES, new String[]{WifiEnterpriseConfig.ENGINE_DISABLE, WifiEnterpriseConfig.ENGINE_ENABLE, "2", "3", "4"}), new BitDescription(7, 0, "brightness", "Sb", strArr, strArr2)};
        HISTORY_STATE2_DESCRIPTIONS = new BitDescription[]{new BitDescription(Integer.MIN_VALUE, "power_save", "ps"), new BitDescription(1073741824, MediaCodec.MetricsConstants.MODE_VIDEO, Telephony.BaseMmsColumns.MMS_VERSION), new BitDescription(536870912, "wifi_running", "Ww"), new BitDescription(268435456, "wifi", "W"), new BitDescription(134217728, "flashlight", "fl"), new BitDescription(HistoryItem.STATE2_DEVICE_IDLE_MASK, 25, "device_idle", "di", new String[]{"off", "light", "full", "???"}, new String[]{"off", "light", "full", "???"}), new BitDescription(16777216, "charging", "ch"), new BitDescription(8388608, "phone_in_call", "Pcl"), new BitDescription(4194304, "bluetooth", "b"), new BitDescription(112, 4, "wifi_signal_strength", "Wss", new String[]{WifiEnterpriseConfig.ENGINE_DISABLE, WifiEnterpriseConfig.ENGINE_ENABLE, "2", "3", "4"}, new String[]{WifiEnterpriseConfig.ENGINE_DISABLE, WifiEnterpriseConfig.ENGINE_ENABLE, "2", "3", "4"}), new BitDescription(15, 0, "wifi_suppl", "Wsp", strArr4, strArr5), new BitDescription(2097152, Context.CAMERA_SERVICE, "ca"), new BitDescription(1048576, "ble_scan", "bles")};
        HISTORY_EVENT_NAMES = new String[]{"null", "proc", FOREGROUND_ACTIVITY_DATA, "top", "sync", "wake_lock_in", "job", "user", "userfg", "conn", "active", "pkginst", "pkgunin", "alarm", "stats", "pkginactive", "pkgactive", "tmpwhitelist", "screenwake", "wakeupap", "longwake", "est_capacity"};
        HISTORY_EVENT_CHECKIN_NAMES = new String[]{"Enl", "Epr", "Efg", "Etp", "Esy", "Ewl", "Ejb", "Eur", "Euf", "Ecn", "Eac", "Epi", "Epu", "Eal", "Est", "Eai", "Eaa", "Etw", "Esw", "Ewa", "Elw", "Eec"};
        a aVar = new a(0);
        sUidToString = aVar;
        a aVar2 = new a(1);
        sIntToString = aVar2;
        HISTORY_EVENT_INT_FORMATTERS = new IntToString[]{aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar2};
        WIFI_STATE_NAMES = new String[]{"off", "scanning", "no_net", "disconn", "sta", "p2p", "sta_p2p", "soft_ap"};
        STEP_LEVEL_MODES_OF_INTEREST = new int[]{7, 15, 11, 7, 7, 7, 7, 7, 15, 11};
        STEP_LEVEL_MODE_VALUES = new int[]{0, 4, 8, 1, 5, 2, 6, 3, 7, 11};
        STEP_LEVEL_MODE_LABELS = new String[]{"screen off", "screen off power save", "screen off device idle", "screen on", "screen on power save", "screen doze", "screen doze power save", "screen doze-suspend", "screen doze-suspend power save", "screen doze-suspend device idle"};
    }

    public BatteryStats() {
        StringBuilder sb = new StringBuilder(32);
        this.mFormatBuilder = sb;
        this.mFormatter = new Formatter(sb);
        this.UID_TIMES_TYPE_ALL = "A";
    }

    private static long computeWakeLock(Timer timer, long j2, int i2) {
        if (timer != null) {
            return (timer.getTotalTimeLocked(j2, i2) + 500) / 1000;
        }
        return 0L;
    }

    private static boolean controllerActivityHasData(ControllerActivityCounter controllerActivityCounter, int i2) {
        if (controllerActivityCounter == null) {
            return false;
        }
        if (controllerActivityCounter.getIdleTimeCounter().getCountLocked(i2) != 0 || controllerActivityCounter.getRxTimeCounter().getCountLocked(i2) != 0 || controllerActivityCounter.getPowerCounter().getCountLocked(i2) != 0) {
            return true;
        }
        for (LongCounter longCounter : controllerActivityCounter.getTxTimeCounters()) {
            if (longCounter.getCountLocked(i2) != 0) {
                return true;
            }
        }
        return false;
    }

    private static final void dumpControllerActivityLine(PrintWriter printWriter, int i2, String str, String str2, ControllerActivityCounter controllerActivityCounter, int i3) {
        if (controllerActivityHasData(controllerActivityCounter, i3)) {
            dumpLineHeader(printWriter, i2, str, str2);
            printWriter.print(",");
            printWriter.print(controllerActivityCounter.getIdleTimeCounter().getCountLocked(i3));
            printWriter.print(",");
            printWriter.print(controllerActivityCounter.getRxTimeCounter().getCountLocked(i3));
            printWriter.print(",");
            printWriter.print(controllerActivityCounter.getPowerCounter().getCountLocked(i3) / 3600000);
            LongCounter[] txTimeCounters = controllerActivityCounter.getTxTimeCounters();
            for (LongCounter longCounter : txTimeCounters) {
                printWriter.print(",");
                printWriter.print(longCounter.getCountLocked(i3));
            }
            printWriter.println();
        }
    }

    private void dumpDailyLevelStepSummary(PrintWriter printWriter, String str, String str2, LevelStepTracker levelStepTracker, StringBuilder sb, int[] iArr) {
        if (levelStepTracker == null) {
            return;
        }
        long jComputeTimeEstimate = levelStepTracker.computeTimeEstimate(0L, 0L, iArr);
        if (jComputeTimeEstimate >= 0) {
            printWriter.print(str);
            printWriter.print(str2);
            printWriter.print(" total time: ");
            sb.setLength(0);
            formatTimeMs(sb, jComputeTimeEstimate);
            printWriter.print(sb);
            printWriter.print(" (from ");
            printWriter.print(iArr[0]);
            printWriter.println(" steps)");
        }
        int i2 = 0;
        while (true) {
            int[] iArr2 = STEP_LEVEL_MODES_OF_INTEREST;
            if (i2 >= iArr2.length) {
                return;
            }
            long jComputeTimeEstimate2 = levelStepTracker.computeTimeEstimate(iArr2[i2], STEP_LEVEL_MODE_VALUES[i2], iArr);
            if (jComputeTimeEstimate2 > 0) {
                printWriter.print(str);
                printWriter.print(str2);
                printWriter.print(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                printWriter.print(STEP_LEVEL_MODE_LABELS[i2]);
                printWriter.print(" time: ");
                sb.setLength(0);
                formatTimeMs(sb, jComputeTimeEstimate2);
                printWriter.print(sb);
                printWriter.print(" (from ");
                printWriter.print(iArr[0]);
                printWriter.println(" steps)");
            }
            i2++;
        }
    }

    private void dumpDailyPackageChanges(PrintWriter printWriter, String str, ArrayList<PackageChange> arrayList) {
        if (arrayList == null) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Package changes:");
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            PackageChange packageChange = arrayList.get(i2);
            if (packageChange.mUpdate) {
                printWriter.print(str);
                printWriter.print("  Update ");
                printWriter.print(packageChange.mPackageName);
                printWriter.print(" vers=");
                printWriter.println(packageChange.mVersionCode);
            } else {
                printWriter.print(str);
                printWriter.print("  Uninstall ");
                printWriter.println(packageChange.mPackageName);
            }
        }
    }

    private static boolean dumpDurationSteps(PrintWriter printWriter, String str, String str2, LevelStepTracker levelStepTracker, boolean z2) {
        int i2;
        int i3;
        char c;
        char c2;
        char c3 = 0;
        if (levelStepTracker == null || (i2 = levelStepTracker.mNumStepDurations) <= 0) {
            return false;
        }
        if (!z2) {
            printWriter.println(str2);
        }
        String[] strArr = new String[5];
        int i4 = 0;
        while (true) {
            char c4 = 1;
            if (i4 >= i2) {
                return true;
            }
            long durationAt = levelStepTracker.getDurationAt(i4);
            int levelAt = levelStepTracker.getLevelAt(i4);
            long initModeAt = levelStepTracker.getInitModeAt(i4);
            long modModeAt = levelStepTracker.getModModeAt(i4);
            if (z2) {
                strArr[c3] = Long.toString(durationAt);
                strArr[1] = Integer.toString(levelAt);
                if ((modModeAt & 3) == 0) {
                    i3 = i2;
                    int i5 = ((int) (initModeAt & 3)) + 1;
                    if (i5 == 1) {
                        strArr[2] = "s-";
                    } else if (i5 == 2) {
                        strArr[2] = "s+";
                    } else if (i5 == 3) {
                        strArr[2] = "sd";
                    } else if (i5 != 4) {
                        strArr[2] = "?";
                    } else {
                        strArr[2] = "sds";
                    }
                } else {
                    i3 = i2;
                    strArr[2] = "";
                }
                if ((modModeAt & 4) == 0) {
                    strArr[3] = (initModeAt & 4) != 0 ? "p+" : "p-";
                } else {
                    strArr[3] = "";
                }
                if ((modModeAt & 8) == 0) {
                    strArr[4] = (8 & initModeAt) != 0 ? "i+" : "i-";
                } else {
                    strArr[4] = "";
                }
                c = 0;
                dumpLine(printWriter, 0, "i", str2, strArr);
            } else {
                i3 = i2;
                c = c3;
                printWriter.print(str);
                printWriter.print("#");
                printWriter.print(i4);
                printWriter.print(": ");
                TimeUtils.formatDuration(durationAt, printWriter);
                printWriter.print(" to ");
                printWriter.print(levelAt);
                if ((modModeAt & 3) == 0) {
                    printWriter.print(" (");
                    int i6 = ((int) (initModeAt & 3)) + 1;
                    if (i6 == 1) {
                        printWriter.print("screen-off");
                    } else if (i6 == 2) {
                        printWriter.print("screen-on");
                    } else if (i6 == 3) {
                        printWriter.print("screen-doze");
                    } else if (i6 != 4) {
                        printWriter.print("screen-?");
                    } else {
                        printWriter.print("screen-doze-suspend");
                    }
                    c2 = 1;
                } else {
                    c2 = c;
                }
                if ((modModeAt & 4) == 0) {
                    printWriter.print(c2 != 0 ? ", " : " (");
                    printWriter.print((initModeAt & 4) != 0 ? "power-save-on" : "power-save-off");
                    c2 = 1;
                }
                if ((modModeAt & 8) == 0) {
                    printWriter.print(c2 != 0 ? ", " : " (");
                    printWriter.print((initModeAt & 8) != 0 ? "device-idle-on" : "device-idle-off");
                } else {
                    c4 = c2;
                }
                if (c4 != 0) {
                    printWriter.print(")");
                }
                printWriter.println();
            }
            i4++;
            c3 = c;
            i2 = i3;
        }
    }

    private void dumpHistoryLocked(PrintWriter printWriter, int i2, long j2, boolean z2) {
        HistoryPrinter historyPrinter = new HistoryPrinter();
        HistoryItem historyItem = new HistoryItem();
        long j3 = -1;
        long j4 = -1;
        boolean z3 = false;
        while (getNextHistoryLocked(historyItem)) {
            long j5 = historyItem.time;
            long j6 = j3 < 0 ? j5 : j3;
            if (j5 >= j2) {
                if (j2 >= 0 && !z3) {
                    byte b2 = historyItem.cmd;
                    if (b2 == 5 || b2 == 7 || b2 == 4 || b2 == 8) {
                        historyPrinter.printNextItem(printWriter, historyItem, j6, z2, (i2 & 32) != 0);
                        historyItem.cmd = (byte) 0;
                    } else if (historyItem.currentTime != 0) {
                        historyItem.cmd = (byte) 5;
                        historyPrinter.printNextItem(printWriter, historyItem, j6, z2, (i2 & 32) != 0);
                        historyItem.cmd = b2;
                    }
                    z3 = true;
                }
                boolean z4 = z3;
                historyPrinter.printNextItem(printWriter, historyItem, j6, z2, (i2 & 32) != 0);
                z3 = z4;
            }
            j4 = j5;
            j3 = j6;
        }
        if (j2 >= 0) {
            commitCurrentHistoryBatchLocked();
            printWriter.print(z2 ? "NEXT: " : "  NEXT: ");
            printWriter.println(j4 + 1);
        }
    }

    private static final void dumpLine(PrintWriter printWriter, int i2, String str, String str2, Object... objArr) {
        dumpLineHeader(printWriter, i2, str, str2);
        for (Object obj : objArr) {
            printWriter.print(',');
            printWriter.print(obj);
        }
        printWriter.println();
    }

    private static final void dumpLineHeader(PrintWriter printWriter, int i2, String str, String str2) {
        printWriter.print(9);
        printWriter.print(',');
        printWriter.print(i2);
        printWriter.print(',');
        printWriter.print(str);
        printWriter.print(',');
        printWriter.print(str2);
    }

    private static boolean dumpTimeEstimate(PrintWriter printWriter, String str, String str2, String str3, long j2) {
        if (j2 < 0) {
            return false;
        }
        printWriter.print(str);
        printWriter.print(str2);
        printWriter.print(str3);
        StringBuilder sb = new StringBuilder(64);
        formatTimeMs(sb, j2);
        printWriter.print(sb);
        printWriter.println();
        return true;
    }

    private static final void dumpTimer(PrintWriter printWriter, int i2, String str, String str2, Timer timer, long j2, int i3) {
        if (timer != null) {
            long totalTimeLocked = (timer.getTotalTimeLocked(j2, i3) + 500) / 1000;
            int countLocked = timer.getCountLocked(i3);
            if (totalTimeLocked != 0) {
                dumpLine(printWriter, i2, str, str2, Long.valueOf(totalTimeLocked), Integer.valueOf(countLocked));
            }
        }
    }

    public static final void formatTimeMs(StringBuilder sb, long j2) {
        long j3 = j2 / 1000;
        formatTimeRaw(sb, j3);
        sb.append(j2 - (j3 * 1000));
        sb.append("ms ");
    }

    public static final void formatTimeMsNoSpace(StringBuilder sb, long j2) {
        long j3 = j2 / 1000;
        formatTimeRaw(sb, j3);
        sb.append(j2 - (j3 * 1000));
        sb.append("ms");
    }

    private static final void formatTimeRaw(StringBuilder sb, long j2) {
        long j3 = j2 / 86400;
        if (j3 != 0) {
            sb.append(j3);
            sb.append("d ");
        }
        long j4 = j3 * 60 * 60 * 24;
        long j5 = (j2 - j4) / 3600;
        if (j5 != 0 || j4 != 0) {
            sb.append(j5);
            sb.append("h ");
        }
        long j6 = (j5 * 60 * 60) + j4;
        long j7 = (j2 - j6) / 60;
        if (j7 != 0 || j6 != 0) {
            sb.append(j7);
            sb.append("m ");
        }
        Long.signum(j7);
        long j8 = (j7 * 60) + j6;
        if (j2 == 0 && j8 == 0) {
            return;
        }
        sb.append(j2 - j8);
        sb.append("s ");
    }

    public static void printBitDescriptions(PrintWriter printWriter, int i2, int i3, HistoryTag historyTag, BitDescription[] bitDescriptionArr, boolean z2) {
        int i4 = i2 ^ i3;
        if (i4 == 0) {
            return;
        }
        boolean z3 = false;
        for (BitDescription bitDescription : bitDescriptionArr) {
            if ((bitDescription.mask & i4) != 0) {
                printWriter.print(z2 ? WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER : ",");
                if (bitDescription.shift < 0) {
                    printWriter.print((bitDescription.mask & i3) != 0 ? "+" : NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                    printWriter.print(z2 ? bitDescription.name : bitDescription.shortName);
                    if (bitDescription.mask == 1073741824 && historyTag != null) {
                        printWriter.print("=");
                        if (z2) {
                            UserHandle.formatUid(printWriter, historyTag.uid);
                            printWriter.print(":\"");
                            printWriter.print(historyTag.string);
                            printWriter.print("\"");
                        } else {
                            printWriter.print(historyTag.poolIdx);
                        }
                        z3 = true;
                    }
                } else {
                    printWriter.print(z2 ? bitDescription.name : bitDescription.shortName);
                    printWriter.print("=");
                    int i5 = (bitDescription.mask & i3) >> bitDescription.shift;
                    String[] strArr = bitDescription.values;
                    if (strArr == null || i5 < 0 || i5 >= strArr.length) {
                        printWriter.print(i5);
                    } else {
                        printWriter.print(z2 ? strArr[i5] : bitDescription.shortValues[i5]);
                    }
                }
            }
        }
        if (z3 || historyTag == null) {
            return;
        }
        printWriter.print(z2 ? " wake_lock=" : ",w=");
        if (!z2) {
            printWriter.print(historyTag.poolIdx);
            return;
        }
        UserHandle.formatUid(printWriter, historyTag.uid);
        printWriter.print(":\"");
        printWriter.print(historyTag.string);
        printWriter.print("\"");
    }

    private final void printControllerActivity(PrintWriter printWriter, StringBuilder sb, String str, String str2, ControllerActivityCounter controllerActivityCounter, int i2) {
        long countLocked = controllerActivityCounter.getIdleTimeCounter().getCountLocked(i2);
        long countLocked2 = controllerActivityCounter.getRxTimeCounter().getCountLocked(i2);
        long countLocked3 = controllerActivityCounter.getPowerCounter().getCountLocked(i2);
        long jComputeBatteryRealtime = computeBatteryRealtime(SystemClock.elapsedRealtime() * 1000, i2) / 1000;
        LongCounter[] txTimeCounters = controllerActivityCounter.getTxTimeCounters();
        int i3 = 0;
        long countLocked4 = 0;
        for (int length = txTimeCounters.length; i3 < length; length = length) {
            countLocked4 = txTimeCounters[i3].getCountLocked(i2) + countLocked4;
            i3++;
        }
        long j2 = jComputeBatteryRealtime - ((countLocked + countLocked2) + countLocked4);
        sb.setLength(0);
        sb.append(str);
        sb.append("     ");
        sb.append(str2);
        sb.append(" Sleep time:  ");
        formatTimeMs(sb, j2);
        sb.append("(");
        sb.append(formatRatioLocked(j2, jComputeBatteryRealtime));
        sb.append(")");
        printWriter.println(sb.toString());
        sb.setLength(0);
        sb.append(str);
        sb.append("     ");
        sb.append(str2);
        sb.append(" Idle time:   ");
        formatTimeMs(sb, countLocked);
        sb.append("(");
        sb.append(formatRatioLocked(countLocked, jComputeBatteryRealtime));
        sb.append(")");
        printWriter.println(sb.toString());
        sb.setLength(0);
        sb.append(str);
        sb.append("     ");
        sb.append(str2);
        sb.append(" Rx time:     ");
        formatTimeMs(sb, countLocked2);
        sb.append("(");
        sb.append(formatRatioLocked(countLocked2, jComputeBatteryRealtime));
        sb.append(")");
        printWriter.println(sb.toString());
        sb.setLength(0);
        sb.append(str);
        sb.append("     ");
        sb.append(str2);
        sb.append(" Tx time:     ");
        str2.getClass();
        String[] strArr = !str2.equals("Cellular") ? new String[]{"[0]", "[1]", "[2]", "[3]", "[4]"} : new String[]{"   less than 0dBm: ", "   0dBm to 8dBm: ", "   8dBm to 15dBm: ", "   15dBm to 20dBm: ", "   above 20dBm: "};
        int iMin = Math.min(controllerActivityCounter.getTxTimeCounters().length, strArr.length);
        if (iMin > 1) {
            printWriter.println(sb.toString());
            for (int i4 = 0; i4 < iMin; i4++) {
                long countLocked5 = controllerActivityCounter.getTxTimeCounters()[i4].getCountLocked(i2);
                sb.setLength(0);
                sb.append(str);
                sb.append("    ");
                sb.append(strArr[i4]);
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                formatTimeMs(sb, countLocked5);
                sb.append("(");
                sb.append(formatRatioLocked(countLocked5, jComputeBatteryRealtime));
                sb.append(")");
                printWriter.println(sb.toString());
            }
        } else {
            long countLocked6 = controllerActivityCounter.getTxTimeCounters()[0].getCountLocked(i2);
            formatTimeMs(sb, countLocked6);
            sb.append("(");
            sb.append(formatRatioLocked(countLocked6, jComputeBatteryRealtime));
            sb.append(")");
            printWriter.println(sb.toString());
        }
        if (countLocked3 > 0) {
            sb.setLength(0);
            sb.append(str);
            sb.append("     ");
            sb.append(str2);
            sb.append(" Battery drain: ");
            sb.append(BatteryStatsHelper.makemAh(countLocked3 / 3600000.0d));
            sb.append("mAh");
            printWriter.println(sb.toString());
        }
    }

    private final void printControllerActivityIfInteresting(PrintWriter printWriter, StringBuilder sb, String str, String str2, ControllerActivityCounter controllerActivityCounter, int i2) {
        if (controllerActivityHasData(controllerActivityCounter, i2)) {
            printControllerActivity(printWriter, sb, str, str2, controllerActivityCounter, i2);
        }
    }

    private void printSizeValue(PrintWriter printWriter, long j2) {
        String str;
        float f2 = j2;
        if (f2 >= 10240.0f) {
            f2 /= 1024.0f;
            str = "KB";
        } else {
            str = "";
        }
        if (f2 >= 10240.0f) {
            f2 /= 1024.0f;
            str = "MB";
        }
        if (f2 >= 10240.0f) {
            f2 /= 1024.0f;
            str = "GB";
        }
        if (f2 >= 10240.0f) {
            f2 /= 1024.0f;
            str = "TB";
        }
        if (f2 >= 10240.0f) {
            f2 /= 1024.0f;
            str = "PB";
        }
        printWriter.print((int) f2);
        printWriter.print(str);
    }

    private static final boolean printTimer(PrintWriter printWriter, StringBuilder sb, Timer timer, long j2, int i2, String str, String str2) {
        if (timer != null) {
            long totalTimeLocked = (timer.getTotalTimeLocked(j2, i2) + 500) / 1000;
            int countLocked = timer.getCountLocked(i2);
            if (totalTimeLocked != 0) {
                sb.setLength(0);
                sb.append(str);
                sb.append("    ");
                sb.append(str2);
                sb.append(": ");
                formatTimeMs(sb, totalTimeLocked);
                sb.append("realtime (");
                sb.append(countLocked);
                sb.append(" times)");
                long j3 = j2 / 1000;
                long maxDurationMsLocked = timer.getMaxDurationMsLocked(j3);
                if (maxDurationMsLocked >= 0) {
                    sb.append(" max=");
                    sb.append(maxDurationMsLocked);
                }
                if (timer.isRunningLocked()) {
                    long currentDurationMsLocked = timer.getCurrentDurationMsLocked(j3);
                    if (currentDurationMsLocked >= 0) {
                        sb.append(" (running for ");
                        sb.append(currentDurationMsLocked);
                        sb.append("ms)");
                    } else {
                        sb.append(" (running)");
                    }
                }
                printWriter.println(sb.toString());
                return true;
            }
        }
        return false;
    }

    private static final String printWakeLock(StringBuilder sb, Timer timer, long j2, String str, int i2, String str2) {
        if (timer != null) {
            long jComputeWakeLock = computeWakeLock(timer, j2, i2);
            int countLocked = timer.getCountLocked(i2);
            if (jComputeWakeLock != 0) {
                sb.append(str2);
                formatTimeMs(sb, jComputeWakeLock);
                if (str != null) {
                    sb.append(str);
                    sb.append(' ');
                }
                sb.append('(');
                sb.append(countLocked);
                sb.append(" times)");
                long j3 = j2 / 1000;
                long maxDurationMsLocked = timer.getMaxDurationMsLocked(j3);
                if (maxDurationMsLocked >= 0) {
                    sb.append(" max=");
                    sb.append(maxDurationMsLocked);
                }
                long totalDurationMsLocked = timer.getTotalDurationMsLocked(j3);
                if (totalDurationMsLocked > jComputeWakeLock) {
                    sb.append(" actual=");
                    sb.append(totalDurationMsLocked);
                }
                if (!timer.isRunningLocked()) {
                    return ", ";
                }
                long currentDurationMsLocked = timer.getCurrentDurationMsLocked(j3);
                if (currentDurationMsLocked < 0) {
                    sb.append(" (running)");
                    return ", ";
                }
                sb.append(" (running for ");
                sb.append(currentDurationMsLocked);
                sb.append("ms)");
                return ", ";
            }
        }
        return str2;
    }

    private static final String printWakeLockCheckin(StringBuilder sb, Timer timer, long j2, String str, int i2, String str2) {
        long totalTimeLocked;
        int countLocked;
        long totalDurationMsLocked;
        long currentDurationMsLocked;
        long maxDurationMsLocked;
        if (timer != null) {
            totalTimeLocked = timer.getTotalTimeLocked(j2, i2);
            countLocked = timer.getCountLocked(i2);
            long j3 = j2 / 1000;
            currentDurationMsLocked = timer.getCurrentDurationMsLocked(j3);
            maxDurationMsLocked = timer.getMaxDurationMsLocked(j3);
            totalDurationMsLocked = timer.getTotalDurationMsLocked(j3);
        } else {
            totalTimeLocked = 0;
            countLocked = 0;
            totalDurationMsLocked = 0;
            currentDurationMsLocked = 0;
            maxDurationMsLocked = 0;
        }
        sb.append(str2);
        sb.append((totalTimeLocked + 500) / 1000);
        sb.append(',');
        sb.append(str != null ? str.concat(",") : "");
        sb.append(countLocked);
        sb.append(',');
        sb.append(currentDurationMsLocked);
        sb.append(',');
        sb.append(maxDurationMsLocked);
        if (str != null) {
            sb.append(',');
            sb.append(totalDurationMsLocked);
        }
        return ",";
    }

    private void printmAh(PrintWriter printWriter, double d2) {
        printWriter.print(BatteryStatsHelper.makemAh(d2));
    }

    public abstract void commitCurrentHistoryBatchLocked();

    public abstract long computeBatteryRealtime(long j2, int i2);

    public abstract long computeBatteryScreenOffRealtime(long j2, int i2);

    public abstract long computeBatteryScreenOffUptime(long j2, int i2);

    public abstract long computeBatteryTimeRemaining(long j2);

    public abstract long computeBatteryUptime(long j2, int i2);

    public abstract long computeChargeTimeRemaining(long j2);

    public abstract long computeRealtime(long j2, int i2);

    public abstract long computeUptime(long j2, int i2);

    public final void dumpCheckinLocked(Context context, PrintWriter printWriter, int i2, int i3) {
        dumpCheckinLocked(context, printWriter, i2, i3, BatteryStatsHelper.checkWifiOnly(context));
    }

    public final void dumpLocked(Context context, PrintWriter printWriter, String str, int i2, int i3) {
        dumpLocked(context, printWriter, str, i2, i3, BatteryStatsHelper.checkWifiOnly(context));
    }

    public abstract void finishIteratingHistoryLocked();

    public abstract void finishIteratingOldHistoryLocked();

    public final String formatBytesLocked(long j2) {
        this.mFormatBuilder.setLength(0);
        if (j2 < 1024) {
            return j2 + "B";
        }
        if (j2 < 1048576) {
            this.mFormatter.format("%.2fKB", Double.valueOf(j2 / 1024.0d));
            return this.mFormatBuilder.toString();
        }
        if (j2 < 1073741824) {
            this.mFormatter.format("%.2fMB", Double.valueOf(j2 / 1048576.0d));
            return this.mFormatBuilder.toString();
        }
        this.mFormatter.format("%.2fGB", Double.valueOf(j2 / 1.073741824E9d));
        return this.mFormatBuilder.toString();
    }

    public final String formatRatioLocked(long j2, long j3) {
        if (j3 == 0) {
            return "--%";
        }
        this.mFormatBuilder.setLength(0);
        this.mFormatter.format("%.1f%%", Float.valueOf((j2 / j3) * 100.0f));
        return this.mFormatBuilder.toString();
    }

    public abstract long getBatteryRealtime(long j2);

    public abstract long getBatteryUptime(long j2);

    public abstract ControllerActivityCounter getBluetoothControllerActivity();

    public abstract long getBluetoothScanTime(long j2, int i2);

    public abstract long getCameraOnTime(long j2, int i2);

    public abstract LevelStepTracker getChargeLevelStepTracker();

    public abstract long[] getCpuFreqs();

    public abstract long getCurrentDailyStartTime();

    public abstract LevelStepTracker getDailyChargeLevelStepTracker();

    public abstract LevelStepTracker getDailyDischargeLevelStepTracker();

    public abstract DailyItem getDailyItemLocked(int i2);

    public abstract ArrayList<PackageChange> getDailyPackageChanges();

    public abstract int getDeviceIdleModeCount(int i2, int i3);

    public abstract long getDeviceIdleModeTime(int i2, long j2, int i3);

    public abstract int getDeviceIdlingCount(int i2, int i3);

    public abstract long getDeviceIdlingTime(int i2, long j2, int i3);

    public abstract int getDischargeAmount(int i2);

    public abstract int getDischargeAmountScreenDoze();

    public abstract int getDischargeAmountScreenDozeSinceCharge();

    public abstract int getDischargeAmountScreenOff();

    public abstract int getDischargeAmountScreenOffSinceCharge();

    public abstract int getDischargeAmountScreenOn();

    public abstract int getDischargeAmountScreenOnSinceCharge();

    public abstract int getDischargeCurrentLevel();

    public abstract LevelStepTracker getDischargeLevelStepTracker();

    public abstract int getDischargeStartLevel();

    public abstract String getEndPlatformVersion();

    public abstract int getEstimatedBatteryCapacity();

    public abstract long getFlashlightOnCount(int i2);

    public abstract long getFlashlightOnTime(long j2, int i2);

    public abstract long getGlobalWifiRunningTime(long j2, int i2);

    public abstract int getHighDischargeAmountSinceCharge();

    public abstract long getHistoryBaseTime();

    public abstract int getHistoryStringPoolBytes();

    public abstract int getHistoryStringPoolSize();

    public abstract String getHistoryTagPoolString(int i2);

    public abstract int getHistoryTagPoolUid(int i2);

    public abstract int getHistoryTotalSize();

    public abstract int getHistoryUsedSize();

    public abstract long getInteractiveTime(long j2, int i2);

    public abstract boolean getIsOnBattery();

    public abstract LongSparseArray<? extends Timer> getKernelMemoryStats();

    public abstract Map<String, ? extends Timer> getKernelWakelockStats();

    public abstract long getLongestDeviceIdleModeTime(int i2);

    public abstract int getLowDischargeAmountSinceCharge();

    public abstract long getMahDischarge(int i2);

    public abstract long getMahDischargeScreenDoze(int i2);

    public abstract long getMahDischargeScreenOff(int i2);

    public abstract int getMaxLearnedBatteryCapacity();

    public abstract int getMinLearnedBatteryCapacity();

    public abstract long getMobileRadioActiveAdjustedTime(int i2);

    public abstract int getMobileRadioActiveCount(int i2);

    public abstract long getMobileRadioActiveTime(long j2, int i2);

    public abstract int getMobileRadioActiveUnknownCount(int i2);

    public abstract long getMobileRadioActiveUnknownTime(int i2);

    public abstract ControllerActivityCounter getModemControllerActivity();

    public abstract long getNetworkActivityBytes(int i2, int i3);

    public abstract long getNetworkActivityPackets(int i2, int i3);

    public abstract boolean getNextHistoryLocked(HistoryItem historyItem);

    public abstract long getNextMaxDailyDeadline();

    public abstract long getNextMinDailyDeadline();

    public abstract boolean getNextOldHistoryLocked(HistoryItem historyItem);

    public abstract int getNumConnectivityChange(int i2);

    public abstract int getParcelVersion();

    public abstract int getPhoneDataConnectionCount(int i2, int i3);

    public abstract long getPhoneDataConnectionTime(int i2, long j2, int i3);

    public abstract int getPhoneOnCount(int i2);

    public abstract long getPhoneOnTime(long j2, int i2);

    public abstract long getPhoneSignalScanningTime(long j2, int i2);

    public abstract int getPhoneSignalStrengthCount(int i2, int i3);

    public abstract long getPhoneSignalStrengthTime(int i2, long j2, int i3);

    public abstract int getPowerSaveModeEnabledCount(int i2);

    public abstract long getPowerSaveModeEnabledTime(long j2, int i2);

    public abstract Map<String, ? extends Timer> getRpmStats();

    public abstract long getScreenBrightnessTime(int i2, long j2, int i3);

    public abstract int getScreenDozeCount(int i2);

    public abstract long getScreenDozeTime(long j2, int i2);

    public abstract Map<String, ? extends Timer> getScreenOffRpmStats();

    public abstract int getScreenOnCount(int i2);

    public abstract long getScreenOnTime(long j2, int i2);

    public abstract long getStartClockTime();

    public abstract int getStartCount();

    public abstract String getStartPlatformVersion();

    public abstract SparseArray<? extends Uid> getUidStats();

    public abstract Map<String, ? extends Timer> getWakeupReasonStats();

    public abstract ControllerActivityCounter getWifiControllerActivity();

    public abstract long getWifiOnTime(long j2, int i2);

    public abstract int getWifiSignalStrengthCount(int i2, int i3);

    public abstract long getWifiSignalStrengthTime(int i2, long j2, int i3);

    public abstract int getWifiStateCount(int i2, int i3);

    public abstract long getWifiStateTime(int i2, long j2, int i3);

    public abstract int getWifiSupplStateCount(int i2, int i3);

    public abstract long getWifiSupplStateTime(int i2, long j2, int i3);

    public abstract boolean hasBluetoothActivityReporting();

    public abstract boolean hasModemActivityReporting();

    public abstract boolean hasWifiActivityReporting();

    public void prepareForDumpLocked() {
    }

    public abstract boolean startIteratingHistoryLocked();

    public abstract boolean startIteratingOldHistoryLocked();

    public abstract void writeToParcelWithoutUids(Parcel parcel, int i2);

    private void printmAh(StringBuilder sb, double d2) {
        sb.append(BatteryStatsHelper.makemAh(d2));
    }

    /* JADX WARN: Code duplicated, block: B:222:0x0b2c  */
    /* JADX WARN: Failed to find 'out' block for switch in B:92:0x0715. Please report as an issue. */
    public final void dumpCheckinLocked(Context context, PrintWriter printWriter, int i2, int i3, boolean z2) {
        String str;
        SparseArray<? extends Uid> sparseArray;
        long j2;
        long[] jArr;
        long j3;
        int i4;
        int i5;
        long j4;
        StringBuilder sb;
        int i6;
        StringBuilder sb2;
        String str2;
        String str3;
        long j5;
        String str4;
        long[] cpuFreqTimes;
        long j6;
        long j7;
        long totalDurationMsLocked;
        long totalDurationMsLocked2;
        String str5;
        char c;
        String str6;
        int uid;
        String str7;
        int i7;
        long jUptimeMillis = SystemClock.uptimeMillis() * 1000;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j8 = (jElapsedRealtime + 500) / 1000;
        long batteryUptime = getBatteryUptime(jUptimeMillis);
        long jComputeBatteryUptime = computeBatteryUptime(jUptimeMillis, i2);
        long jComputeBatteryRealtime = computeBatteryRealtime(jElapsedRealtime, i2);
        long jComputeBatteryScreenOffUptime = computeBatteryScreenOffUptime(jUptimeMillis, i2);
        long jComputeBatteryScreenOffRealtime = computeBatteryScreenOffRealtime(jElapsedRealtime, i2);
        long jComputeRealtime = computeRealtime(jElapsedRealtime, i2);
        long jComputeUptime = computeUptime(jUptimeMillis, i2);
        long screenOnTime = getScreenOnTime(jElapsedRealtime, i2);
        long screenDozeTime = getScreenDozeTime(jElapsedRealtime, i2);
        long interactiveTime = getInteractiveTime(jElapsedRealtime, i2);
        long powerSaveModeEnabledTime = getPowerSaveModeEnabledTime(jElapsedRealtime, i2);
        long deviceIdleModeTime = getDeviceIdleModeTime(1, jElapsedRealtime, i2);
        long deviceIdleModeTime2 = getDeviceIdleModeTime(2, jElapsedRealtime, i2);
        long deviceIdlingTime = getDeviceIdlingTime(1, jElapsedRealtime, i2);
        long deviceIdlingTime2 = getDeviceIdlingTime(2, jElapsedRealtime, i2);
        int numConnectivityChange = getNumConnectivityChange(i2);
        long phoneOnTime = getPhoneOnTime(jElapsedRealtime, i2);
        long mahDischarge = getMahDischarge(i2);
        long mahDischargeScreenOff = getMahDischargeScreenOff(i2);
        long mahDischargeScreenDoze = getMahDischargeScreenDoze(i2);
        StringBuilder sb3 = new StringBuilder(128);
        SparseArray<? extends Uid> uidStats = getUidStats();
        StringBuilder sb4 = sb3;
        int size = uidStats.size();
        String str8 = STAT_NAMES[i2];
        Object[] objArr = new Object[12];
        objArr[0] = i2 == 0 ? Integer.valueOf(getStartCount()) : "N/A";
        objArr[1] = Long.valueOf(jComputeBatteryRealtime / 1000);
        objArr[2] = Long.valueOf(jComputeBatteryUptime / 1000);
        objArr[3] = Long.valueOf(jComputeRealtime / 1000);
        objArr[4] = Long.valueOf(jComputeUptime / 1000);
        objArr[5] = Long.valueOf(getStartClockTime());
        objArr[6] = Long.valueOf(jComputeBatteryScreenOffRealtime / 1000);
        objArr[7] = Long.valueOf(jComputeBatteryScreenOffUptime / 1000);
        objArr[8] = Integer.valueOf(getEstimatedBatteryCapacity());
        objArr[9] = Integer.valueOf(getMinLearnedBatteryCapacity());
        objArr[10] = Integer.valueOf(getMaxLearnedBatteryCapacity());
        objArr[11] = Long.valueOf(screenDozeTime / 1000);
        dumpLine(printWriter, 0, str8, BATTERY_DATA, objArr);
        long totalTimeLocked = 0;
        long totalTimeLocked2 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            ArrayMap<String, ? extends Uid.Wakelock> wakelockStats = uidStats.valueAt(i8).getWakelockStats();
            int i9 = 1;
            int size2 = wakelockStats.size() - 1;
            while (size2 >= 0) {
                Uid.Wakelock wakelockValueAt = wakelockStats.valueAt(size2);
                Timer wakeTime = wakelockValueAt.getWakeTime(i9);
                if (wakeTime != null) {
                    totalTimeLocked = wakeTime.getTotalTimeLocked(jElapsedRealtime, i2) + totalTimeLocked;
                }
                Timer wakeTime2 = wakelockValueAt.getWakeTime(0);
                if (wakeTime2 != null) {
                    totalTimeLocked2 = wakeTime2.getTotalTimeLocked(jElapsedRealtime, i2) + totalTimeLocked2;
                }
                size2--;
                i9 = 1;
            }
        }
        dumpLine(printWriter, 0, str8, GLOBAL_NETWORK_DATA, Long.valueOf(getNetworkActivityBytes(0, i2)), Long.valueOf(getNetworkActivityBytes(1, i2)), Long.valueOf(getNetworkActivityBytes(2, i2)), Long.valueOf(getNetworkActivityBytes(3, i2)), Long.valueOf(getNetworkActivityPackets(0, i2)), Long.valueOf(getNetworkActivityPackets(1, i2)), Long.valueOf(getNetworkActivityPackets(2, i2)), Long.valueOf(getNetworkActivityPackets(3, i2)), Long.valueOf(getNetworkActivityBytes(4, i2)), Long.valueOf(getNetworkActivityBytes(5, i2)));
        long j9 = batteryUptime;
        dumpControllerActivityLine(printWriter, 0, str8, GLOBAL_MODEM_CONTROLLER_DATA, getModemControllerActivity(), i2);
        dumpLine(printWriter, 0, str8, GLOBAL_WIFI_DATA, Long.valueOf(getWifiOnTime(jElapsedRealtime, i2) / 1000), Long.valueOf(getGlobalWifiRunningTime(jElapsedRealtime, i2) / 1000), 0, 0, 0);
        dumpControllerActivityLine(printWriter, 0, str8, GLOBAL_WIFI_CONTROLLER_DATA, getWifiControllerActivity(), i2);
        dumpControllerActivityLine(printWriter, 0, str8, GLOBAL_BLUETOOTH_CONTROLLER_DATA, getBluetoothControllerActivity(), i2);
        dumpLine(printWriter, 0, str8, MISC_DATA, Long.valueOf(screenOnTime / 1000), Long.valueOf(phoneOnTime / 1000), Long.valueOf(totalTimeLocked / 1000), Long.valueOf(totalTimeLocked2 / 1000), Long.valueOf(getMobileRadioActiveTime(jElapsedRealtime, i2) / 1000), Long.valueOf(getMobileRadioActiveAdjustedTime(i2) / 1000), Long.valueOf(interactiveTime / 1000), Long.valueOf(powerSaveModeEnabledTime / 1000), Integer.valueOf(numConnectivityChange), Long.valueOf(deviceIdleModeTime2 / 1000), Integer.valueOf(getDeviceIdleModeCount(2, i2)), Long.valueOf(deviceIdlingTime2 / 1000), Integer.valueOf(getDeviceIdlingCount(2, i2)), Integer.valueOf(getMobileRadioActiveCount(i2)), Long.valueOf(getMobileRadioActiveUnknownTime(i2) / 1000), Long.valueOf(deviceIdleModeTime / 1000), Integer.valueOf(getDeviceIdleModeCount(1, i2)), Long.valueOf(deviceIdlingTime / 1000), Integer.valueOf(getDeviceIdlingCount(1, i2)), Long.valueOf(getLongestDeviceIdleModeTime(1)), Long.valueOf(getLongestDeviceIdleModeTime(2)));
        Object[] objArr2 = new Object[5];
        for (int i10 = 0; i10 < 5; i10++) {
            objArr2[i10] = Long.valueOf(getScreenBrightnessTime(i10, jElapsedRealtime, i2) / 1000);
        }
        dumpLine(printWriter, 0, str8, "br", objArr2);
        Object[] objArr3 = new Object[5];
        int i11 = 0;
        for (int i12 = 5; i11 < i12; i12 = 5) {
            objArr3[i11] = Long.valueOf(getPhoneSignalStrengthTime(i11, jElapsedRealtime, i2) / 1000);
            i11++;
        }
        dumpLine(printWriter, 0, str8, SIGNAL_STRENGTH_TIME_DATA, objArr3);
        dumpLine(printWriter, 0, str8, SIGNAL_SCANNING_TIME_DATA, Long.valueOf(getPhoneSignalScanningTime(jElapsedRealtime, i2) / 1000));
        for (int i13 = 0; i13 < 5; i13++) {
            objArr3[i13] = Integer.valueOf(getPhoneSignalStrengthCount(i13, i2));
        }
        dumpLine(printWriter, 0, str8, SIGNAL_STRENGTH_COUNT_DATA, objArr3);
        Object[] objArr4 = new Object[17];
        for (int i14 = 0; i14 < 17; i14++) {
            objArr4[i14] = Long.valueOf(getPhoneDataConnectionTime(i14, jElapsedRealtime, i2) / 1000);
        }
        dumpLine(printWriter, 0, str8, DATA_CONNECTION_TIME_DATA, objArr4);
        for (int i15 = 0; i15 < 17; i15++) {
            objArr4[i15] = Integer.valueOf(getPhoneDataConnectionCount(i15, i2));
        }
        dumpLine(printWriter, 0, str8, DATA_CONNECTION_COUNT_DATA, objArr4);
        Object[] objArr5 = new Object[8];
        for (int i16 = 0; i16 < 8; i16++) {
            objArr5[i16] = Long.valueOf(getWifiStateTime(i16, jElapsedRealtime, i2) / 1000);
        }
        dumpLine(printWriter, 0, str8, WIFI_STATE_TIME_DATA, objArr5);
        for (int i17 = 0; i17 < 8; i17++) {
            objArr5[i17] = Integer.valueOf(getWifiStateCount(i17, i2));
        }
        dumpLine(printWriter, 0, str8, WIFI_STATE_COUNT_DATA, objArr5);
        Object[] objArr6 = new Object[13];
        for (int i18 = 0; i18 < 13; i18++) {
            objArr6[i18] = Long.valueOf(getWifiSupplStateTime(i18, jElapsedRealtime, i2) / 1000);
        }
        dumpLine(printWriter, 0, str8, WIFI_SUPPL_STATE_TIME_DATA, objArr6);
        for (int i19 = 0; i19 < 13; i19++) {
            objArr6[i19] = Integer.valueOf(getWifiSupplStateCount(i19, i2));
        }
        dumpLine(printWriter, 0, str8, WIFI_SUPPL_STATE_COUNT_DATA, objArr6);
        Object[] objArr7 = new Object[5];
        for (int i20 = 0; i20 < 5; i20++) {
            objArr7[i20] = Long.valueOf(getWifiSignalStrengthTime(i20, jElapsedRealtime, i2) / 1000);
        }
        dumpLine(printWriter, 0, str8, WIFI_SIGNAL_STRENGTH_TIME_DATA, objArr7);
        int i21 = 0;
        for (int i22 = 5; i21 < i22; i22 = 5) {
            objArr7[i21] = Integer.valueOf(getWifiSignalStrengthCount(i21, i2));
            i21++;
        }
        dumpLine(printWriter, 0, str8, WIFI_SIGNAL_STRENGTH_COUNT_DATA, objArr7);
        if (i2 == 2) {
            dumpLine(printWriter, 0, str8, BATTERY_LEVEL_DATA, Integer.valueOf(getDischargeStartLevel()), Integer.valueOf(getDischargeCurrentLevel()));
        }
        if (i2 == 2) {
            dumpLine(printWriter, 0, str8, BATTERY_DISCHARGE_DATA, Integer.valueOf(getDischargeStartLevel() - getDischargeCurrentLevel()), Integer.valueOf(getDischargeStartLevel() - getDischargeCurrentLevel()), Integer.valueOf(getDischargeAmountScreenOn()), Integer.valueOf(getDischargeAmountScreenOff()), Long.valueOf(mahDischarge / 1000), Long.valueOf(mahDischargeScreenOff / 1000), Integer.valueOf(getDischargeAmountScreenDoze()), Long.valueOf(mahDischargeScreenDoze / 1000));
        } else {
            dumpLine(printWriter, 0, str8, BATTERY_DISCHARGE_DATA, Integer.valueOf(getLowDischargeAmountSinceCharge()), Integer.valueOf(getHighDischargeAmountSinceCharge()), Integer.valueOf(getDischargeAmountScreenOnSinceCharge()), Integer.valueOf(getDischargeAmountScreenOffSinceCharge()), Long.valueOf(mahDischarge / 1000), Long.valueOf(mahDischargeScreenOff / 1000), Integer.valueOf(getDischargeAmountScreenDozeSinceCharge()), Long.valueOf(mahDischargeScreenDoze / 1000));
        }
        String str9 = "\"";
        String str10 = str8;
        if (i3 < 0) {
            Map<String, ? extends Timer> kernelWakelockStats = getKernelWakelockStats();
            if (kernelWakelockStats.size() > 0) {
                for (Map.Entry<String, ? extends Timer> entry : kernelWakelockStats.entrySet()) {
                    sb4.setLength(0);
                    String str11 = str10;
                    printWakeLockCheckin(sb4, entry.getValue(), jElapsedRealtime, null, i2, "");
                    dumpLine(printWriter, 0, str11, KERNEL_WAKELOCK_DATA, android.accessibilityservice.c.n(new StringBuilder("\""), entry.getKey(), "\""), sb4.toString());
                    uidStats = uidStats;
                    str10 = str11;
                }
            }
            str = str10;
            sparseArray = uidStats;
            j2 = j8;
            Map<String, ? extends Timer> wakeupReasonStats = getWakeupReasonStats();
            if (wakeupReasonStats.size() > 0) {
                for (Map.Entry<String, ? extends Timer> entry2 : wakeupReasonStats.entrySet()) {
                    dumpLine(printWriter, 0, str, WAKEUP_REASON_DATA, android.accessibilityservice.c.n(new StringBuilder("\""), entry2.getKey(), "\""), Long.valueOf((entry2.getValue().getTotalTimeLocked(jElapsedRealtime, i2) + 500) / 1000), Integer.valueOf(entry2.getValue().getCountLocked(i2)));
                }
            }
        } else {
            str = str10;
            sparseArray = uidStats;
            j2 = j8;
        }
        Map<String, ? extends Timer> rpmStats = getRpmStats();
        Map<String, ? extends Timer> screenOffRpmStats = getScreenOffRpmStats();
        if (rpmStats.size() > 0) {
            Iterator<Map.Entry<String, ? extends Timer>> it = rpmStats.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, ? extends Timer> next = it.next();
                StringBuilder sb5 = sb4;
                sb5.setLength(0);
                Timer value = next.getValue();
                long totalTimeLocked3 = (value.getTotalTimeLocked(jElapsedRealtime, i2) + 500) / 1000;
                int countLocked = value.getCountLocked(i2);
                Iterator<Map.Entry<String, ? extends Timer>> it2 = it;
                Timer timer = screenOffRpmStats.get(next.getKey());
                if (timer != null) {
                    long totalTimeLocked4 = (timer.getTotalTimeLocked(jElapsedRealtime, i2) + 500) / 1000;
                }
                if (timer != null) {
                    timer.getCountLocked(i2);
                }
                dumpLine(printWriter, 0, str, RESOURCE_POWER_MANAGER_DATA, android.accessibilityservice.c.n(new StringBuilder("\""), next.getKey(), "\""), Long.valueOf(totalTimeLocked3), Integer.valueOf(countLocked));
                sb4 = sb5;
                it = it2;
                screenOffRpmStats = screenOffRpmStats;
            }
        }
        StringBuilder sb6 = sb4;
        BatteryStatsHelper batteryStatsHelper = new BatteryStatsHelper(context, false, z2);
        batteryStatsHelper.create(this);
        batteryStatsHelper.refreshStats(i2, -1);
        List<BatterySipper> usageList = batteryStatsHelper.getUsageList();
        if (usageList != null && usageList.size() > 0) {
            dumpLine(printWriter, 0, str, POWER_USE_SUMMARY_DATA, BatteryStatsHelper.makemAh(batteryStatsHelper.getPowerProfile().getBatteryCapacity()), BatteryStatsHelper.makemAh(batteryStatsHelper.getComputedPower()), BatteryStatsHelper.makemAh(batteryStatsHelper.getMinDrainedPower()), BatteryStatsHelper.makemAh(batteryStatsHelper.getMaxDrainedPower()));
            int i23 = 0;
            while (i23 < usageList.size()) {
                BatterySipper batterySipper = usageList.get(i23);
                switch (AnonymousClass2.$SwitchMap$com$android$internal$os$BatterySipper$DrainType[batterySipper.drainType.ordinal()]) {
                    case 1:
                        str6 = "idle";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 2:
                        str6 = "cell";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 3:
                        str6 = "phone";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 4:
                        str6 = "wifi";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 5:
                        str6 = "blue";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 6:
                        str6 = "scrn";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 7:
                        str6 = "flashlight";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 8:
                        uid = batterySipper.uidObj.getUid();
                        str7 = "uid";
                        i7 = 5;
                        break;
                    case 9:
                        uid = UserHandle.getUid(batterySipper.userId, 0);
                        str7 = "user";
                        i7 = 5;
                        break;
                    case 10:
                        str6 = "unacc";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 11:
                        str6 = "over";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    case 12:
                        str6 = Context.CAMERA_SERVICE;
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                    default:
                        str6 = "???";
                        i7 = 5;
                        str7 = str6;
                        uid = 0;
                        break;
                }
                Object[] objArr8 = new Object[i7];
                objArr8[0] = str7;
                objArr8[1] = BatteryStatsHelper.makemAh(batterySipper.totalPowerMah);
                objArr8[2] = Integer.valueOf(batterySipper.shouldHide ? 1 : 0);
                objArr8[3] = BatteryStatsHelper.makemAh(batterySipper.screenPowerMah);
                objArr8[4] = BatteryStatsHelper.makemAh(batterySipper.proportionalSmearMah);
                dumpLine(printWriter, uid, str, POWER_USE_ITEM_DATA, objArr8);
                i23++;
                usageList = usageList;
            }
        }
        long[] cpuFreqs = getCpuFreqs();
        String str12 = ",";
        if (cpuFreqs != null) {
            int i24 = 0;
            sb6.setLength(0);
            while (i24 < cpuFreqs.length) {
                StringBuilder sb7 = new StringBuilder();
                sb7.append(i24 == 0 ? "" : ",");
                sb7.append(cpuFreqs[i24]);
                sb6.append(sb7.toString());
                i24++;
            }
            dumpLine(printWriter, 0, str, GLOBAL_CPU_FREQ_DATA, sb6.toString());
        }
        int i25 = 0;
        while (i25 < size) {
            int iKeyAt = sparseArray.keyAt(i25);
            SparseArray<? extends Uid> sparseArray2 = sparseArray;
            if (i3 < 0 || iKeyAt == i3) {
                Uid uidValueAt = sparseArray2.valueAt(i25);
                long networkActivityBytes = uidValueAt.getNetworkActivityBytes(0, i2);
                long networkActivityBytes2 = uidValueAt.getNetworkActivityBytes(1, i2);
                long networkActivityBytes3 = uidValueAt.getNetworkActivityBytes(2, i2);
                long networkActivityBytes4 = uidValueAt.getNetworkActivityBytes(3, i2);
                long networkActivityPackets = uidValueAt.getNetworkActivityPackets(0, i2);
                long networkActivityPackets2 = uidValueAt.getNetworkActivityPackets(1, i2);
                long mobileRadioActiveTime = uidValueAt.getMobileRadioActiveTime(i2);
                int mobileRadioActiveCount = uidValueAt.getMobileRadioActiveCount(i2);
                long mobileRadioApWakeupCount = uidValueAt.getMobileRadioApWakeupCount(i2);
                long networkActivityPackets3 = uidValueAt.getNetworkActivityPackets(2, i2);
                long networkActivityPackets4 = uidValueAt.getNetworkActivityPackets(3, i2);
                long wifiRadioApWakeupCount = uidValueAt.getWifiRadioApWakeupCount(i2);
                long networkActivityBytes5 = uidValueAt.getNetworkActivityBytes(4, i2);
                long networkActivityBytes6 = uidValueAt.getNetworkActivityBytes(5, i2);
                long networkActivityBytes7 = uidValueAt.getNetworkActivityBytes(6, i2);
                long networkActivityBytes8 = uidValueAt.getNetworkActivityBytes(7, i2);
                long networkActivityBytes9 = uidValueAt.getNetworkActivityBytes(8, i2);
                long networkActivityBytes10 = uidValueAt.getNetworkActivityBytes(9, i2);
                long networkActivityPackets5 = uidValueAt.getNetworkActivityPackets(6, i2);
                long networkActivityPackets6 = uidValueAt.getNetworkActivityPackets(7, i2);
                long networkActivityPackets7 = uidValueAt.getNetworkActivityPackets(8, i2);
                long networkActivityPackets8 = uidValueAt.getNetworkActivityPackets(9, i2);
                if (networkActivityBytes > 0 || networkActivityBytes2 > 0 || networkActivityBytes3 > 0 || networkActivityBytes4 > 0 || networkActivityPackets > 0 || networkActivityPackets2 > 0 || networkActivityPackets3 > 0 || networkActivityPackets4 > 0 || mobileRadioActiveTime > 0 || mobileRadioActiveCount > 0 || networkActivityBytes5 > 0 || networkActivityBytes6 > 0 || mobileRadioApWakeupCount > 0 || wifiRadioApWakeupCount > 0 || networkActivityBytes7 > 0 || networkActivityBytes8 > 0 || networkActivityBytes9 > 0 || networkActivityBytes10 > 0 || networkActivityPackets5 > 0 || networkActivityPackets6 > 0 || networkActivityPackets7 > 0 || networkActivityPackets8 > 0) {
                    dumpLine(printWriter, iKeyAt, str, NETWORK_DATA, Long.valueOf(networkActivityBytes), Long.valueOf(networkActivityBytes2), Long.valueOf(networkActivityBytes3), Long.valueOf(networkActivityBytes4), Long.valueOf(networkActivityPackets), Long.valueOf(networkActivityPackets2), Long.valueOf(networkActivityPackets3), Long.valueOf(networkActivityPackets4), Long.valueOf(mobileRadioActiveTime), Integer.valueOf(mobileRadioActiveCount), Long.valueOf(networkActivityBytes5), Long.valueOf(networkActivityBytes6), Long.valueOf(mobileRadioApWakeupCount), Long.valueOf(wifiRadioApWakeupCount), Long.valueOf(networkActivityBytes7), Long.valueOf(networkActivityBytes8), Long.valueOf(networkActivityBytes9), Long.valueOf(networkActivityBytes10), Long.valueOf(networkActivityPackets5), Long.valueOf(networkActivityPackets6), Long.valueOf(networkActivityPackets7), Long.valueOf(networkActivityPackets8));
                }
                jArr = cpuFreqs;
                String str13 = str12;
                dumpControllerActivityLine(printWriter, iKeyAt, str, MODEM_CONTROLLER_DATA, uidValueAt.getModemControllerActivity(), i2);
                long fullWifiLockTime = uidValueAt.getFullWifiLockTime(jElapsedRealtime, i2);
                long wifiScanTime = uidValueAt.getWifiScanTime(jElapsedRealtime, i2);
                int wifiScanCount = uidValueAt.getWifiScanCount(i2);
                int wifiScanBackgroundCount = uidValueAt.getWifiScanBackgroundCount(i2);
                long wifiScanActualTime = (uidValueAt.getWifiScanActualTime(jElapsedRealtime) + 500) / 1000;
                long wifiScanBackgroundTime = (uidValueAt.getWifiScanBackgroundTime(jElapsedRealtime) + 500) / 1000;
                long wifiRunningTime = uidValueAt.getWifiRunningTime(jElapsedRealtime, i2);
                if (fullWifiLockTime != 0 || wifiScanTime != 0 || wifiScanCount != 0 || wifiScanBackgroundCount != 0 || wifiScanActualTime != 0 || wifiScanBackgroundTime != 0 || wifiRunningTime != 0) {
                    dumpLine(printWriter, iKeyAt, str, WIFI_DATA, Long.valueOf(fullWifiLockTime), Long.valueOf(wifiScanTime), Long.valueOf(wifiRunningTime), Integer.valueOf(wifiScanCount), 0, 0, 0, Integer.valueOf(wifiScanBackgroundCount), Long.valueOf(wifiScanActualTime), Long.valueOf(wifiScanBackgroundTime));
                }
                dumpControllerActivityLine(printWriter, iKeyAt, str, WIFI_CONTROLLER_DATA, uidValueAt.getWifiControllerActivity(), i2);
                Timer bluetoothScanTimer = uidValueAt.getBluetoothScanTimer();
                if (bluetoothScanTimer != null) {
                    long totalTimeLocked5 = (bluetoothScanTimer.getTotalTimeLocked(jElapsedRealtime, i2) + 500) / 1000;
                    if (totalTimeLocked5 != 0) {
                        int countLocked2 = bluetoothScanTimer.getCountLocked(i2);
                        Timer bluetoothScanBackgroundTimer = uidValueAt.getBluetoothScanBackgroundTimer();
                        int countLocked3 = bluetoothScanBackgroundTimer != null ? bluetoothScanBackgroundTimer.getCountLocked(i2) : 0;
                        j3 = j2;
                        long totalDurationMsLocked3 = bluetoothScanTimer.getTotalDurationMsLocked(j3);
                        long totalDurationMsLocked4 = bluetoothScanBackgroundTimer != null ? bluetoothScanBackgroundTimer.getTotalDurationMsLocked(j3) : 0L;
                        int countLocked4 = uidValueAt.getBluetoothScanResultCounter() != null ? uidValueAt.getBluetoothScanResultCounter().getCountLocked(i2) : 0;
                        int countLocked5 = uidValueAt.getBluetoothScanResultBgCounter() != null ? uidValueAt.getBluetoothScanResultBgCounter().getCountLocked(i2) : 0;
                        Timer bluetoothUnoptimizedScanTimer = uidValueAt.getBluetoothUnoptimizedScanTimer();
                        long totalDurationMsLocked5 = bluetoothUnoptimizedScanTimer != null ? bluetoothUnoptimizedScanTimer.getTotalDurationMsLocked(j3) : 0L;
                        long maxDurationMsLocked = bluetoothUnoptimizedScanTimer != null ? bluetoothUnoptimizedScanTimer.getMaxDurationMsLocked(j3) : 0L;
                        Timer bluetoothUnoptimizedScanBackgroundTimer = uidValueAt.getBluetoothUnoptimizedScanBackgroundTimer();
                        dumpLine(printWriter, iKeyAt, str, BLUETOOTH_MISC_DATA, Long.valueOf(totalTimeLocked5), Integer.valueOf(countLocked2), Integer.valueOf(countLocked3), Long.valueOf(totalDurationMsLocked3), Long.valueOf(totalDurationMsLocked4), Integer.valueOf(countLocked4), Integer.valueOf(countLocked5), Long.valueOf(totalDurationMsLocked5), Long.valueOf(bluetoothUnoptimizedScanBackgroundTimer != null ? bluetoothUnoptimizedScanBackgroundTimer.getTotalDurationMsLocked(j3) : 0L), Long.valueOf(maxDurationMsLocked), Long.valueOf(bluetoothUnoptimizedScanBackgroundTimer != null ? bluetoothUnoptimizedScanBackgroundTimer.getMaxDurationMsLocked(j3) : 0L));
                    } else {
                        j3 = j2;
                    }
                } else {
                    j3 = j2;
                }
                dumpControllerActivityLine(printWriter, iKeyAt, str, BLUETOOTH_CONTROLLER_DATA, uidValueAt.getBluetoothControllerActivity(), i2);
                if (uidValueAt.hasUserActivity()) {
                    Object[] objArr9 = new Object[4];
                    int i26 = 0;
                    boolean z3 = false;
                    for (int i27 = 4; i26 < i27; i27 = 4) {
                        int userActivityCount = uidValueAt.getUserActivityCount(i26, i2);
                        objArr9[i26] = Integer.valueOf(userActivityCount);
                        if (userActivityCount != 0) {
                            z3 = true;
                        }
                        i26++;
                    }
                    if (z3) {
                        dumpLine(printWriter, iKeyAt, str, USER_ACTIVITY_DATA, objArr9);
                    }
                }
                if (uidValueAt.getAggregatedPartialWakelockTimer() != null) {
                    Timer aggregatedPartialWakelockTimer = uidValueAt.getAggregatedPartialWakelockTimer();
                    long totalDurationMsLocked6 = aggregatedPartialWakelockTimer.getTotalDurationMsLocked(j3);
                    Timer subTimer = aggregatedPartialWakelockTimer.getSubTimer();
                    i4 = 1;
                    dumpLine(printWriter, iKeyAt, str, AGGREGATED_WAKELOCK_DATA, Long.valueOf(totalDurationMsLocked6), Long.valueOf(subTimer != null ? subTimer.getTotalDurationMsLocked(j3) : 0L));
                } else {
                    i4 = 1;
                }
                ArrayMap<String, ? extends Uid.Wakelock> wakelockStats2 = uidValueAt.getWakelockStats();
                int size3 = wakelockStats2.size() - i4;
                while (size3 >= 0) {
                    Uid.Wakelock wakelockValueAt2 = wakelockStats2.valueAt(size3);
                    sb6.setLength(0);
                    Timer wakeTime3 = wakelockValueAt2.getWakeTime(i4);
                    String str14 = str9;
                    long j10 = jElapsedRealtime;
                    long j11 = j3;
                    int i28 = size3;
                    StringBuilder sb8 = sb6;
                    String strPrintWakeLockCheckin = printWakeLockCheckin(sb6, wakeTime3, j10, FullBackup.FILES_TREE_TOKEN, i2, "");
                    Timer wakeTime4 = wakelockValueAt2.getWakeTime(0);
                    String strPrintWakeLockCheckin2 = printWakeLockCheckin(sb8, wakeTime4, j10, TtmlUtils.TAG_P, i2, strPrintWakeLockCheckin);
                    long j12 = jElapsedRealtime;
                    printWakeLockCheckin(sb8, wakelockValueAt2.getWakeTime(2), j12, "w", i2, printWakeLockCheckin(sb8, wakeTime4 != null ? wakeTime4.getSubTimer() : null, j12, "bp", i2, strPrintWakeLockCheckin2));
                    if (sb8.length() > 0) {
                        String strKeyAt = wakelockStats2.keyAt(i28);
                        if (strKeyAt.indexOf(44) >= 0) {
                            c = '_';
                            strKeyAt = strKeyAt.replace(',', '_');
                        } else {
                            c = '_';
                        }
                        if (strKeyAt.indexOf(10) >= 0) {
                            strKeyAt = strKeyAt.replace('\n', c);
                        }
                        if (strKeyAt.indexOf(13) >= 0) {
                            strKeyAt = strKeyAt.replace('\r', c);
                        }
                        i4 = 1;
                        dumpLine(printWriter, iKeyAt, str, WAKELOCK_DATA, strKeyAt, sb8.toString());
                    } else {
                        i4 = 1;
                    }
                    size3 = i28 - 1;
                    sb6 = sb8;
                    str9 = str14;
                    j3 = j11;
                }
                StringBuilder sb9 = sb6;
                long j13 = j3;
                String str15 = str9;
                ArrayMap<String, ? extends Timer> syncStats = uidValueAt.getSyncStats();
                int size4 = syncStats.size() - i4;
                while (size4 >= 0) {
                    Timer timerValueAt = syncStats.valueAt(size4);
                    long j14 = jElapsedRealtime;
                    long totalTimeLocked6 = (timerValueAt.getTotalTimeLocked(j14, i2) + 500) / 1000;
                    int countLocked6 = timerValueAt.getCountLocked(i2);
                    Timer subTimer2 = timerValueAt.getSubTimer();
                    if (subTimer2 != null) {
                        j13 = j13;
                        totalDurationMsLocked2 = subTimer2.getTotalDurationMsLocked(j13);
                    } else {
                        j13 = j13;
                        totalDurationMsLocked2 = -1;
                    }
                    int countLocked7 = subTimer2 != null ? subTimer2.getCountLocked(i2) : -1;
                    if (totalTimeLocked6 != 0) {
                        str5 = str15;
                        dumpLine(printWriter, iKeyAt, str, SYNC_DATA, android.accessibilityservice.c.n(new StringBuilder(str5), syncStats.keyAt(size4), str5), Long.valueOf(totalTimeLocked6), Integer.valueOf(countLocked6), Long.valueOf(totalDurationMsLocked2), Integer.valueOf(countLocked7));
                    } else {
                        str5 = str15;
                    }
                    size4--;
                    syncStats = syncStats;
                    str15 = str5;
                    jElapsedRealtime = j14;
                }
                long j15 = jElapsedRealtime;
                String str16 = str15;
                ArrayMap<String, ? extends Timer> jobStats = uidValueAt.getJobStats();
                int size5 = jobStats.size() - 1;
                while (size5 >= 0) {
                    Timer timerValueAt2 = jobStats.valueAt(size5);
                    long totalTimeLocked7 = (timerValueAt2.getTotalTimeLocked(j15, i2) + 500) / 1000;
                    int countLocked8 = timerValueAt2.getCountLocked(i2);
                    Timer subTimer3 = timerValueAt2.getSubTimer();
                    if (subTimer3 != null) {
                        j7 = j13;
                        totalDurationMsLocked = subTimer3.getTotalDurationMsLocked(j7);
                    } else {
                        j7 = j13;
                        totalDurationMsLocked = -1;
                    }
                    int countLocked9 = subTimer3 != null ? subTimer3.getCountLocked(i2) : -1;
                    if (totalTimeLocked7 != 0) {
                        dumpLine(printWriter, iKeyAt, str, JOB_DATA, android.accessibilityservice.c.n(new StringBuilder(str16), jobStats.keyAt(size5), str16), Long.valueOf(totalTimeLocked7), Integer.valueOf(countLocked8), Long.valueOf(totalDurationMsLocked), Integer.valueOf(countLocked9));
                    }
                    size5--;
                    jobStats = jobStats;
                    j13 = j7;
                    j15 = j15;
                }
                long j16 = j15;
                long j17 = j13;
                ArrayMap<String, SparseIntArray> jobCompletionStats = uidValueAt.getJobCompletionStats();
                for (int size6 = jobCompletionStats.size() - 1; size6 >= 0; size6--) {
                    SparseIntArray sparseIntArrayValueAt = jobCompletionStats.valueAt(size6);
                    if (sparseIntArrayValueAt != null) {
                        dumpLine(printWriter, iKeyAt, str, JOB_COMPLETION_DATA, android.accessibilityservice.c.n(new StringBuilder(str16), jobCompletionStats.keyAt(size6), str16), Integer.valueOf(sparseIntArrayValueAt.get(0, 0)), Integer.valueOf(sparseIntArrayValueAt.get(1, 0)), Integer.valueOf(sparseIntArrayValueAt.get(2, 0)), Integer.valueOf(sparseIntArrayValueAt.get(3, 0)), Integer.valueOf(sparseIntArrayValueAt.get(4, 0)));
                    }
                }
                String str17 = str;
                String str18 = str16;
                dumpTimer(printWriter, iKeyAt, str17, FLASHLIGHT_DATA, uidValueAt.getFlashlightTurnedOnTimer(), j16, i2);
                dumpTimer(printWriter, iKeyAt, str17, CAMERA_DATA, uidValueAt.getCameraTurnedOnTimer(), j16, i2);
                dumpTimer(printWriter, iKeyAt, str17, VIDEO_DATA, uidValueAt.getVideoTurnedOnTimer(), j16, i2);
                dumpTimer(printWriter, iKeyAt, str17, AUDIO_DATA, uidValueAt.getAudioTurnedOnTimer(), j16, i2);
                SparseArray<? extends Uid.Sensor> sensorStats = uidValueAt.getSensorStats();
                int size7 = sensorStats.size();
                int i29 = 0;
                while (i29 < size7) {
                    Uid.Sensor sensorValueAt = sensorStats.valueAt(i29);
                    int iKeyAt2 = sensorStats.keyAt(i29);
                    Timer sensorTime = sensorValueAt.getSensorTime();
                    if (sensorTime != null) {
                        j6 = j16;
                        long totalTimeLocked8 = (sensorTime.getTotalTimeLocked(j6, i2) + 500) / 1000;
                        if (totalTimeLocked8 != 0) {
                            int countLocked10 = sensorTime.getCountLocked(i2);
                            Timer sensorBackgroundTime = sensorValueAt.getSensorBackgroundTime();
                            dumpLine(printWriter, iKeyAt, str, SENSOR_DATA, Integer.valueOf(iKeyAt2), Long.valueOf(totalTimeLocked8), Integer.valueOf(countLocked10), Integer.valueOf(sensorBackgroundTime != null ? sensorBackgroundTime.getCountLocked(i2) : 0), Long.valueOf(sensorTime.getTotalDurationMsLocked(j17)), Long.valueOf(sensorBackgroundTime != null ? sensorBackgroundTime.getTotalDurationMsLocked(j17) : 0L));
                        }
                    } else {
                        j6 = j16;
                    }
                    i29++;
                    j16 = j6;
                }
                String str19 = str;
                long j18 = j16;
                dumpTimer(printWriter, iKeyAt, str19, VIBRATOR_DATA, uidValueAt.getVibratorOnTimer(), j18, i2);
                dumpTimer(printWriter, iKeyAt, str19, FOREGROUND_ACTIVITY_DATA, uidValueAt.getForegroundActivityTimer(), j18, i2);
                dumpTimer(printWriter, iKeyAt, str19, FOREGROUND_SERVICE_DATA, uidValueAt.getForegroundServiceTimer(), j18, i2);
                Object[] objArr10 = new Object[6];
                int i30 = 0;
                long j19 = 0;
                while (i30 < 6) {
                    long j20 = j16;
                    long processStateTime = uidValueAt.getProcessStateTime(i30, j20, i2);
                    j19 += processStateTime;
                    objArr10[i30] = Long.valueOf((processStateTime + 500) / 1000);
                    i30++;
                    j16 = j20;
                }
                long j21 = j16;
                if (j19 > 0) {
                    dumpLine(printWriter, iKeyAt, str, "st", objArr10);
                }
                long userCpuTimeUs = uidValueAt.getUserCpuTimeUs(i2);
                long systemCpuTimeUs = uidValueAt.getSystemCpuTimeUs(i2);
                if (userCpuTimeUs > 0 || systemCpuTimeUs > 0) {
                    dumpLine(printWriter, iKeyAt, str, CPU_DATA, Long.valueOf(userCpuTimeUs / 1000), Long.valueOf(systemCpuTimeUs / 1000), 0);
                    i5 = 0;
                } else {
                    i5 = 0;
                }
                if (jArr == null || (cpuFreqTimes = uidValueAt.getCpuFreqTimes(i2)) == null) {
                    j4 = j21;
                    str13 = str13;
                    sb = sb9;
                    i6 = 1;
                } else {
                    long[] jArr2 = jArr;
                    if (cpuFreqTimes.length == jArr2.length) {
                        sb = sb9;
                        sb.setLength(i5);
                        int i31 = 0;
                        while (i31 < cpuFreqTimes.length) {
                            StringBuilder sb10 = new StringBuilder();
                            sb10.append(i31 == 0 ? "" : str13);
                            sb10.append(cpuFreqTimes[i31]);
                            sb.append(sb10.toString());
                            i31++;
                            jArr2 = jArr2;
                            j21 = j21;
                        }
                        jArr = jArr2;
                        j4 = j21;
                        long[] screenOffCpuFreqTimes = uidValueAt.getScreenOffCpuFreqTimes(i2);
                        if (screenOffCpuFreqTimes != null) {
                            for (long j22 : screenOffCpuFreqTimes) {
                                sb.append(str13 + j22);
                            }
                        } else {
                            for (int i32 = 0; i32 < cpuFreqTimes.length; i32++) {
                                sb.append(",0");
                            }
                        }
                        i6 = 1;
                        dumpLine(printWriter, iKeyAt, str, CPU_TIMES_AT_FREQ_DATA, "A", Integer.valueOf(cpuFreqTimes.length), sb.toString());
                    } else {
                        jArr = jArr2;
                        j4 = j21;
                        str13 = str13;
                        sb = sb9;
                        i6 = 1;
                    }
                }
                ArrayMap<String, ? extends Uid.Proc> processStats = uidValueAt.getProcessStats();
                int size8 = processStats.size() - i6;
                while (size8 >= 0) {
                    Uid.Proc procValueAt = processStats.valueAt(size8);
                    long userTime = procValueAt.getUserTime(i2);
                    long systemTime = procValueAt.getSystemTime(i2);
                    long foregroundTime = procValueAt.getForegroundTime(i2);
                    int starts = procValueAt.getStarts(i2);
                    int numCrashes = procValueAt.getNumCrashes(i2);
                    int numAnrs = procValueAt.getNumAnrs(i2);
                    if (userTime == 0 && systemTime == 0 && foregroundTime == 0 && starts == 0 && numAnrs == 0 && numCrashes == 0) {
                        str4 = str18;
                    } else {
                        str4 = str18;
                        dumpLine(printWriter, iKeyAt, str, PROCESS_DATA, android.accessibilityservice.c.n(new StringBuilder(str4), processStats.keyAt(size8), str4), Long.valueOf(userTime), Long.valueOf(systemTime), Long.valueOf(foregroundTime), Integer.valueOf(starts), Integer.valueOf(numAnrs), Integer.valueOf(numCrashes));
                    }
                    size8--;
                    str18 = str4;
                    j17 = j17;
                    str13 = str13;
                    sb = sb;
                }
                sb2 = sb;
                str2 = str13;
                j2 = j17;
                str3 = str18;
                ArrayMap<String, ? extends Uid.Pkg> packageStats = uidValueAt.getPackageStats();
                int i33 = 1;
                for (int size9 = packageStats.size() - 1; size9 >= 0; size9--) {
                    Uid.Pkg pkgValueAt = packageStats.valueAt(size9);
                    ArrayMap<String, ? extends Counter> wakeupAlarmStats = pkgValueAt.getWakeupAlarmStats();
                    int i34 = 0;
                    for (int size10 = wakeupAlarmStats.size() - i33; size10 >= 0; size10--) {
                        int countLocked11 = wakeupAlarmStats.valueAt(size10).getCountLocked(i2);
                        i34 += countLocked11;
                        dumpLine(printWriter, iKeyAt, str, WAKEUP_ALARM_DATA, wakeupAlarmStats.keyAt(size10).replace(',', '_'), Integer.valueOf(countLocked11));
                    }
                    ArrayMap<String, ? extends Uid.Pkg.Serv> serviceStats = pkgValueAt.getServiceStats();
                    int size11 = serviceStats.size() - 1;
                    while (size11 >= 0) {
                        Uid.Pkg.Serv servValueAt = serviceStats.valueAt(size11);
                        long j23 = j9;
                        long startTime = servValueAt.getStartTime(j23, i2);
                        int starts2 = servValueAt.getStarts(i2);
                        int launches = servValueAt.getLaunches(i2);
                        if (startTime != 0 || starts2 != 0 || launches != 0) {
                            dumpLine(printWriter, iKeyAt, str, APK_DATA, Integer.valueOf(i34), packageStats.keyAt(size9), serviceStats.keyAt(size11), Long.valueOf(startTime / 1000), Integer.valueOf(starts2), Integer.valueOf(launches));
                        }
                        size11--;
                        j9 = j23;
                    }
                    i33 = 1;
                }
                j5 = j9;
            } else {
                jArr = cpuFreqs;
                str2 = str12;
                sb2 = sb6;
                size = size;
                j4 = jElapsedRealtime;
                str3 = str9;
                j5 = j9;
            }
            i25++;
            cpuFreqs = jArr;
            j9 = j5;
            str9 = str3;
            sparseArray = sparseArray2;
            size = size;
            jElapsedRealtime = j4;
            str12 = str2;
            sb6 = sb2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:259:0x0e93  */
    /* JADX WARN: Code duplicated, block: B:262:0x0ea8 A[LOOP:12: B:260:0x0ea2->B:262:0x0ea8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:266:0x0ef7  */
    /* JADX WARN: Code duplicated, block: B:269:0x0f12 A[LOOP:13: B:267:0x0f0c->B:269:0x0f12, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:273:0x0f47 A[LOOP:14: B:271:0x0f41->B:273:0x0f47, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:275:0x0f85  */
    /* JADX WARN: Code duplicated, block: B:438:0x15e9  */
    /* JADX WARN: Code duplicated, block: B:520:0x1844  */
    /* JADX WARN: Code duplicated, block: B:522:0x1860  */
    /* JADX WARN: Code duplicated, block: B:523:0x186b  */
    /* JADX WARN: Code duplicated, block: B:526:0x1877  */
    /* JADX WARN: Code duplicated, block: B:527:0x187c  */
    /* JADX WARN: Code duplicated, block: B:530:0x1896  */
    /* JADX WARN: Code duplicated, block: B:532:0x18ab  */
    /* JADX WARN: Code duplicated, block: B:533:0x18bd  */
    /* JADX WARN: Code duplicated, block: B:537:0x18f0  */
    /* JADX WARN: Code duplicated, block: B:539:0x190c  */
    /* JADX WARN: Code duplicated, block: B:540:0x1915  */
    /* JADX WARN: Code duplicated, block: B:543:0x191f  */
    /* JADX WARN: Code duplicated, block: B:544:0x1924  */
    /* JADX WARN: Code duplicated, block: B:547:0x193c  */
    /* JADX WARN: Code duplicated, block: B:549:0x1951  */
    /* JADX WARN: Code duplicated, block: B:550:0x1963  */
    /* JADX WARN: Code duplicated, block: B:554:0x198b  */
    /* JADX WARN: Code duplicated, block: B:556:0x1993  */
    /* JADX WARN: Code duplicated, block: B:559:0x19b0 A[LOOP:24: B:557:0x19aa->B:559:0x19b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:561:0x19dd  */
    /* JADX WARN: Code duplicated, block: B:565:0x1a55  */
    /* JADX WARN: Code duplicated, block: B:567:0x1a73  */
    /* JADX WARN: Code duplicated, block: B:568:0x1a79  */
    /* JADX WARN: Code duplicated, block: B:571:0x1a85  */
    /* JADX WARN: Code duplicated, block: B:573:0x1a9e  */
    /* JADX WARN: Code duplicated, block: B:574:0x1aa3  */
    /* JADX WARN: Code duplicated, block: B:577:0x1ab1  */
    /* JADX WARN: Code duplicated, block: B:578:0x1ab6  */
    /* JADX WARN: Code duplicated, block: B:581:0x1abc  */
    /* JADX WARN: Code duplicated, block: B:583:0x1ac0  */
    /* JADX WARN: Code duplicated, block: B:587:0x1add  */
    /* JADX WARN: Code duplicated, block: B:588:0x1aef  */
    /* JADX WARN: Code duplicated, block: B:589:0x1af5  */
    /* JADX WARN: Code duplicated, block: B:594:0x1b5d  */
    /* JADX WARN: Code duplicated, block: B:596:0x1b67  */
    /* JADX WARN: Code duplicated, block: B:600:0x1b9b  */
    /* JADX WARN: Code duplicated, block: B:605:0x1bc5  */
    /* JADX WARN: Code duplicated, block: B:608:0x1bee  */
    /* JADX WARN: Code duplicated, block: B:611:0x1bfb A[LOOP:27: B:609:0x1bf8->B:611:0x1bfb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:613:0x1c1b  */
    /* JADX WARN: Code duplicated, block: B:616:0x1c23  */
    /* JADX WARN: Code duplicated, block: B:619:0x1c30 A[LOOP:28: B:617:0x1c2d->B:619:0x1c30, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:623:0x1c57  */
    /* JADX WARN: Code duplicated, block: B:625:0x1c7f  */
    /* JADX WARN: Code duplicated, block: B:626:0x1c84  */
    /* JADX WARN: Code duplicated, block: B:639:0x1ca7  */
    /* JADX WARN: Code duplicated, block: B:641:0x1ce3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:645:0x1ceb  */
    /* JADX WARN: Code duplicated, block: B:647:0x1cfa  */
    /* JADX WARN: Code duplicated, block: B:648:0x1d05  */
    /* JADX WARN: Code duplicated, block: B:650:0x1d08 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:651:0x1d0a  */
    /* JADX WARN: Code duplicated, block: B:654:0x1d19 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:655:0x1d1b  */
    /* JADX WARN: Code duplicated, block: B:659:0x1d34  */
    /* JADX WARN: Code duplicated, block: B:661:0x1d3c  */
    /* JADX WARN: Code duplicated, block: B:663:0x1d49  */
    /* JADX WARN: Code duplicated, block: B:664:0x1d4f  */
    /* JADX WARN: Code duplicated, block: B:667:0x1d6f  */
    /* JADX WARN: Code duplicated, block: B:668:0x1d85  */
    /* JADX WARN: Code duplicated, block: B:674:0x1dc0  */
    /* JADX WARN: Code duplicated, block: B:676:0x1de9 A[LOOP:32: B:675:0x1de7->B:676:0x1de9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:679:0x1e28  */
    /* JADX WARN: Code duplicated, block: B:685:0x1e4a  */
    /* JADX WARN: Code duplicated, block: B:689:0x1ea0  */
    /* JADX WARN: Code duplicated, block: B:693:0x1eb9  */
    /* JADX WARN: Code duplicated, block: B:747:0x18c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:751:0x196a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:764:0x1b90 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:775:0x1ea8 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:611:0x1bfb, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:619:0x1c30, please report this as an issue */
    public final void dumpLocked(Context context, PrintWriter printWriter, String str, int i2, int i3, boolean z2) {
        long j2;
        int i4;
        String str2;
        String str3;
        long j3;
        String str4;
        String str5;
        String str6;
        String str7;
        long j4;
        String str8;
        String str9;
        long j5;
        String str10;
        long j6;
        int i5;
        String str11;
        int i6;
        int i7;
        StringBuilder sb;
        long j7;
        int i8;
        String str12;
        PrintWriter printWriter2;
        String str13;
        String str14;
        int i9;
        BatteryStats batteryStats;
        StringBuilder sb2;
        PrintWriter printWriter3;
        long j8;
        String str15;
        String str16;
        String str17;
        long j9;
        long j10;
        String str18;
        PrintWriter printWriter4;
        String str19;
        long j11;
        PrintWriter printWriter5;
        String str20;
        String str21;
        String str22;
        int i10;
        String str23;
        Uid uid;
        String str24;
        PrintWriter printWriter6;
        String str25;
        ArrayMap<String, ? extends Timer> syncStats;
        int size;
        int i11;
        String str26;
        int i12;
        long j12;
        String str27;
        String str28;
        ArrayMap<String, ? extends Timer> jobStats;
        int size2;
        int i13;
        long j13;
        ArrayMap<String, SparseIntArray> jobCompletionStats;
        int size3;
        String str29;
        long j14;
        Uid uid2;
        String str30;
        String str31;
        String str32;
        SparseArray<? extends Uid> sparseArray;
        StringBuilder sb3;
        int i14;
        String str33;
        SparseArray<? extends Uid.Sensor> sensorStats;
        int size4;
        int i15;
        int i16;
        int i17;
        String str34;
        PrintWriter printWriter7;
        long j15;
        StringBuilder sb4;
        int i18;
        int i19;
        long j16;
        Uid uid3;
        long userCpuTimeUs;
        long systemCpuTimeUs;
        long[] cpuFreqTimes;
        long[] screenOffCpuFreqTimes;
        ArrayMap<String, ? extends Uid.Proc> processStats;
        int size5;
        String str35;
        String str36;
        String str37;
        PrintWriter printWriter8;
        ArrayMap<String, ? extends Uid.Pkg> packageStats;
        int size6;
        int i20;
        int i21;
        long j17;
        PrintWriter printWriter9;
        ArrayMap<String, ? extends Counter> wakeupAlarmStats;
        int size7;
        int i22;
        String str38;
        ArrayMap<String, ? extends Uid.Pkg.Serv> serviceStats;
        int size8;
        long startTime;
        int starts;
        int launches;
        Uid.Proc procValueAt;
        long userTime;
        long systemTime;
        long foregroundTime;
        int starts2;
        int numCrashes;
        int numAnrs;
        int iCountExcessivePowers;
        int i23;
        Uid.Proc proc;
        String str39;
        int i24;
        PrintWriter printWriter10;
        int i25;
        String str40;
        int i26;
        Uid.Proc.ExcessivePower excessivePower;
        String str41;
        int i27;
        int i28;
        long processStateTime;
        Uid.Sensor sensorValueAt;
        StringBuilder sb5;
        int handle;
        Timer sensorTime;
        String str42;
        SparseArray<? extends Uid.Sensor> sparseArray2;
        int i29;
        long totalTimeLocked;
        int countLocked;
        Timer sensorBackgroundTime;
        int countLocked2;
        int i30;
        long totalDurationMsLocked;
        long totalDurationMsLocked2;
        SparseIntArray sparseIntArrayValueAt;
        int i31;
        long totalTimeLocked2;
        int countLocked3;
        Timer subTimer;
        long totalDurationMsLocked3;
        long j18;
        int countLocked4;
        String str43;
        long totalTimeLocked3;
        int countLocked5;
        Timer subTimer2;
        long totalDurationMsLocked4;
        long j19;
        int countLocked6;
        String str44;
        long j20;
        long totalDurationMsLocked5;
        boolean z3;
        String str45;
        long j21;
        Comparator<TimerEntry> comparator;
        int i32;
        Map<String, ? extends Timer> wakeupReasonStats;
        ArrayList arrayList;
        int i33;
        ArrayList arrayList2;
        int i34;
        long j22;
        String str46;
        String str47;
        long j23;
        String str48;
        String str49;
        long j24;
        boolean z4;
        String str50;
        long j25;
        boolean z5;
        long jUptimeMillis = SystemClock.uptimeMillis() * 1000;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j26 = (jElapsedRealtime + 500) / 1000;
        long batteryUptime = getBatteryUptime(jUptimeMillis);
        long jComputeBatteryUptime = computeBatteryUptime(jUptimeMillis, i2);
        long jComputeBatteryRealtime = computeBatteryRealtime(jElapsedRealtime, i2);
        long jComputeRealtime = computeRealtime(jElapsedRealtime, i2);
        long jComputeUptime = computeUptime(jUptimeMillis, i2);
        long jComputeBatteryScreenOffUptime = computeBatteryScreenOffUptime(jUptimeMillis, i2);
        long jComputeBatteryScreenOffRealtime = computeBatteryScreenOffRealtime(jElapsedRealtime, i2);
        long jComputeBatteryTimeRemaining = computeBatteryTimeRemaining(jElapsedRealtime);
        long jComputeChargeTimeRemaining = computeChargeTimeRemaining(jElapsedRealtime);
        long screenDozeTime = getScreenDozeTime(jElapsedRealtime, i2);
        StringBuilder sb6 = new StringBuilder(128);
        SparseArray<? extends Uid> uidStats = getUidStats();
        int size9 = uidStats.size();
        int estimatedBatteryCapacity = getEstimatedBatteryCapacity();
        int i35 = size9;
        if (estimatedBatteryCapacity > 0) {
            m.v(sb6, 0, str, "  Estimated battery capacity: ");
            sb6.append(BatteryStatsHelper.makemAh(estimatedBatteryCapacity));
            sb6.append(" mAh");
            printWriter.println(sb6.toString());
        }
        int minLearnedBatteryCapacity = getMinLearnedBatteryCapacity();
        if (minLearnedBatteryCapacity > 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Min learned battery capacity: ");
            sb6.append(BatteryStatsHelper.makemAh(minLearnedBatteryCapacity / 1000));
            sb6.append(" mAh");
            printWriter.println(sb6.toString());
        }
        int maxLearnedBatteryCapacity = getMaxLearnedBatteryCapacity();
        if (maxLearnedBatteryCapacity > 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Max learned battery capacity: ");
            sb6.append(BatteryStatsHelper.makemAh(maxLearnedBatteryCapacity / 1000));
            sb6.append(" mAh");
            printWriter.println(sb6.toString());
        }
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Time on battery: ");
        long j27 = jComputeBatteryRealtime / 1000;
        formatTimeMs(sb6, j27);
        sb6.append("(");
        sb6.append(formatRatioLocked(jComputeBatteryRealtime, jComputeRealtime));
        sb6.append(") realtime, ");
        formatTimeMs(sb6, jComputeBatteryUptime / 1000);
        sb6.append("(");
        sb6.append(formatRatioLocked(jComputeBatteryUptime, jComputeBatteryRealtime));
        sb6.append(") uptime");
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Time on battery screen off: ");
        formatTimeMs(sb6, jComputeBatteryScreenOffRealtime / 1000);
        sb6.append("(");
        sb6.append(formatRatioLocked(jComputeBatteryScreenOffRealtime, jComputeBatteryRealtime));
        sb6.append(") realtime, ");
        formatTimeMs(sb6, jComputeBatteryScreenOffUptime / 1000);
        sb6.append("(");
        sb6.append(formatRatioLocked(jComputeBatteryScreenOffUptime, jComputeBatteryRealtime));
        sb6.append(") uptime");
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Time on battery screen doze: ");
        formatTimeMs(sb6, screenDozeTime / 1000);
        sb6.append("(");
        sb6.append(formatRatioLocked(screenDozeTime, jComputeBatteryRealtime));
        sb6.append(")");
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Total run time: ");
        formatTimeMs(sb6, jComputeRealtime / 1000);
        sb6.append("realtime, ");
        formatTimeMs(sb6, jComputeUptime / 1000);
        sb6.append("uptime");
        printWriter.println(sb6.toString());
        if (jComputeBatteryTimeRemaining >= 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Battery time remaining: ");
            formatTimeMs(sb6, jComputeBatteryTimeRemaining / 1000);
            printWriter.println(sb6.toString());
        }
        if (jComputeChargeTimeRemaining >= 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Charge time remaining: ");
            formatTimeMs(sb6, jComputeChargeTimeRemaining / 1000);
            printWriter.println(sb6.toString());
        }
        long mahDischarge = getMahDischarge(i2);
        if (mahDischarge >= 0) {
            m.v(sb6, 0, str, "  Discharge: ");
            sb6.append(BatteryStatsHelper.makemAh(mahDischarge / 1000.0d));
            sb6.append(" mAh");
            printWriter.println(sb6.toString());
        }
        long mahDischargeScreenOff = getMahDischargeScreenOff(i2);
        if (mahDischargeScreenOff >= 0) {
            m.v(sb6, 0, str, "  Screen off discharge: ");
            sb6.append(BatteryStatsHelper.makemAh(mahDischargeScreenOff / 1000.0d));
            sb6.append(" mAh");
            printWriter.println(sb6.toString());
        }
        long mahDischargeScreenDoze = getMahDischargeScreenDoze(i2);
        if (mahDischargeScreenDoze >= 0) {
            m.v(sb6, 0, str, "  Screen doze discharge: ");
            sb6.append(BatteryStatsHelper.makemAh(mahDischargeScreenDoze / 1000.0d));
            sb6.append(" mAh");
            printWriter.println(sb6.toString());
        }
        long j28 = (mahDischarge - mahDischargeScreenOff) - mahDischargeScreenDoze;
        if (j28 >= 0) {
            m.v(sb6, 0, str, "  Screen on discharge: ");
            sb6.append(BatteryStatsHelper.makemAh(j28 / 1000.0d));
            sb6.append(" mAh");
            printWriter.println(sb6.toString());
        }
        printWriter.print("  Start clock time: ");
        printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", getStartClockTime()).toString());
        long screenOnTime = getScreenOnTime(jElapsedRealtime, i2);
        long interactiveTime = getInteractiveTime(jElapsedRealtime, i2);
        long powerSaveModeEnabledTime = getPowerSaveModeEnabledTime(jElapsedRealtime, i2);
        long deviceIdleModeTime = getDeviceIdleModeTime(1, jElapsedRealtime, i2);
        long deviceIdleModeTime2 = getDeviceIdleModeTime(2, jElapsedRealtime, i2);
        long deviceIdlingTime = getDeviceIdlingTime(1, jElapsedRealtime, i2);
        long deviceIdlingTime2 = getDeviceIdlingTime(2, jElapsedRealtime, i2);
        long phoneOnTime = getPhoneOnTime(jElapsedRealtime, i2);
        getGlobalWifiRunningTime(jElapsedRealtime, i2);
        getWifiOnTime(jElapsedRealtime, i2);
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Screen on: ");
        formatTimeMs(sb6, screenOnTime / 1000);
        sb6.append("(");
        long j29 = jComputeBatteryRealtime;
        sb6.append(formatRatioLocked(screenOnTime, j29));
        String str51 = ") ";
        sb6.append(") ");
        sb6.append(getScreenOnCount(i2));
        sb6.append("x, Interactive: ");
        long j30 = screenOnTime;
        formatTimeMs(sb6, interactiveTime / 1000);
        sb6.append("(");
        sb6.append(formatRatioLocked(interactiveTime, j29));
        String str52 = ")";
        sb6.append(str52);
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Screen brightnesses:");
        int i36 = 0;
        boolean z6 = false;
        while (i36 < 5) {
            long j31 = j29;
            long screenBrightnessTime = getScreenBrightnessTime(i36, jElapsedRealtime, i2);
            if (screenBrightnessTime == 0) {
                z5 = z6;
                j25 = j30;
            } else {
                sb6.append("\n    ");
                sb6.append(str);
                sb6.append(SCREEN_BRIGHTNESS_NAMES[i36]);
                sb6.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                formatTimeMs(sb6, screenBrightnessTime / 1000);
                sb6.append("(");
                j25 = j30;
                sb6.append(formatRatioLocked(screenBrightnessTime, j25));
                sb6.append(str52);
                z5 = true;
            }
            i36++;
            j30 = j25;
            z6 = z5;
            j29 = j31;
        }
        long j32 = j29;
        if (!z6) {
            sb6.append(" (no activity)");
        }
        printWriter.println(sb6.toString());
        if (powerSaveModeEnabledTime != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Power save mode enabled: ");
            formatTimeMs(sb6, powerSaveModeEnabledTime / 1000);
            sb6.append("(");
            j2 = j32;
            sb6.append(formatRatioLocked(powerSaveModeEnabledTime, j2));
            sb6.append(str52);
            printWriter.println(sb6.toString());
        } else {
            j2 = j32;
        }
        String str53 = "x";
        if (deviceIdlingTime != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Device light idling: ");
            formatTimeMs(sb6, deviceIdlingTime / 1000);
            sb6.append("(");
            sb6.append(formatRatioLocked(deviceIdlingTime, j2));
            sb6.append(") ");
            sb6.append(getDeviceIdlingCount(1, i2));
            sb6.append("x");
            printWriter.println(sb6.toString());
        }
        if (deviceIdleModeTime != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Idle mode light time: ");
            formatTimeMs(sb6, deviceIdleModeTime / 1000);
            sb6.append("(");
            sb6.append(formatRatioLocked(deviceIdleModeTime, j2));
            sb6.append(") ");
            sb6.append(getDeviceIdleModeCount(1, i2));
            sb6.append("x");
            sb6.append(" -- longest ");
            formatTimeMs(sb6, getLongestDeviceIdleModeTime(1));
            printWriter.println(sb6.toString());
        }
        if (deviceIdlingTime2 != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Device full idling: ");
            formatTimeMs(sb6, deviceIdlingTime2 / 1000);
            sb6.append("(");
            sb6.append(formatRatioLocked(deviceIdlingTime2, j2));
            sb6.append(") ");
            sb6.append(getDeviceIdlingCount(2, i2));
            sb6.append("x");
            printWriter.println(sb6.toString());
        }
        if (deviceIdleModeTime2 != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Idle mode full time: ");
            formatTimeMs(sb6, deviceIdleModeTime2 / 1000);
            sb6.append("(");
            sb6.append(formatRatioLocked(deviceIdleModeTime2, j2));
            sb6.append(") ");
            sb6.append(getDeviceIdleModeCount(2, i2));
            sb6.append("x");
            sb6.append(" -- longest ");
            formatTimeMs(sb6, getLongestDeviceIdleModeTime(2));
            printWriter.println(sb6.toString());
        }
        if (phoneOnTime != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Active phone call: ");
            formatTimeMs(sb6, phoneOnTime / 1000);
            sb6.append("(");
            sb6.append(formatRatioLocked(phoneOnTime, j2));
            sb6.append(") ");
            sb6.append(getPhoneOnCount(i2));
            sb6.append("x");
        }
        int numConnectivityChange = getNumConnectivityChange(i2);
        if (numConnectivityChange != 0) {
            printWriter.print(str);
            printWriter.print("  Connectivity changes: ");
            printWriter.println(numConnectivityChange);
        }
        ArrayList arrayList3 = new ArrayList();
        int i37 = 0;
        long totalTimeLocked4 = 0;
        long j33 = 0;
        while (true) {
            i4 = i35;
            if (i37 >= i4) {
                break;
            }
            String str54 = str53;
            Uid uidValueAt = uidStats.valueAt(i37);
            i35 = i4;
            ArrayMap<String, ? extends Uid.Wakelock> wakelockStats = uidValueAt.getWakelockStats();
            int size10 = wakelockStats.size() - 1;
            while (size10 >= 0) {
                String str55 = str51;
                Uid.Wakelock wakelockValueAt = wakelockStats.valueAt(size10);
                String str56 = str52;
                Timer wakeTime = wakelockValueAt.getWakeTime(1);
                if (wakeTime != null) {
                    totalTimeLocked4 = wakeTime.getTotalTimeLocked(jElapsedRealtime, i2) + totalTimeLocked4;
                }
                Timer wakeTime2 = wakelockValueAt.getWakeTime(0);
                if (wakeTime2 != null) {
                    long totalTimeLocked5 = wakeTime2.getTotalTimeLocked(jElapsedRealtime, i2);
                    if (totalTimeLocked5 > 0) {
                        if (i3 < 0) {
                            arrayList3.add(new TimerEntry(wakelockStats.keyAt(size10), uidValueAt.getUid(), wakeTime2, totalTimeLocked5));
                        }
                        j33 += totalTimeLocked5;
                    }
                }
                size10--;
                str52 = str56;
                str51 = str55;
            }
            i37++;
            str53 = str54;
        }
        String str57 = str52;
        String str58 = str53;
        String str59 = str51;
        long networkActivityBytes = getNetworkActivityBytes(0, i2);
        long j34 = j2;
        long networkActivityBytes2 = getNetworkActivityBytes(1, i2);
        long networkActivityBytes3 = getNetworkActivityBytes(2, i2);
        long networkActivityBytes4 = getNetworkActivityBytes(3, i2);
        long networkActivityPackets = getNetworkActivityPackets(0, i2);
        long networkActivityPackets2 = getNetworkActivityPackets(1, i2);
        long networkActivityPackets3 = getNetworkActivityPackets(2, i2);
        long networkActivityPackets4 = getNetworkActivityPackets(3, i2);
        long networkActivityBytes5 = getNetworkActivityBytes(4, i2);
        long networkActivityBytes6 = getNetworkActivityBytes(5, i2);
        if (totalTimeLocked4 != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Total full wakelock time: ");
            formatTimeMsNoSpace(sb6, (totalTimeLocked4 + 500) / 1000);
            printWriter.println(sb6.toString());
        }
        if (j33 != 0) {
            sb6.setLength(0);
            sb6.append(str);
            sb6.append("  Total partial wakelock time: ");
            formatTimeMsNoSpace(sb6, (j33 + 500) / 1000);
            printWriter.println(sb6.toString());
        }
        printWriter.println("");
        printWriter.print(str);
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  CONNECTIVITY POWER SUMMARY START");
        printWriter.println(sb6.toString());
        printWriter.print(str);
        m.v(sb6, 0, str, "  Logging duration for connectivity statistics: ");
        formatTimeMs(sb6, j27);
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Cellular Statistics:");
        printWriter.println(sb6.toString());
        printWriter.print(str);
        m.v(sb6, 0, str, "     Cellular kernel active time: ");
        long mobileRadioActiveTime = getMobileRadioActiveTime(jElapsedRealtime, i2);
        long j35 = jElapsedRealtime;
        formatTimeMs(sb6, mobileRadioActiveTime / 1000);
        sb6.append("(");
        long j36 = j34;
        sb6.append(formatRatioLocked(mobileRadioActiveTime, j36));
        sb6.append(str57);
        printWriter.println(sb6.toString());
        printWriter.print("     Cellular data received: ");
        printWriter.println(formatBytesLocked(networkActivityBytes));
        printWriter.print("     Cellular data sent: ");
        printWriter.println(formatBytesLocked(networkActivityBytes2));
        printWriter.print("     Cellular packets received: ");
        printWriter.println(networkActivityPackets);
        printWriter.print("     Cellular packets sent: ");
        printWriter.println(networkActivityPackets2);
        int i38 = 0;
        m.v(sb6, 0, str, "     Cellular Radio Access Technology:");
        boolean z7 = false;
        while (i38 < 17) {
            long j37 = j35;
            long j38 = mobileRadioActiveTime;
            long phoneDataConnectionTime = getPhoneDataConnectionTime(i38, j37, i2);
            if (phoneDataConnectionTime == 0) {
                str50 = str59;
            } else {
                sb6.append("\n       ");
                sb6.append(str);
                sb6.append(DATA_CONNECTION_NAMES[i38]);
                sb6.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                formatTimeMs(sb6, phoneDataConnectionTime / 1000);
                sb6.append("(");
                sb6.append(formatRatioLocked(phoneDataConnectionTime, j36));
                str50 = str59;
                sb6.append(str50);
                z7 = true;
            }
            i38++;
            str59 = str50;
            mobileRadioActiveTime = j38;
            j35 = j37;
        }
        long j39 = j35;
        String str60 = str59;
        long j40 = mobileRadioActiveTime;
        String str61 = " (no activity)";
        if (!z7) {
            sb6.append(str61);
        }
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("     Cellular Rx signal strength (RSRP):");
        String[] strArr = {"very poor (less than -128dBm): ", "poor (-128dBm to -118dBm): ", "moderate (-118dBm to -108dBm): ", "good (-108dBm to -98dBm): ", "great (greater than -98dBm): "};
        int iMin = Math.min(5, 5);
        int i39 = 0;
        boolean z8 = false;
        while (i39 < iMin) {
            String str62 = str61;
            long j41 = j36;
            long j42 = j39;
            long phoneSignalStrengthTime = getPhoneSignalStrengthTime(i39, j42, i2);
            if (phoneSignalStrengthTime == 0) {
                z4 = z8;
                str49 = str2;
                j24 = j41;
            } else {
                sb6.append("\n       ");
                sb6.append(str);
                sb6.append(strArr[i39]);
                str49 = str2;
                sb6.append(str49);
                formatTimeMs(sb6, phoneSignalStrengthTime / 1000);
                sb6.append("(");
                j24 = j41;
                sb6.append(formatRatioLocked(phoneSignalStrengthTime, j24));
                sb6.append(str60);
                z4 = true;
            }
            i39++;
            str2 = str49;
            z8 = z4;
            j36 = j24;
            strArr = strArr;
            iMin = iMin;
            j39 = j42;
            str61 = str62;
        }
        String str63 = str61;
        long j43 = j36;
        String str64 = str2;
        long j44 = j39;
        if (!z8) {
            sb6.append(str63);
        }
        printWriter.println(sb6.toString());
        long j45 = batteryUptime;
        long j46 = j40;
        int i40 = i4;
        String str65 = str64;
        String str66 = "(";
        SparseArray<? extends Uid> sparseArray3 = uidStats;
        long j47 = j26;
        long j48 = j43;
        long j49 = j44;
        String str67 = str60;
        String str68 = str58;
        printControllerActivity(printWriter, sb6, str, "Cellular", getModemControllerActivity(), i2);
        printWriter.print(str);
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Wifi Statistics:");
        printWriter.println(sb6.toString());
        printWriter.print("     Wifi data received: ");
        printWriter.println(formatBytesLocked(networkActivityBytes3));
        printWriter.print("     Wifi data sent: ");
        printWriter.println(formatBytesLocked(networkActivityBytes4));
        printWriter.print("     Wifi packets received: ");
        printWriter.println(networkActivityPackets3);
        printWriter.print("     Wifi packets sent: ");
        printWriter.println(networkActivityPackets4);
        int i41 = 0;
        m.v(sb6, 0, str, "     Wifi states:");
        boolean z9 = false;
        while (i41 < 8) {
            long j50 = j49;
            long wifiStateTime = getWifiStateTime(i41, j50, i2);
            if (wifiStateTime == 0) {
                str47 = str66;
                str46 = str65;
                j23 = j48;
                str48 = str67;
            } else {
                sb6.append("\n       ");
                sb6.append(WIFI_STATE_NAMES[i41]);
                str46 = str65;
                sb6.append(str46);
                formatTimeMs(sb6, wifiStateTime / 1000);
                str47 = str66;
                sb6.append(str47);
                j23 = j48;
                sb6.append(formatRatioLocked(wifiStateTime, j23));
                str48 = str67;
                sb6.append(str48);
                z9 = true;
            }
            i41++;
            str67 = str48;
            j48 = j23;
            j49 = j50;
            str65 = str46;
            str66 = str47;
        }
        String str69 = str66;
        String str70 = str65;
        long j51 = j49;
        long j52 = j48;
        String str71 = str67;
        if (!z9) {
            sb6.append(str63);
        }
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("     Wifi supplicant states:");
        boolean z10 = false;
        for (int i42 = 0; i42 < 13; i42++) {
            long wifiSupplStateTime = getWifiSupplStateTime(i42, j51, i2);
            if (wifiSupplStateTime != 0) {
                sb6.append("\n       ");
                sb6.append(WIFI_SUPPL_STATE_NAMES[i42]);
                sb6.append(str70);
                formatTimeMs(sb6, wifiSupplStateTime / 1000);
                sb6.append(str69);
                sb6.append(formatRatioLocked(wifiSupplStateTime, j52));
                sb6.append(str71);
                z10 = true;
            }
        }
        if (!z10) {
            sb6.append(str63);
        }
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        String str72 = str;
        sb6.append(str72);
        sb6.append("     Wifi Rx signal strength (RSSI):");
        String[] strArr2 = {"very poor (less than -88.75dBm): ", "poor (-88.75 to -77.5dBm): ", "moderate (-77.5dBm to -66.25dBm): ", "good (-66.25dBm to -55dBm): ", "great (greater than -55dBm): "};
        int i43 = 0;
        boolean z11 = false;
        for (int iMin2 = Math.min(5, 5); i43 < iMin2; iMin2 = iMin2) {
            String str73 = str71;
            long j53 = j52;
            long wifiSignalStrengthTime = getWifiSignalStrengthTime(i43, j51, i2);
            if (wifiSignalStrengthTime == 0) {
                str71 = str73;
                j22 = j53;
            } else {
                sb6.append("\n    ");
                sb6.append(str72);
                sb6.append("     ");
                sb6.append(strArr2[i43]);
                formatTimeMs(sb6, wifiSignalStrengthTime / 1000);
                sb6.append(str69);
                j22 = j53;
                sb6.append(formatRatioLocked(wifiSignalStrengthTime, j22));
                str71 = str73;
                sb6.append(str71);
                z11 = true;
            }
            i43++;
            long j54 = j22;
            strArr2 = strArr2;
            j52 = j54;
        }
        long j55 = j52;
        if (!z11) {
            sb6.append(str63);
        }
        PrintWriter printWriter11 = printWriter;
        printWriter11.println(sb6.toString());
        String str74 = str71;
        printControllerActivity(printWriter, sb6, str, "WiFi", getWifiControllerActivity(), i2);
        printWriter.print(str);
        sb6.setLength(0);
        sb6.append(str72);
        sb6.append("  CONNECTIVITY POWER SUMMARY END");
        printWriter11.println(sb6.toString());
        printWriter11.println("");
        printWriter.print(str);
        printWriter11.print("  Bluetooth total received: ");
        printWriter11.print(formatBytesLocked(networkActivityBytes5));
        printWriter11.print(", sent: ");
        printWriter11.println(formatBytesLocked(networkActivityBytes6));
        long bluetoothScanTime = getBluetoothScanTime(j51, i2) / 1000;
        sb6.setLength(0);
        sb6.append(str72);
        sb6.append("  Bluetooth scan time: ");
        formatTimeMs(sb6, bluetoothScanTime);
        printWriter11.println(sb6.toString());
        printControllerActivity(printWriter, sb6, str, "Bluetooth", getBluetoothControllerActivity(), i2);
        printWriter.println();
        if (i2 == 2) {
            if (getIsOnBattery()) {
                printWriter.print(str);
                printWriter11.println("  Device is currently unplugged");
                printWriter.print(str);
                printWriter11.print("    Discharge cycle start level: ");
                printWriter11.println(getDischargeStartLevel());
                printWriter.print(str);
                printWriter11.print("    Discharge cycle current level: ");
                printWriter11.println(getDischargeCurrentLevel());
            } else {
                printWriter.print(str);
                printWriter11.println("  Device is currently plugged into power");
                printWriter.print(str);
                printWriter11.print("    Last discharge cycle start level: ");
                printWriter11.println(getDischargeStartLevel());
                printWriter.print(str);
                printWriter11.print("    Last discharge cycle end level: ");
                printWriter11.println(getDischargeCurrentLevel());
            }
            printWriter.print(str);
            printWriter11.print("    Amount discharged while screen on: ");
            printWriter11.println(getDischargeAmountScreenOn());
            printWriter.print(str);
            printWriter11.print("    Amount discharged while screen off: ");
            printWriter11.println(getDischargeAmountScreenOff());
            printWriter.print(str);
            printWriter11.print("    Amount discharged while screen doze: ");
            printWriter11.println(getDischargeAmountScreenDoze());
            str3 = str70;
            printWriter11.println(str3);
        } else {
            str3 = str70;
            printWriter.print(str);
            printWriter11.println("  Device battery use since last full charge");
            printWriter.print(str);
            printWriter11.print("    Amount discharged (lower bound): ");
            printWriter11.println(getLowDischargeAmountSinceCharge());
            printWriter.print(str);
            printWriter11.print("    Amount discharged (upper bound): ");
            printWriter11.println(getHighDischargeAmountSinceCharge());
            printWriter.print(str);
            printWriter11.print("    Amount discharged while screen on: ");
            printWriter11.println(getDischargeAmountScreenOnSinceCharge());
            printWriter.print(str);
            printWriter11.print("    Amount discharged while screen off: ");
            printWriter11.println(getDischargeAmountScreenOffSinceCharge());
            printWriter.print(str);
            printWriter11.print("    Amount discharged while screen doze: ");
            printWriter11.println(getDischargeAmountScreenDozeSinceCharge());
            printWriter.println();
        }
        BatteryStatsHelper batteryStatsHelper = new BatteryStatsHelper(context, false, z2);
        batteryStatsHelper.create(this);
        batteryStatsHelper.refreshStats(i2, -1);
        List<BatterySipper> usageList = batteryStatsHelper.getUsageList();
        String str75 = " (";
        String str76 = ": ";
        if (usageList == null || usageList.size() <= 0) {
            j3 = j51;
            str4 = str74;
        } else {
            printWriter.print(str);
            printWriter11.println("  Estimated power use (mAh):");
            printWriter.print(str);
            printWriter11.print("    Capacity: ");
            printmAh(printWriter11, batteryStatsHelper.getPowerProfile().getBatteryCapacity());
            printWriter11.print(", Computed drain: ");
            printmAh(printWriter11, batteryStatsHelper.getComputedPower());
            printWriter11.print(", actual drain: ");
            printmAh(printWriter11, batteryStatsHelper.getMinDrainedPower());
            if (batteryStatsHelper.getMinDrainedPower() != batteryStatsHelper.getMaxDrainedPower()) {
                printWriter11.print(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                printmAh(printWriter11, batteryStatsHelper.getMaxDrainedPower());
            }
            printWriter.println();
            int i44 = 0;
            while (i44 < usageList.size()) {
                BatterySipper batterySipper = usageList.get(i44);
                printWriter.print(str);
                List<BatterySipper> list = usageList;
                switch (AnonymousClass2.$SwitchMap$com$android$internal$os$BatterySipper$DrainType[batterySipper.drainType.ordinal()]) {
                    case 1:
                        printWriter11.print("    Idle: ");
                        break;
                    case 2:
                        printWriter11.print("    Cell standby: ");
                        break;
                    case 3:
                        printWriter11.print("    Phone calls: ");
                        break;
                    case 4:
                        printWriter11.print("    Wifi: ");
                        break;
                    case 5:
                        printWriter11.print("    Bluetooth: ");
                        break;
                    case 6:
                        printWriter11.print("    Screen: ");
                        break;
                    case 7:
                        printWriter11.print("    Flashlight: ");
                        break;
                    case 8:
                        printWriter11.print("    Uid ");
                        UserHandle.formatUid(printWriter11, batterySipper.uidObj.getUid());
                        printWriter11.print(": ");
                        break;
                    case 9:
                        printWriter11.print("    User ");
                        printWriter11.print(batterySipper.userId);
                        printWriter11.print(": ");
                        break;
                    case 10:
                        printWriter11.print("    Unaccounted: ");
                        break;
                    case 11:
                        printWriter11.print("    Over-counted: ");
                        break;
                    case 12:
                        printWriter11.print("    Camera: ");
                        break;
                    default:
                        printWriter11.print("    ???: ");
                        break;
                }
                long j56 = j51;
                printmAh(printWriter11, batterySipper.totalPowerMah);
                String str77 = str74;
                if (batterySipper.usagePowerMah != batterySipper.totalPowerMah) {
                    printWriter11.print(" (");
                    if (batterySipper.usagePowerMah != 0.0d) {
                        printWriter11.print(" usage=");
                        printmAh(printWriter11, batterySipper.usagePowerMah);
                    }
                    if (batterySipper.cpuPowerMah != 0.0d) {
                        printWriter11.print(" cpu=");
                        printmAh(printWriter11, batterySipper.cpuPowerMah);
                    }
                    if (batterySipper.wakeLockPowerMah != 0.0d) {
                        printWriter11.print(" wake=");
                        printmAh(printWriter11, batterySipper.wakeLockPowerMah);
                    }
                    if (batterySipper.mobileRadioPowerMah != 0.0d) {
                        printWriter11.print(" radio=");
                        printmAh(printWriter11, batterySipper.mobileRadioPowerMah);
                    }
                    if (batterySipper.wifiPowerMah != 0.0d) {
                        printWriter11.print(" wifi=");
                        printmAh(printWriter11, batterySipper.wifiPowerMah);
                    }
                    if (batterySipper.bluetoothPowerMah != 0.0d) {
                        printWriter11.print(" bt=");
                        printmAh(printWriter11, batterySipper.bluetoothPowerMah);
                    }
                    if (batterySipper.gpsPowerMah != 0.0d) {
                        printWriter11.print(" gps=");
                        printmAh(printWriter11, batterySipper.gpsPowerMah);
                    }
                    if (batterySipper.sensorPowerMah != 0.0d) {
                        printWriter11.print(" sensor=");
                        printmAh(printWriter11, batterySipper.sensorPowerMah);
                    }
                    if (batterySipper.cameraPowerMah != 0.0d) {
                        printWriter11.print(" camera=");
                        printmAh(printWriter11, batterySipper.cameraPowerMah);
                    }
                    if (batterySipper.flashlightPowerMah != 0.0d) {
                        printWriter11.print(" flash=");
                        printmAh(printWriter11, batterySipper.flashlightPowerMah);
                    }
                    printWriter11.print(" )");
                }
                if (batterySipper.totalSmearedPowerMah != batterySipper.totalPowerMah) {
                    printWriter11.print(" Including smearing: ");
                    printmAh(printWriter11, batterySipper.totalSmearedPowerMah);
                    printWriter11.print(" (");
                    if (batterySipper.screenPowerMah != 0.0d) {
                        printWriter11.print(" screen=");
                        printmAh(printWriter11, batterySipper.screenPowerMah);
                    }
                    if (batterySipper.proportionalSmearMah != 0.0d) {
                        printWriter11.print(" proportional=");
                        printmAh(printWriter11, batterySipper.proportionalSmearMah);
                    }
                    printWriter11.print(" )");
                }
                if (batterySipper.shouldHide) {
                    printWriter11.print(" Excluded from smearing");
                }
                printWriter.println();
                i44++;
                usageList = list;
                j51 = j56;
                str74 = str77;
            }
            j3 = j51;
            str4 = str74;
            printWriter.println();
        }
        List<BatterySipper> mobilemsppList = batteryStatsHelper.getMobilemsppList();
        if (mobilemsppList == null || mobilemsppList.size() <= 0) {
            str5 = ": ";
            str6 = " (";
            str7 = str57;
            j4 = j55;
        } else {
            printWriter.print(str);
            printWriter11.println("  Per-app mobile ms per packet:");
            int i45 = 0;
            long j57 = 0;
            while (i45 < mobilemsppList.size()) {
                BatterySipper batterySipper2 = mobilemsppList.get(i45);
                m.v(sb6, 0, str72, "    Uid ");
                UserHandle.formatUid(sb6, batterySipper2.uidObj.getUid());
                sb6.append(str76);
                sb6.append(BatteryStatsHelper.makemAh(batterySipper2.mobilemspp));
                sb6.append(str75);
                sb6.append(batterySipper2.mobileRxPackets + batterySipper2.mobileTxPackets);
                sb6.append(" packets over ");
                formatTimeMsNoSpace(sb6, batterySipper2.mobileActive);
                sb6.append(str4);
                sb6.append(batterySipper2.mobileActiveCount);
                sb6.append(str68);
                printWriter11.println(sb6.toString());
                j57 += batterySipper2.mobileActive;
                i45++;
                str75 = str75;
                str76 = str76;
            }
            str5 = str76;
            str6 = str75;
            m.v(sb6, 0, str72, "    TOTAL TIME: ");
            formatTimeMs(sb6, j57);
            sb6.append(str69);
            j4 = j55;
            sb6.append(formatRatioLocked(j57, j4));
            str7 = str57;
            sb6.append(str7);
            printWriter11.println(sb6.toString());
            printWriter.println();
        }
        Comparator<TimerEntry> comparator2 = new Comparator<TimerEntry>() { // from class: android.os.BatteryStats.1
            @Override // java.util.Comparator
            public int compare(TimerEntry timerEntry, TimerEntry timerEntry2) {
                long j58 = timerEntry.mTime;
                long j59 = timerEntry2.mTime;
                if (j58 < j59) {
                    return 1;
                }
                return j58 > j59 ? -1 : 0;
            }
        };
        String str78 = " realtime";
        if (i3 < 0) {
            Map<String, ? extends Timer> kernelWakelockStats = getKernelWakelockStats();
            if (kernelWakelockStats.size() > 0) {
                ArrayList arrayList4 = new ArrayList();
                Iterator<Map.Entry<String, ? extends Timer>> it = kernelWakelockStats.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, ? extends Timer> next = it.next();
                    Iterator<Map.Entry<String, ? extends Timer>> it2 = it;
                    Timer value = next.getValue();
                    long j58 = j4;
                    String str79 = str4;
                    long j59 = j3;
                    long jComputeWakeLock = computeWakeLock(value, j59, i2);
                    if (jComputeWakeLock > 0) {
                        arrayList4.add(new TimerEntry(next.getKey(), 0, value, jComputeWakeLock));
                    }
                    j3 = j59;
                    str78 = str78;
                    it = it2;
                    j4 = j58;
                    str4 = str79;
                }
                String str80 = str78;
                j5 = j4;
                str10 = str4;
                j6 = j3;
                i5 = i2;
                if (arrayList4.size() > 0) {
                    Collections.sort(arrayList4, comparator2);
                    printWriter.print(str);
                    printWriter11.println("  All kernel wake locks:");
                    int i46 = 0;
                    while (i46 < arrayList4.size()) {
                        TimerEntry timerEntry = (TimerEntry) arrayList4.get(i46);
                        int i47 = i46;
                        m.v(sb6, 0, str72, "  Kernel Wake lock ");
                        sb6.append(timerEntry.mName);
                        String str81 = str80;
                        ArrayList arrayList5 = arrayList4;
                        String str82 = str68;
                        String str83 = str69;
                        String str84 = str5;
                        Comparator<TimerEntry> comparator3 = comparator2;
                        String str85 = str6;
                        String str86 = str7;
                        String str87 = str3;
                        if (!printWakeLock(sb6, timerEntry.mTimer, j6, null, i2, ": ").equals(str84)) {
                            sb6.append(str81);
                            printWriter11.println(sb6.toString());
                        }
                        i46 = i47 + 1;
                        comparator2 = comparator3;
                        str5 = str84;
                        str3 = str87;
                        arrayList4 = arrayList5;
                        str7 = str86;
                        str69 = str83;
                        str68 = str82;
                        str6 = str85;
                        str72 = str;
                        str80 = str81;
                    }
                    str6 = str6;
                    str7 = str7;
                    str3 = str3;
                    str68 = str68;
                    str69 = str69;
                    str8 = str80;
                    str11 = str5;
                    comparator = comparator2;
                    i32 = -1;
                    printWriter.println();
                } else {
                    str8 = str80;
                }
                i6 = i32;
                if (arrayList3.size() > 0) {
                    arrayList2 = arrayList3;
                    Collections.sort(arrayList2, comparator);
                    printWriter.print(str);
                    printWriter11.println("  All partial wake locks:");
                    i34 = 0;
                    while (i34 < arrayList2.size()) {
                        TimerEntry timerEntry2 = (TimerEntry) arrayList2.get(i34);
                        sb6.setLength(0);
                        sb6.append("  Wake lock ");
                        UserHandle.formatUid(sb6, timerEntry2.mId);
                        sb6.append(str3);
                        sb6.append(timerEntry2.mName);
                        printWakeLock(sb6, timerEntry2.mTimer, j6, null, i2, ": ");
                        sb6.append(str8);
                        printWriter11.println(sb6.toString());
                        i34++;
                        arrayList2 = arrayList2;
                    }
                    arrayList2.clear();
                    printWriter.println();
                }
                wakeupReasonStats = getWakeupReasonStats();
                if (wakeupReasonStats.size() > 0) {
                    printWriter.print(str);
                    printWriter11.println("  All wakeup reasons:");
                    arrayList = new ArrayList();
                    for (Map.Entry<String, ? extends Timer> entry : wakeupReasonStats.entrySet()) {
                        Timer value2 = entry.getValue();
                        arrayList.add(new TimerEntry(entry.getKey(), 0, value2, value2.getCountLocked(i5)));
                    }
                    Collections.sort(arrayList, comparator);
                    i33 = 0;
                    while (i33 < arrayList.size()) {
                        TimerEntry timerEntry3 = (TimerEntry) arrayList.get(i33);
                        m.v(sb6, 0, str, "  Wakeup reason ");
                        sb6.append(timerEntry3.mName);
                        printWakeLock(sb6, timerEntry3.mTimer, j6, null, i2, ": ");
                        sb6.append(str8);
                        printWriter11.println(sb6.toString());
                        i33++;
                        str3 = str3;
                        arrayList = arrayList;
                    }
                    str9 = str3;
                    str72 = str;
                    printWriter.println();
                } else {
                    str9 = str3;
                    str72 = str;
                }
            } else {
                str8 = " realtime";
                j5 = j4;
                str10 = str4;
                j6 = j3;
                i5 = i2;
            }
            str11 = str5;
            comparator = comparator2;
            i32 = -1;
            i6 = i32;
            if (arrayList3.size() > 0) {
                arrayList2 = arrayList3;
                Collections.sort(arrayList2, comparator);
                printWriter.print(str);
                printWriter11.println("  All partial wake locks:");
                i34 = 0;
                while (i34 < arrayList2.size()) {
                    TimerEntry timerEntry4 = (TimerEntry) arrayList2.get(i34);
                    sb6.setLength(0);
                    sb6.append("  Wake lock ");
                    UserHandle.formatUid(sb6, timerEntry4.mId);
                    sb6.append(str3);
                    sb6.append(timerEntry4.mName);
                    printWakeLock(sb6, timerEntry4.mTimer, j6, null, i2, ": ");
                    sb6.append(str8);
                    printWriter11.println(sb6.toString());
                    i34++;
                    arrayList2 = arrayList2;
                }
                arrayList2.clear();
                printWriter.println();
            }
            wakeupReasonStats = getWakeupReasonStats();
            if (wakeupReasonStats.size() > 0) {
                printWriter.print(str);
                printWriter11.println("  All wakeup reasons:");
                arrayList = new ArrayList();
                while (r0.hasNext()) {
                    Timer value3 = entry.getValue();
                    arrayList.add(new TimerEntry(entry.getKey(), 0, value3, value3.getCountLocked(i5)));
                }
                Collections.sort(arrayList, comparator);
                i33 = 0;
                while (i33 < arrayList.size()) {
                    TimerEntry timerEntry5 = (TimerEntry) arrayList.get(i33);
                    m.v(sb6, 0, str, "  Wakeup reason ");
                    sb6.append(timerEntry5.mName);
                    printWakeLock(sb6, timerEntry5.mTimer, j6, null, i2, ": ");
                    sb6.append(str8);
                    printWriter11.println(sb6.toString());
                    i33++;
                    str3 = str3;
                    arrayList = arrayList;
                }
                str9 = str3;
                str72 = str;
                printWriter.println();
            } else {
                str9 = str3;
                str72 = str;
            }
        } else {
            str6 = str6;
            str8 = " realtime";
            str7 = str7;
            str9 = str3;
            j5 = j4;
            str10 = str4;
            str68 = str68;
            str69 = str69;
            j6 = j3;
            i5 = i2;
            str11 = str5;
            i6 = -1;
        }
        LongSparseArray<? extends Timer> kernelMemoryStats = getKernelMemoryStats();
        if (kernelMemoryStats.size() > 0) {
            printWriter11.println("  Memory Stats");
            for (int i48 = 0; i48 < kernelMemoryStats.size(); i48++) {
                sb6.setLength(0);
                sb6.append("  Bandwidth ");
                sb6.append(kernelMemoryStats.keyAt(i48));
                sb6.append(" Time ");
                sb6.append(kernelMemoryStats.valueAt(i48).getTotalTimeLocked(j6, i5));
                printWriter11.println(sb6.toString());
            }
            i7 = 0;
            printWriter.println();
        } else {
            i7 = 0;
        }
        Map<String, ? extends Timer> rpmStats = getRpmStats();
        if (rpmStats.size() > 0) {
            printWriter.print(str);
            printWriter11.println("  Resource Power Manager Stats");
            if (rpmStats.size() > 0) {
                Iterator<Map.Entry<String, ? extends Timer>> it3 = rpmStats.entrySet().iterator();
                while (it3.hasNext()) {
                    Map.Entry<String, ? extends Timer> next2 = it3.next();
                    StringBuilder sb7 = sb6;
                    long j60 = j6;
                    str72 = str;
                    printTimer(printWriter, sb7, next2.getValue(), j60, i2, str72, next2.getKey());
                    i5 = i2;
                    printWriter11 = printWriter11;
                    sb6 = sb7;
                    str7 = str7;
                    j6 = j60;
                    str11 = str11;
                    it3 = it3;
                    i40 = i40;
                    str8 = str8;
                }
            }
            sb = sb6;
            j7 = j6;
            i8 = i5;
            str12 = str11;
            printWriter2 = printWriter11;
            str13 = str7;
            int i49 = i40;
            str14 = str8;
            i9 = i49;
            printWriter.println();
        } else {
            sb = sb6;
            j7 = j6;
            i8 = i5;
            str12 = str11;
            printWriter2 = printWriter11;
            str13 = str7;
            str14 = str8;
            i9 = i40;
        }
        long[] cpuFreqs = getCpuFreqs();
        if (cpuFreqs != null) {
            sb.setLength(i7);
            sb.append("  CPU freqs:");
            for (int i50 = i7; i50 < cpuFreqs.length; i50++) {
                sb.append(str9 + cpuFreqs[i50]);
            }
            printWriter2.println(sb.toString());
            printWriter.println();
        }
        int i51 = i7;
        PrintWriter printWriter12 = printWriter2;
        while (i51 < i9) {
            SparseArray<? extends Uid> sparseArray4 = sparseArray3;
            int iKeyAt = sparseArray4.keyAt(i51);
            if (i3 < 0 || iKeyAt == i3 || iKeyAt == 1000) {
                Uid uidValueAt2 = sparseArray4.valueAt(i51);
                printWriter.print(str);
                printWriter12.print("  ");
                UserHandle.formatUid(printWriter12, iKeyAt);
                printWriter12.println(SettingsStringUtil.DELIMITER);
                long networkActivityBytes7 = uidValueAt2.getNetworkActivityBytes(i7, i8);
                long networkActivityBytes8 = uidValueAt2.getNetworkActivityBytes(1, i8);
                int i52 = i51;
                long networkActivityBytes9 = uidValueAt2.getNetworkActivityBytes(2, i8);
                long networkActivityBytes10 = uidValueAt2.getNetworkActivityBytes(3, i8);
                long networkActivityBytes11 = uidValueAt2.getNetworkActivityBytes(4, i8);
                long networkActivityBytes12 = uidValueAt2.getNetworkActivityBytes(5, i8);
                String str88 = str9;
                long networkActivityPackets5 = uidValueAt2.getNetworkActivityPackets(0, i8);
                long networkActivityPackets6 = uidValueAt2.getNetworkActivityPackets(1, i8);
                long networkActivityPackets7 = uidValueAt2.getNetworkActivityPackets(2, i8);
                long networkActivityPackets8 = uidValueAt2.getNetworkActivityPackets(3, i8);
                long mobileRadioActiveTime2 = uidValueAt2.getMobileRadioActiveTime(i8);
                int mobileRadioActiveCount = uidValueAt2.getMobileRadioActiveCount(i8);
                StringBuilder sb8 = sb;
                long j61 = j7;
                long fullWifiLockTime = uidValueAt2.getFullWifiLockTime(j61, i8);
                long wifiScanTime = uidValueAt2.getWifiScanTime(j61, i8);
                int wifiScanCount = uidValueAt2.getWifiScanCount(i8);
                int wifiScanBackgroundCount = uidValueAt2.getWifiScanBackgroundCount(i8);
                long wifiScanActualTime = uidValueAt2.getWifiScanActualTime(j61);
                long wifiScanBackgroundTime = uidValueAt2.getWifiScanBackgroundTime(j61);
                long wifiRunningTime = uidValueAt2.getWifiRunningTime(j61, i8);
                long mobileRadioApWakeupCount = uidValueAt2.getMobileRadioApWakeupCount(i8);
                long wifiRadioApWakeupCount = uidValueAt2.getWifiRadioApWakeupCount(i8);
                if (networkActivityBytes7 > 0 || networkActivityBytes8 > 0 || networkActivityPackets5 > 0 || networkActivityPackets6 > 0) {
                    printWriter.print(str);
                    printWriter2.print("    Mobile network: ");
                    batteryStats = this;
                    printWriter2.print(batteryStats.formatBytesLocked(networkActivityBytes7));
                    printWriter2.print(" received, ");
                    printWriter2.print(batteryStats.formatBytesLocked(networkActivityBytes8));
                    printWriter2.print(" sent (packets ");
                    printWriter2.print(networkActivityPackets5);
                    printWriter2.print(" received, ");
                    printWriter2.print(networkActivityPackets6);
                    printWriter2.println(" sent)");
                } else {
                    batteryStats = this;
                }
                if (mobileRadioActiveTime2 > 0 || mobileRadioActiveCount > 0) {
                    sb2 = sb8;
                    sb2.setLength(0);
                    printWriter3 = printWriter2;
                    sb2.append(str);
                    sb2.append("    Mobile radio active: ");
                    long j62 = mobileRadioActiveTime2 / 1000;
                    formatTimeMs(sb2, j62);
                    sb2.append(str69);
                    j8 = j46;
                    sb2.append(batteryStats.formatRatioLocked(mobileRadioActiveTime2, j8));
                    str10 = str10;
                    sb2.append(str10);
                    sb2.append(mobileRadioActiveCount);
                    str15 = str68;
                    sb2.append(str15);
                    long j63 = networkActivityPackets5 + networkActivityPackets6;
                    if (j63 == 0) {
                        j63 = 1;
                    }
                    sb2.append(" @ ");
                    sb2.append(BatteryStatsHelper.makemAh(j62 / j63));
                    sb2.append(" mspp");
                    printWriter3.println(sb2.toString());
                } else {
                    sb2 = sb8;
                    printWriter3 = printWriter2;
                    str10 = str10;
                    j8 = j46;
                    str15 = str68;
                }
                if (mobileRadioApWakeupCount > 0) {
                    str16 = str;
                    m.v(sb2, 0, str16, "    Mobile radio AP wakeups: ");
                    sb2.append(mobileRadioApWakeupCount);
                    printWriter3.println(sb2.toString());
                } else {
                    str16 = str;
                }
                String str89 = str88;
                BatteryStats batteryStats2 = batteryStats;
                long j64 = j7;
                String str90 = str16;
                String str91 = str69;
                printControllerActivityIfInteresting(printWriter, sb2, android.accessibilityservice.c.D(str16, "  "), "Modem", uidValueAt2.getModemControllerActivity(), i2);
                if (networkActivityBytes9 > 0 || networkActivityBytes10 > 0 || networkActivityPackets7 > 0 || networkActivityPackets8 > 0) {
                    printWriter.print(str);
                    printWriter3.print("    Wi-Fi network: ");
                    printWriter3.print(batteryStats2.formatBytesLocked(networkActivityBytes9));
                    printWriter3.print(" received, ");
                    printWriter3.print(batteryStats2.formatBytesLocked(networkActivityBytes10));
                    printWriter3.print(" sent (packets ");
                    printWriter3.print(networkActivityPackets7);
                    printWriter3.print(" received, ");
                    printWriter3.print(networkActivityPackets8);
                    printWriter3.println(" sent)");
                }
                if (fullWifiLockTime == 0 && wifiScanTime == 0 && wifiScanCount == 0 && wifiScanBackgroundCount == 0 && wifiScanActualTime == 0 && wifiScanBackgroundTime == 0 && wifiRunningTime == 0) {
                    j9 = j5;
                    j10 = j64;
                    str17 = str91;
                    String str92 = str15;
                    printWriter4 = printWriter3;
                    str18 = str92;
                } else {
                    sb2.setLength(0);
                    sb2.append(str90);
                    sb2.append("    Wifi Running: ");
                    formatTimeMs(sb2, wifiRunningTime / 1000);
                    str17 = str91;
                    sb2.append(str17);
                    long j65 = j5;
                    sb2.append(batteryStats2.formatRatioLocked(wifiRunningTime, j65));
                    sb2.append(")\n");
                    sb2.append(str90);
                    sb2.append("    Full Wifi Lock: ");
                    formatTimeMs(sb2, fullWifiLockTime / 1000);
                    sb2.append(str17);
                    sb2.append(batteryStats2.formatRatioLocked(fullWifiLockTime, j65));
                    sb2.append(")\n");
                    sb2.append(str90);
                    sb2.append("    Wifi Scan (blamed): ");
                    formatTimeMs(sb2, wifiScanTime / 1000);
                    sb2.append(str17);
                    sb2.append(batteryStats2.formatRatioLocked(wifiScanTime, j65));
                    sb2.append(str10);
                    sb2.append(wifiScanCount);
                    sb2.append("x\n");
                    sb2.append(str90);
                    sb2.append("    Wifi Scan (actual): ");
                    formatTimeMs(sb2, wifiScanActualTime / 1000);
                    sb2.append(str17);
                    j9 = j65;
                    j10 = j64;
                    sb2.append(batteryStats2.formatRatioLocked(wifiScanActualTime, batteryStats2.computeBatteryRealtime(j10, 0)));
                    sb2.append(str10);
                    sb2.append(wifiScanCount);
                    sb2.append("x\n");
                    sb2.append(str90);
                    sb2.append("    Background Wifi Scan: ");
                    formatTimeMs(sb2, wifiScanBackgroundTime / 1000);
                    sb2.append(str17);
                    sb2.append(batteryStats2.formatRatioLocked(wifiScanBackgroundTime, batteryStats2.computeBatteryRealtime(j10, 0)));
                    sb2.append(str10);
                    sb2.append(wifiScanBackgroundCount);
                    str18 = str15;
                    sb2.append(str18);
                    printWriter4 = printWriter;
                    printWriter4.println(sb2.toString());
                }
                if (wifiRadioApWakeupCount > 0) {
                    m.v(sb2, 0, str90, "    WiFi AP wakeups: ");
                    sb2.append(wifiRadioApWakeupCount);
                    printWriter4.println(sb2.toString());
                }
                str19 = str18;
                long j66 = j10;
                j11 = j9;
                String str93 = str17;
                printControllerActivityIfInteresting(printWriter, sb2, android.accessibilityservice.c.D(str90, "  "), "WiFi", uidValueAt2.getWifiControllerActivity(), i2);
                if (networkActivityBytes11 > 0 || networkActivityBytes12 > 0) {
                    printWriter.print(str);
                    printWriter4.print("    Bluetooth network: ");
                    printWriter4.print(batteryStats2.formatBytesLocked(networkActivityBytes11));
                    printWriter4.print(" received, ");
                    printWriter4.print(batteryStats2.formatBytesLocked(networkActivityBytes12));
                    printWriter4.println(" sent");
                }
                Timer bluetoothScanTimer = uidValueAt2.getBluetoothScanTimer();
                String str94 = "\n";
                String str95 = " times)";
                if (bluetoothScanTimer != null) {
                    long totalTimeLocked6 = (bluetoothScanTimer.getTotalTimeLocked(j66, i2) + 500) / 1000;
                    if (totalTimeLocked6 != 0) {
                        int countLocked7 = bluetoothScanTimer.getCountLocked(i2);
                        Timer bluetoothScanBackgroundTimer = uidValueAt2.getBluetoothScanBackgroundTimer();
                        int countLocked8 = bluetoothScanBackgroundTimer != null ? bluetoothScanBackgroundTimer.getCountLocked(i2) : 0;
                        j47 = j47;
                        long totalDurationMsLocked6 = bluetoothScanTimer.getTotalDurationMsLocked(j47);
                        long totalDurationMsLocked7 = bluetoothScanBackgroundTimer != null ? bluetoothScanBackgroundTimer.getTotalDurationMsLocked(j47) : 0L;
                        int countLocked9 = uidValueAt2.getBluetoothScanResultCounter() != null ? uidValueAt2.getBluetoothScanResultCounter().getCountLocked(i2) : 0;
                        int countLocked10 = uidValueAt2.getBluetoothScanResultBgCounter() != null ? uidValueAt2.getBluetoothScanResultBgCounter().getCountLocked(i2) : 0;
                        Timer bluetoothUnoptimizedScanTimer = uidValueAt2.getBluetoothUnoptimizedScanTimer();
                        long totalDurationMsLocked8 = bluetoothUnoptimizedScanTimer != null ? bluetoothUnoptimizedScanTimer.getTotalDurationMsLocked(j47) : 0L;
                        long maxDurationMsLocked = bluetoothUnoptimizedScanTimer != null ? bluetoothUnoptimizedScanTimer.getMaxDurationMsLocked(j47) : 0L;
                        Timer bluetoothUnoptimizedScanBackgroundTimer = uidValueAt2.getBluetoothUnoptimizedScanBackgroundTimer();
                        long totalDurationMsLocked9 = bluetoothUnoptimizedScanBackgroundTimer != null ? bluetoothUnoptimizedScanBackgroundTimer.getTotalDurationMsLocked(j47) : 0L;
                        long maxDurationMsLocked2 = bluetoothUnoptimizedScanBackgroundTimer != null ? bluetoothUnoptimizedScanBackgroundTimer.getMaxDurationMsLocked(j47) : 0L;
                        sb2.setLength(0);
                        if (totalDurationMsLocked6 != totalTimeLocked6) {
                            str22 = str;
                            sb2.append(str22);
                            sb2.append("    Bluetooth Scan (total blamed realtime): ");
                            formatTimeMs(sb2, totalTimeLocked6);
                            str21 = str6;
                            sb2.append(str21);
                            sb2.append(countLocked7);
                            sb2.append(" times)");
                            if (bluetoothScanTimer.isRunningLocked()) {
                                sb2.append(" (currently running)");
                            }
                            sb2.append("\n");
                        } else {
                            str22 = str;
                            str21 = str6;
                        }
                        sb2.append(str22);
                        sb2.append("    Bluetooth Scan (total actual realtime): ");
                        formatTimeMs(sb2, totalDurationMsLocked6);
                        sb2.append(str21);
                        sb2.append(countLocked7);
                        sb2.append(" times)");
                        if (bluetoothScanTimer.isRunningLocked()) {
                            sb2.append(" (currently running)");
                        }
                        sb2.append("\n");
                        if (totalDurationMsLocked7 > 0 || countLocked8 > 0) {
                            sb2.append(str22);
                            sb2.append("    Bluetooth Scan (background realtime): ");
                            formatTimeMs(sb2, totalDurationMsLocked7);
                            sb2.append(str21);
                            sb2.append(countLocked8);
                            sb2.append(" times)");
                            if (bluetoothScanBackgroundTimer != 0 && bluetoothScanBackgroundTimer.isRunningLocked()) {
                                sb2.append(" (currently running in background)");
                            }
                            sb2.append("\n");
                        }
                        sb2.append(str22);
                        sb2.append("    Bluetooth Scan Results: ");
                        sb2.append(countLocked9);
                        sb2.append(str21);
                        sb2.append(countLocked10);
                        sb2.append(" in background)");
                        long j67 = totalDurationMsLocked8;
                        if (j67 <= 0) {
                            j21 = totalDurationMsLocked9;
                            if (j21 <= 0) {
                                str20 = str13;
                            }
                            printWriter5 = printWriter;
                            printWriter5.println(sb2.toString());
                            i10 = 1;
                        } else {
                            j21 = totalDurationMsLocked9;
                        }
                        sb2.append("\n");
                        sb2.append(str22);
                        sb2.append("    Unoptimized Bluetooth Scan (realtime): ");
                        formatTimeMs(sb2, j67);
                        sb2.append(" (max ");
                        formatTimeMs(sb2, maxDurationMsLocked);
                        str20 = str13;
                        sb2.append(str20);
                        if (bluetoothUnoptimizedScanTimer != 0 && bluetoothUnoptimizedScanTimer.isRunningLocked()) {
                            sb2.append(" (currently running unoptimized)");
                        }
                        if (bluetoothUnoptimizedScanBackgroundTimer != null && j21 > 0) {
                            sb2.append("\n");
                            sb2.append(str22);
                            sb2.append("    Unoptimized Bluetooth Scan (background realtime): ");
                            formatTimeMs(sb2, j21);
                            sb2.append(" (max ");
                            formatTimeMs(sb2, maxDurationMsLocked2);
                            sb2.append(str20);
                            if (bluetoothUnoptimizedScanBackgroundTimer.isRunningLocked()) {
                                sb2.append(" (currently running unoptimized in background)");
                            }
                        }
                        printWriter5 = printWriter;
                        printWriter5.println(sb2.toString());
                        i10 = 1;
                    } else {
                        str93 = str93;
                        printWriter5 = printWriter4;
                        uidValueAt2 = uidValueAt2;
                        str20 = str13;
                        str21 = str6;
                        str22 = str;
                        i10 = 0;
                    }
                } else {
                    str93 = str93;
                    printWriter5 = printWriter4;
                    uidValueAt2 = uidValueAt2;
                    str20 = str13;
                    str21 = str6;
                    str22 = str;
                    i10 = 0;
                }
                if (uidValueAt2.hasUserActivity()) {
                    int i53 = 0;
                    boolean z12 = false;
                    while (i53 < 4) {
                        Uid uid4 = uidValueAt2;
                        int userActivityCount = uid4.getUserActivityCount(i53, i2);
                        if (userActivityCount != 0) {
                            if (z12) {
                                sb2.append(", ");
                            } else {
                                sb2.setLength(0);
                                sb2.append("    User activity: ");
                                z12 = true;
                            }
                            sb2.append(userActivityCount);
                            str45 = str89;
                            sb2.append(str45);
                            sb2.append(Uid.USER_ACTIVITY_TYPES[i53]);
                        } else {
                            str45 = str89;
                        }
                        i53++;
                        str89 = str45;
                        uidValueAt2 = uid4;
                    }
                    str23 = str89;
                    uid = uidValueAt2;
                    if (z12) {
                        printWriter5.println(sb2.toString());
                    }
                } else {
                    str23 = str89;
                    uid = uidValueAt2;
                }
                ArrayMap<String, ? extends Uid.Wakelock> wakelockStats2 = uid.getWakelockStats();
                int i54 = 0;
                String str96 = ", ";
                String str97 = str21;
                long jComputeWakeLock2 = 0;
                long jComputeWakeLock3 = 0;
                long jComputeWakeLock4 = 0;
                long jComputeWakeLock5 = 0;
                int size11 = wakelockStats2.size() - 1;
                int i55 = 1;
                while (size11 >= 0) {
                    Uid.Wakelock wakelockValueAt2 = wakelockStats2.valueAt(size11);
                    int i56 = i54;
                    m.v(sb2, 0, str22, "    Wake lock ");
                    sb2.append(wakelockStats2.keyAt(size11));
                    String str98 = str20;
                    int i57 = size11;
                    String str99 = str23;
                    ArrayMap<String, ? extends Uid.Wakelock> arrayMap = wakelockStats2;
                    String str100 = str95;
                    String str101 = str94;
                    String strPrintWakeLock = printWakeLock(sb2, wakelockValueAt2.getWakeTime(1), j66, "full", i2, ": ");
                    Timer wakeTime3 = wakelockValueAt2.getWakeTime(0);
                    printWakeLock(sb2, wakelockValueAt2.getWakeTime(18), j66, "draw", i2, printWakeLock(sb2, wakelockValueAt2.getWakeTime(2), j66, Context.WINDOW_SERVICE, i2, printWakeLock(sb2, wakeTime3 != null ? wakeTime3.getSubTimer() : null, j66, "background partial", i2, printWakeLock(sb2, wakeTime3, j66, "partial", i2, strPrintWakeLock))));
                    sb2.append(str14);
                    printWriter5.println(sb2.toString());
                    i54 = i56 + 1;
                    jComputeWakeLock2 += computeWakeLock(wakelockValueAt2.getWakeTime(1), j66, i2);
                    jComputeWakeLock5 += computeWakeLock(wakelockValueAt2.getWakeTime(0), j66, i2);
                    jComputeWakeLock3 += computeWakeLock(wakelockValueAt2.getWakeTime(2), j66, i2);
                    jComputeWakeLock4 += computeWakeLock(wakelockValueAt2.getWakeTime(18), j66, i2);
                    i55 = 1;
                    printWriter5 = printWriter;
                    wakelockStats2 = arrayMap;
                    str23 = str99;
                    str95 = str100;
                    str94 = str101;
                    size11 = i57 - 1;
                    i10 = 1;
                    str20 = str98;
                }
                int i58 = i54;
                String str102 = str95;
                String str103 = str94;
                str24 = str20;
                String str104 = str23;
                String str105 = str14;
                long j68 = jComputeWakeLock3;
                long j69 = jComputeWakeLock4;
                long j70 = jComputeWakeLock5;
                if (i58 > i55) {
                    if (uid.getAggregatedPartialWakelockTimer() != null) {
                        Timer aggregatedPartialWakelockTimer = uid.getAggregatedPartialWakelockTimer();
                        long j71 = j47;
                        long totalDurationMsLocked10 = aggregatedPartialWakelockTimer.getTotalDurationMsLocked(j71);
                        Timer subTimer3 = aggregatedPartialWakelockTimer.getSubTimer();
                        j47 = j71;
                        j20 = totalDurationMsLocked10;
                        totalDurationMsLocked5 = subTimer3 != null ? subTimer3.getTotalDurationMsLocked(j71) : 0L;
                    } else {
                        j20 = 0;
                        totalDurationMsLocked5 = 0;
                    }
                    if (j20 == 0 && totalDurationMsLocked5 == 0 && jComputeWakeLock2 == 0 && j70 == 0 && j68 == 0) {
                        i55 = 1;
                    } else {
                        m.v(sb2, 0, str22, "    TOTAL wake: ");
                        if (jComputeWakeLock2 != 0) {
                            formatTimeMs(sb2, jComputeWakeLock2);
                            sb2.append("full");
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (j70 != 0) {
                            str96 = str96;
                            if (z3) {
                                sb2.append(str96);
                            }
                            formatTimeMs(sb2, j70);
                            sb2.append("blamed partial");
                            z3 = true;
                        } else {
                            str96 = str96;
                        }
                        if (j20 != 0) {
                            if (z3) {
                                sb2.append(str96);
                            }
                            formatTimeMs(sb2, j20);
                            sb2.append("actual partial");
                            z3 = true;
                        }
                        if (totalDurationMsLocked5 != 0) {
                            if (z3) {
                                sb2.append(str96);
                            }
                            formatTimeMs(sb2, totalDurationMsLocked5);
                            sb2.append("actual background partial");
                            z3 = true;
                        }
                        if (j68 != 0) {
                            if (z3) {
                                sb2.append(str96);
                            }
                            formatTimeMs(sb2, j68);
                            sb2.append(Context.WINDOW_SERVICE);
                            z3 = true;
                        }
                        if (j69 != 0) {
                            if (z3) {
                                sb2.append(",");
                            }
                            formatTimeMs(sb2, j69);
                            sb2.append("draw");
                        }
                        str25 = str105;
                        sb2.append(str25);
                        printWriter6 = printWriter;
                        printWriter6.println(sb2.toString());
                        i55 = 1;
                    }
                    syncStats = uid.getSyncStats();
                    size = syncStats.size() - 1;
                    i11 = i10;
                    while (size >= 0) {
                        Timer timerValueAt = syncStats.valueAt(size);
                        long j72 = j66;
                        totalTimeLocked3 = (timerValueAt.getTotalTimeLocked(j72, i2) + 500) / 1000;
                        countLocked5 = timerValueAt.getCountLocked(i2);
                        subTimer2 = timerValueAt.getSubTimer();
                        if (subTimer2 != null) {
                            totalDurationMsLocked4 = subTimer2.getTotalDurationMsLocked(j47);
                        } else {
                            totalDurationMsLocked4 = -1;
                        }
                        j19 = totalDurationMsLocked4;
                        if (subTimer2 != null) {
                            countLocked6 = subTimer2.getCountLocked(i2);
                        } else {
                            countLocked6 = i6;
                        }
                        m.v(sb2, 0, str22, "    Sync ");
                        sb2.append(syncStats.keyAt(size));
                        String str106 = str12;
                        sb2.append(str106);
                        if (totalTimeLocked3 != 0) {
                            formatTimeMs(sb2, totalTimeLocked3);
                            sb2.append("realtime (");
                            sb2.append(countLocked5);
                            str44 = str102;
                            sb2.append(str44);
                            if (j19 > 0) {
                                sb2.append(str96);
                                formatTimeMs(sb2, j19);
                                sb2.append("background (");
                                sb2.append(countLocked6);
                                sb2.append(str44);
                            }
                        } else {
                            str44 = str102;
                            sb2.append("(not used)");
                        }
                        printWriter6.println(sb2.toString());
                        size--;
                        i55 = i55;
                        i11 = i55;
                        str12 = str106;
                        str102 = str44;
                        j66 = j72;
                        str25 = str25;
                    }
                    str26 = str25;
                    i12 = i55;
                    j12 = j66;
                    str27 = str12;
                    str28 = str102;
                    jobStats = uid.getJobStats();
                    size2 = jobStats.size() - 1;
                    while (size2 >= 0) {
                        Timer timerValueAt2 = jobStats.valueAt(size2);
                        long j73 = j12;
                        totalTimeLocked2 = (timerValueAt2.getTotalTimeLocked(j12, i2) + 500) / 1000;
                        countLocked3 = timerValueAt2.getCountLocked(i2);
                        subTimer = timerValueAt2.getSubTimer();
                        if (subTimer != null) {
                            totalDurationMsLocked3 = subTimer.getTotalDurationMsLocked(j47);
                        } else {
                            totalDurationMsLocked3 = -1;
                        }
                        j18 = totalDurationMsLocked3;
                        if (subTimer != null) {
                            countLocked4 = subTimer.getCountLocked(i2);
                        } else {
                            countLocked4 = i6;
                        }
                        m.v(sb2, 0, str22, "    Job ");
                        sb2.append(jobStats.keyAt(size2));
                        sb2.append(str27);
                        if (totalTimeLocked2 != 0) {
                            formatTimeMs(sb2, totalTimeLocked2);
                            sb2.append("realtime (");
                            sb2.append(countLocked3);
                            sb2.append(str28);
                            str43 = str96;
                            if (j18 > 0) {
                                sb2.append(str43);
                                formatTimeMs(sb2, j18);
                                sb2.append("background (");
                                sb2.append(countLocked4);
                                sb2.append(str28);
                            }
                        } else {
                            str43 = str96;
                            sb2.append("(not used)");
                        }
                        printWriter6.println(sb2.toString());
                        size2--;
                        i11 = i12;
                        str96 = str43;
                        j12 = j73;
                    }
                    i13 = i2;
                    j13 = j12;
                    String str107 = str96;
                    jobCompletionStats = uid.getJobCompletionStats();
                    size3 = jobCompletionStats.size() - 1;
                    while (size3 >= 0) {
                        sparseIntArrayValueAt = jobCompletionStats.valueAt(size3);
                        if (sparseIntArrayValueAt != null) {
                            printWriter.print(str);
                            printWriter6.print("    Job Completions ");
                            printWriter6.print(jobCompletionStats.keyAt(size3));
                            printWriter6.print(SettingsStringUtil.DELIMITER);
                            for (i31 = 0; i31 < sparseIntArrayValueAt.size(); i31++) {
                                printWriter6.print(str104);
                                printWriter6.print(JobParameters.getReasonName(sparseIntArrayValueAt.keyAt(i31)));
                                printWriter6.print(str93);
                                printWriter6.print(sparseIntArrayValueAt.valueAt(i31));
                                printWriter6.print("x)");
                            }
                            printWriter.println();
                        }
                        size3--;
                        str104 = str104;
                        str93 = str93;
                    }
                    str29 = str104;
                    j14 = j47;
                    uid2 = uid;
                    str30 = str22;
                    str31 = str93;
                    str32 = str107;
                    sparseArray = sparseArray4;
                    sb3 = sb2;
                    i14 = i52;
                    str33 = str97;
                    int i59 = i11 | (printTimer(printWriter, sb2, uid.getFlashlightTurnedOnTimer(), j13, i2, str, "Flashlight") ? 1 : 0) | (printTimer(printWriter, sb3, uid2.getCameraTurnedOnTimer(), j13, i2, str, "Camera") ? 1 : 0) | (printTimer(printWriter, sb3, uid2.getVideoTurnedOnTimer(), j13, i2, str, "Video") ? 1 : 0) | (printTimer(printWriter, sb3, uid2.getAudioTurnedOnTimer(), j13, i2, str, "Audio") ? 1 : 0);
                    sensorStats = uid2.getSensorStats();
                    size4 = sensorStats.size();
                    i15 = i59;
                    i16 = 0;
                    i17 = 0;
                    while (i16 < size4) {
                        sensorValueAt = sensorStats.valueAt(i16);
                        sensorStats.keyAt(i16);
                        sb5 = sb3;
                        sb5.setLength(i17);
                        sb5.append(str30);
                        sb5.append("    Sensor ");
                        handle = sensorValueAt.getHandle();
                        if (handle == -10000) {
                            sb5.append("GPS");
                        } else {
                            sb5.append(handle);
                        }
                        sb5.append(str27);
                        sensorTime = sensorValueAt.getSensorTime();
                        if (sensorTime != null) {
                            long j74 = j13;
                            sparseArray2 = sensorStats;
                            totalTimeLocked = (sensorTime.getTotalTimeLocked(j74, i13) + 500) / 1000;
                            i29 = size4;
                            countLocked = sensorTime.getCountLocked(i13);
                            sensorBackgroundTime = sensorValueAt.getSensorBackgroundTime();
                            if (sensorBackgroundTime != null) {
                                countLocked2 = sensorBackgroundTime.getCountLocked(i13);
                            } else {
                                countLocked2 = 0;
                            }
                            str42 = str27;
                            j13 = j74;
                            i30 = countLocked2;
                            totalDurationMsLocked = sensorTime.getTotalDurationMsLocked(j14);
                            if (sensorBackgroundTime != null) {
                                totalDurationMsLocked2 = sensorBackgroundTime.getTotalDurationMsLocked(j14);
                            } else {
                                totalDurationMsLocked2 = 0;
                            }
                            if (totalTimeLocked != 0) {
                                if (totalDurationMsLocked != totalTimeLocked) {
                                    formatTimeMs(sb5, totalTimeLocked);
                                    sb5.append("blamed realtime, ");
                                }
                                formatTimeMs(sb5, totalDurationMsLocked);
                                sb5.append("realtime (");
                                sb5.append(countLocked);
                                sb5.append(str28);
                                if (totalDurationMsLocked2 == 0 || i30 > 0) {
                                    sb5.append(str32);
                                    formatTimeMs(sb5, totalDurationMsLocked2);
                                    sb5.append("background (");
                                    sb5.append(i30);
                                    sb5.append(str28);
                                }
                            } else {
                                sb5.append("(not used)");
                            }
                        } else {
                            str42 = str27;
                            sparseArray2 = sensorStats;
                            i29 = size4;
                            sb5.append("(not used)");
                        }
                        printWriter.println(sb5.toString());
                        i16++;
                        i17 = 0;
                        i15 = i12;
                        sensorStats = sparseArray2;
                        str32 = str32;
                        size4 = i29;
                        str27 = str42;
                        sb3 = sb5;
                    }
                    str34 = str32;
                    str12 = str27;
                    StringBuilder sb9 = sb3;
                    printWriter7 = printWriter;
                    j15 = j13;
                    j47 = j14;
                    sb4 = sb9;
                    i18 = i15 | (printTimer(printWriter, sb9, uid2.getVibratorOnTimer(), j13, i2, str, "Vibrator") ? 1 : 0) | (printTimer(printWriter, sb4, uid2.getForegroundActivityTimer(), j15, i2, str, "Foreground activities") ? 1 : 0) | (printTimer(printWriter, sb4, uid2.getForegroundServiceTimer(), j15, i2, str, "Foreground services") ? 1 : 0);
                    i19 = 0;
                    j16 = 0;
                    while (i19 < 6) {
                        Uid uid5 = uid2;
                        processStateTime = uid5.getProcessStateTime(i19, j15, i13);
                        if (processStateTime > 0) {
                            j16 += processStateTime;
                            sb4.setLength(0);
                            sb4.append(str30);
                            sb4.append("    ");
                            sb4.append(Uid.PROCESS_STATE_NAMES[i19]);
                            sb4.append(" for: ");
                            formatTimeMs(sb4, (processStateTime + 500) / 1000);
                            printWriter7.println(sb4.toString());
                            i18 = i12;
                        }
                        i19++;
                        uid2 = uid5;
                    }
                    uid3 = uid2;
                    if (j16 > 0) {
                        sb4.setLength(0);
                        sb4.append(str30);
                        sb4.append("    Total running: ");
                        formatTimeMs(sb4, (j16 + 500) / 1000);
                        printWriter7.println(sb4.toString());
                    }
                    userCpuTimeUs = uid3.getUserCpuTimeUs(i13);
                    systemCpuTimeUs = uid3.getSystemCpuTimeUs(i13);
                    if (userCpuTimeUs <= 0 || systemCpuTimeUs > 0) {
                        sb4.setLength(0);
                        sb4.append(str30);
                        sb4.append("    Total cpu time: u=");
                        formatTimeMs(sb4, userCpuTimeUs / 1000);
                        sb4.append("s=");
                        formatTimeMs(sb4, systemCpuTimeUs / 1000);
                        printWriter7.println(sb4.toString());
                    }
                    cpuFreqTimes = uid3.getCpuFreqTimes(i13);
                    if (cpuFreqTimes != null) {
                        sb4.setLength(0);
                        sb4.append("    Total cpu time per freq:");
                        for (long j75 : cpuFreqTimes) {
                            sb4.append(str29 + j75);
                        }
                        printWriter7.println(sb4.toString());
                    }
                    screenOffCpuFreqTimes = uid3.getScreenOffCpuFreqTimes(i13);
                    if (screenOffCpuFreqTimes != null) {
                        sb4.setLength(0);
                        sb4.append("    Total screen-off cpu time per freq:");
                        for (long j76 : screenOffCpuFreqTimes) {
                            sb4.append(str29 + j76);
                        }
                        printWriter7.println(sb4.toString());
                    }
                    processStats = uid3.getProcessStats();
                    size5 = processStats.size() - 1;
                    while (size5 >= 0) {
                        procValueAt = processStats.valueAt(size5);
                        userTime = procValueAt.getUserTime(i13);
                        long j77 = j15;
                        systemTime = procValueAt.getSystemTime(i13);
                        Uid uid6 = uid3;
                        String str108 = str35;
                        foregroundTime = procValueAt.getForegroundTime(i13);
                        starts2 = procValueAt.getStarts(i13);
                        int i60 = i18;
                        numCrashes = procValueAt.getNumCrashes(i13);
                        numAnrs = procValueAt.getNumAnrs(i13);
                        if (i13 == 0) {
                            iCountExcessivePowers = procValueAt.countExcessivePowers();
                        } else {
                            iCountExcessivePowers = 0;
                        }
                        i23 = iCountExcessivePowers;
                        if (userTime != 0 && systemTime == 0 && foregroundTime == 0 && starts2 == 0 && i23 == 0 && numCrashes == 0 && numAnrs == 0) {
                            printWriter10 = printWriter;
                            i26 = i60;
                            str39 = str103;
                            str40 = str33;
                        } else {
                            proc = procValueAt;
                            m.v(sb4, 0, str30, "    Proc ");
                            sb4.append(processStats.keyAt(size5));
                            sb4.append(":\n");
                            sb4.append(str30);
                            sb4.append("      CPU: ");
                            formatTimeMs(sb4, userTime);
                            sb4.append("usr + ");
                            formatTimeMs(sb4, systemTime);
                            sb4.append("krn ; ");
                            formatTimeMs(sb4, foregroundTime);
                            sb4.append(FOREGROUND_ACTIVITY_DATA);
                            if (starts2 != 0 && numCrashes == 0 && numAnrs == 0) {
                                str39 = str103;
                            } else {
                                str39 = str103;
                                sb4.append(str39);
                                sb4.append(str30);
                                sb4.append("      ");
                                if (starts2 != 0) {
                                    sb4.append(starts2);
                                    sb4.append(" starts");
                                    i24 = i12;
                                } else {
                                    i24 = 0;
                                }
                                if (numCrashes != 0) {
                                    if (i24 != 0) {
                                        sb4.append(str34);
                                    }
                                    sb4.append(numCrashes);
                                    sb4.append(" crashes");
                                    i24 = i12;
                                }
                                if (numAnrs != 0) {
                                    if (i24 != 0) {
                                        sb4.append(str34);
                                    }
                                    sb4.append(numAnrs);
                                    sb4.append(" anrs");
                                }
                            }
                            printWriter10 = printWriter;
                            printWriter10.println(sb4.toString());
                            i25 = 0;
                            while (i25 < i23) {
                                Uid.Proc proc2 = proc;
                                excessivePower = proc2.getExcessivePower(i25);
                                if (excessivePower != null) {
                                    printWriter.print(str);
                                    printWriter10.print("      * Killed for ");
                                    if (excessivePower.type == 2) {
                                        printWriter10.print(CPU_DATA);
                                    } else {
                                        printWriter10.print("unknown");
                                    }
                                    printWriter10.print(" use: ");
                                    TimeUtils.formatDuration(excessivePower.usedTime, printWriter10);
                                    printWriter10.print(" over ");
                                    TimeUtils.formatDuration(excessivePower.overTime, printWriter10);
                                    if (excessivePower.overTime != 0) {
                                        str41 = str33;
                                        printWriter10.print(str41);
                                        printWriter10.print((excessivePower.usedTime * 100) / excessivePower.overTime);
                                        printWriter10.println("%)");
                                    } else {
                                        str41 = str33;
                                    }
                                } else {
                                    str41 = str33;
                                }
                                i25++;
                                proc = proc2;
                                str33 = str41;
                            }
                            str40 = str33;
                            i26 = i12;
                        }
                        size5--;
                        str103 = str39;
                        str33 = str40;
                        uid3 = uid6;
                        str35 = str108;
                        j15 = j77;
                        i13 = i2;
                        PrintWriter printWriter13 = printWriter10;
                        i18 = i26;
                        printWriter7 = printWriter13;
                    }
                    int i61 = i18;
                    j7 = j15;
                    Uid uid7 = uid3;
                    str36 = str35;
                    str37 = str33;
                    printWriter8 = printWriter7;
                    packageStats = uid7.getPackageStats();
                    size6 = packageStats.size() - 1;
                    i20 = i61;
                    while (size6 >= 0) {
                        printWriter.print(str);
                        printWriter8.print("    Apk ");
                        printWriter8.print(packageStats.keyAt(size6));
                        printWriter8.println(SettingsStringUtil.DELIMITER);
                        Uid.Pkg pkgValueAt = packageStats.valueAt(size6);
                        wakeupAlarmStats = pkgValueAt.getWakeupAlarmStats();
                        size7 = wakeupAlarmStats.size() - 1;
                        i22 = 0;
                        while (size7 >= 0) {
                            printWriter.print(str);
                            printWriter8.print("      Wakeup alarm ");
                            printWriter8.print(wakeupAlarmStats.keyAt(size7));
                            printWriter8.print(str12);
                            printWriter8.print(wakeupAlarmStats.valueAt(size7).getCountLocked(i2));
                            printWriter8.println(" times");
                            size7--;
                            i22 = i12;
                        }
                        str38 = str12;
                        serviceStats = pkgValueAt.getServiceStats();
                        size8 = serviceStats.size() - 1;
                        while (size8 >= 0) {
                            Uid.Pkg.Serv servValueAt = serviceStats.valueAt(size8);
                            long j78 = j45;
                            startTime = servValueAt.getStartTime(j78, i2);
                            ArrayMap<String, ? extends Uid.Pkg> arrayMap2 = packageStats;
                            starts = servValueAt.getStarts(i2);
                            launches = servValueAt.getLaunches(i2);
                            if (startTime == 0 || starts != 0 || launches != 0) {
                                m.v(sb4, 0, str30, "      Service ");
                                sb4.append(serviceStats.keyAt(size8));
                                sb4.append(":\n");
                                sb4.append(str30);
                                sb4.append("        Created for: ");
                                formatTimeMs(sb4, startTime / 1000);
                                sb4.append("uptime\n");
                                sb4.append(str30);
                                sb4.append("        Starts: ");
                                sb4.append(starts);
                                sb4.append(", launches: ");
                                sb4.append(launches);
                                printWriter8.println(sb4.toString());
                                i22 = i12;
                            }
                            size8--;
                            packageStats = arrayMap2;
                            j45 = j78;
                            str38 = str38;
                        }
                        ArrayMap<String, ? extends Uid.Pkg> arrayMap3 = packageStats;
                        str12 = str38;
                        long j79 = j45;
                        if (i22 == 0) {
                            printWriter.print(str);
                            printWriter8.println("      (nothing executed)");
                        }
                        size6--;
                        i20 = i12;
                        packageStats = arrayMap3;
                        j45 = j79;
                    }
                    i21 = i2;
                    j17 = j45;
                    i7 = 0;
                    if (i20 == 0) {
                        printWriter.print(str);
                        printWriter8.println("    (nothing executed)");
                    }
                    printWriter9 = printWriter8;
                } else {
                    i10 = i10;
                }
                str25 = str105;
                printWriter6 = printWriter;
                syncStats = uid.getSyncStats();
                size = syncStats.size() - 1;
                i11 = i10;
                while (size >= 0) {
                    Timer timerValueAt3 = syncStats.valueAt(size);
                    long j710 = j66;
                    totalTimeLocked3 = (timerValueAt3.getTotalTimeLocked(j710, i2) + 500) / 1000;
                    countLocked5 = timerValueAt3.getCountLocked(i2);
                    subTimer2 = timerValueAt3.getSubTimer();
                    if (subTimer2 != null) {
                        totalDurationMsLocked4 = subTimer2.getTotalDurationMsLocked(j47);
                    } else {
                        totalDurationMsLocked4 = -1;
                    }
                    j19 = totalDurationMsLocked4;
                    if (subTimer2 != null) {
                        countLocked6 = subTimer2.getCountLocked(i2);
                    } else {
                        countLocked6 = i6;
                    }
                    m.v(sb2, 0, str22, "    Sync ");
                    sb2.append(syncStats.keyAt(size));
                    String str109 = str12;
                    sb2.append(str109);
                    if (totalTimeLocked3 != 0) {
                        formatTimeMs(sb2, totalTimeLocked3);
                        sb2.append("realtime (");
                        sb2.append(countLocked5);
                        str44 = str102;
                        sb2.append(str44);
                        if (j19 > 0) {
                            sb2.append(str96);
                            formatTimeMs(sb2, j19);
                            sb2.append("background (");
                            sb2.append(countLocked6);
                            sb2.append(str44);
                        }
                    } else {
                        str44 = str102;
                        sb2.append("(not used)");
                    }
                    printWriter6.println(sb2.toString());
                    size--;
                    i55 = i55;
                    i11 = i55;
                    str12 = str109;
                    str102 = str44;
                    j66 = j710;
                    str25 = str25;
                }
                str26 = str25;
                i12 = i55;
                j12 = j66;
                str27 = str12;
                str28 = str102;
                jobStats = uid.getJobStats();
                size2 = jobStats.size() - 1;
                while (size2 >= 0) {
                    Timer timerValueAt4 = jobStats.valueAt(size2);
                    long j711 = j12;
                    totalTimeLocked2 = (timerValueAt4.getTotalTimeLocked(j12, i2) + 500) / 1000;
                    countLocked3 = timerValueAt4.getCountLocked(i2);
                    subTimer = timerValueAt4.getSubTimer();
                    if (subTimer != null) {
                        totalDurationMsLocked3 = subTimer.getTotalDurationMsLocked(j47);
                    } else {
                        totalDurationMsLocked3 = -1;
                    }
                    j18 = totalDurationMsLocked3;
                    if (subTimer != null) {
                        countLocked4 = subTimer.getCountLocked(i2);
                    } else {
                        countLocked4 = i6;
                    }
                    m.v(sb2, 0, str22, "    Job ");
                    sb2.append(jobStats.keyAt(size2));
                    sb2.append(str27);
                    if (totalTimeLocked2 != 0) {
                        formatTimeMs(sb2, totalTimeLocked2);
                        sb2.append("realtime (");
                        sb2.append(countLocked3);
                        sb2.append(str28);
                        str43 = str96;
                        if (j18 > 0) {
                            sb2.append(str43);
                            formatTimeMs(sb2, j18);
                            sb2.append("background (");
                            sb2.append(countLocked4);
                            sb2.append(str28);
                        }
                    } else {
                        str43 = str96;
                        sb2.append("(not used)");
                    }
                    printWriter6.println(sb2.toString());
                    size2--;
                    i11 = i12;
                    str96 = str43;
                    j12 = j711;
                }
                i13 = i2;
                j13 = j12;
                String str1010 = str96;
                jobCompletionStats = uid.getJobCompletionStats();
                size3 = jobCompletionStats.size() - 1;
                while (size3 >= 0) {
                    sparseIntArrayValueAt = jobCompletionStats.valueAt(size3);
                    if (sparseIntArrayValueAt != null) {
                        printWriter.print(str);
                        printWriter6.print("    Job Completions ");
                        printWriter6.print(jobCompletionStats.keyAt(size3));
                        printWriter6.print(SettingsStringUtil.DELIMITER);
                        while (i31 < sparseIntArrayValueAt.size()) {
                            printWriter6.print(str104);
                            printWriter6.print(JobParameters.getReasonName(sparseIntArrayValueAt.keyAt(i31)));
                            printWriter6.print(str93);
                            printWriter6.print(sparseIntArrayValueAt.valueAt(i31));
                            printWriter6.print("x)");
                        }
                        printWriter.println();
                    }
                    size3--;
                    str104 = str104;
                    str93 = str93;
                }
                str29 = str104;
                j14 = j47;
                uid2 = uid;
                str30 = str22;
                str31 = str93;
                str32 = str1010;
                sparseArray = sparseArray4;
                sb3 = sb2;
                i14 = i52;
                str33 = str97;
                int i510 = i11 | (printTimer(printWriter, sb2, uid.getFlashlightTurnedOnTimer(), j13, i2, str, "Flashlight") ? 1 : 0) | (printTimer(printWriter, sb3, uid2.getCameraTurnedOnTimer(), j13, i2, str, "Camera") ? 1 : 0) | (printTimer(printWriter, sb3, uid2.getVideoTurnedOnTimer(), j13, i2, str, "Video") ? 1 : 0) | (printTimer(printWriter, sb3, uid2.getAudioTurnedOnTimer(), j13, i2, str, "Audio") ? 1 : 0);
                sensorStats = uid2.getSensorStats();
                size4 = sensorStats.size();
                i15 = i510;
                i16 = 0;
                i17 = 0;
                while (i16 < size4) {
                    sensorValueAt = sensorStats.valueAt(i16);
                    sensorStats.keyAt(i16);
                    sb5 = sb3;
                    sb5.setLength(i17);
                    sb5.append(str30);
                    sb5.append("    Sensor ");
                    handle = sensorValueAt.getHandle();
                    if (handle == -10000) {
                        sb5.append("GPS");
                    } else {
                        sb5.append(handle);
                    }
                    sb5.append(str27);
                    sensorTime = sensorValueAt.getSensorTime();
                    if (sensorTime != null) {
                        long j712 = j13;
                        sparseArray2 = sensorStats;
                        totalTimeLocked = (sensorTime.getTotalTimeLocked(j712, i13) + 500) / 1000;
                        i29 = size4;
                        countLocked = sensorTime.getCountLocked(i13);
                        sensorBackgroundTime = sensorValueAt.getSensorBackgroundTime();
                        if (sensorBackgroundTime != null) {
                            countLocked2 = sensorBackgroundTime.getCountLocked(i13);
                        } else {
                            countLocked2 = 0;
                        }
                        str42 = str27;
                        j13 = j712;
                        i30 = countLocked2;
                        totalDurationMsLocked = sensorTime.getTotalDurationMsLocked(j14);
                        if (sensorBackgroundTime != null) {
                            totalDurationMsLocked2 = sensorBackgroundTime.getTotalDurationMsLocked(j14);
                        } else {
                            totalDurationMsLocked2 = 0;
                        }
                        if (totalTimeLocked != 0) {
                            if (totalDurationMsLocked != totalTimeLocked) {
                                formatTimeMs(sb5, totalTimeLocked);
                                sb5.append("blamed realtime, ");
                            }
                            formatTimeMs(sb5, totalDurationMsLocked);
                            sb5.append("realtime (");
                            sb5.append(countLocked);
                            sb5.append(str28);
                            if (totalDurationMsLocked2 == 0) {
                                sb5.append(str32);
                                formatTimeMs(sb5, totalDurationMsLocked2);
                                sb5.append("background (");
                                sb5.append(i30);
                                sb5.append(str28);
                            } else {
                                sb5.append(str32);
                                formatTimeMs(sb5, totalDurationMsLocked2);
                                sb5.append("background (");
                                sb5.append(i30);
                                sb5.append(str28);
                            }
                        } else {
                            sb5.append("(not used)");
                        }
                    } else {
                        str42 = str27;
                        sparseArray2 = sensorStats;
                        i29 = size4;
                        sb5.append("(not used)");
                    }
                    printWriter.println(sb5.toString());
                    i16++;
                    i17 = 0;
                    i15 = i12;
                    sensorStats = sparseArray2;
                    str32 = str32;
                    size4 = i29;
                    str27 = str42;
                    sb3 = sb5;
                }
                str34 = str32;
                str12 = str27;
                StringBuilder sb10 = sb3;
                printWriter7 = printWriter;
                j15 = j13;
                j47 = j14;
                sb4 = sb10;
                i18 = i15 | (printTimer(printWriter, sb10, uid2.getVibratorOnTimer(), j13, i2, str, "Vibrator") ? 1 : 0) | (printTimer(printWriter, sb4, uid2.getForegroundActivityTimer(), j15, i2, str, "Foreground activities") ? 1 : 0) | (printTimer(printWriter, sb4, uid2.getForegroundServiceTimer(), j15, i2, str, "Foreground services") ? 1 : 0);
                i19 = 0;
                j16 = 0;
                while (i19 < 6) {
                    Uid uid8 = uid2;
                    processStateTime = uid8.getProcessStateTime(i19, j15, i13);
                    if (processStateTime > 0) {
                        j16 += processStateTime;
                        sb4.setLength(0);
                        sb4.append(str30);
                        sb4.append("    ");
                        sb4.append(Uid.PROCESS_STATE_NAMES[i19]);
                        sb4.append(" for: ");
                        formatTimeMs(sb4, (processStateTime + 500) / 1000);
                        printWriter7.println(sb4.toString());
                        i18 = i12;
                    }
                    i19++;
                    uid2 = uid8;
                }
                uid3 = uid2;
                if (j16 > 0) {
                    sb4.setLength(0);
                    sb4.append(str30);
                    sb4.append("    Total running: ");
                    formatTimeMs(sb4, (j16 + 500) / 1000);
                    printWriter7.println(sb4.toString());
                }
                userCpuTimeUs = uid3.getUserCpuTimeUs(i13);
                systemCpuTimeUs = uid3.getSystemCpuTimeUs(i13);
                if (userCpuTimeUs <= 0) {
                    sb4.setLength(0);
                    sb4.append(str30);
                    sb4.append("    Total cpu time: u=");
                    formatTimeMs(sb4, userCpuTimeUs / 1000);
                    sb4.append("s=");
                    formatTimeMs(sb4, systemCpuTimeUs / 1000);
                    printWriter7.println(sb4.toString());
                } else {
                    sb4.setLength(0);
                    sb4.append(str30);
                    sb4.append("    Total cpu time: u=");
                    formatTimeMs(sb4, userCpuTimeUs / 1000);
                    sb4.append("s=");
                    formatTimeMs(sb4, systemCpuTimeUs / 1000);
                    printWriter7.println(sb4.toString());
                }
                cpuFreqTimes = uid3.getCpuFreqTimes(i13);
                if (cpuFreqTimes != null) {
                    sb4.setLength(0);
                    sb4.append("    Total cpu time per freq:");
                    while (i28 < cpuFreqTimes.length) {
                        sb4.append(str29 + j75);
                    }
                    printWriter7.println(sb4.toString());
                }
                screenOffCpuFreqTimes = uid3.getScreenOffCpuFreqTimes(i13);
                if (screenOffCpuFreqTimes != null) {
                    sb4.setLength(0);
                    sb4.append("    Total screen-off cpu time per freq:");
                    while (i27 < screenOffCpuFreqTimes.length) {
                        sb4.append(str29 + j76);
                    }
                    printWriter7.println(sb4.toString());
                }
                processStats = uid3.getProcessStats();
                size5 = processStats.size() - 1;
                while (size5 >= 0) {
                    procValueAt = processStats.valueAt(size5);
                    userTime = procValueAt.getUserTime(i13);
                    long j713 = j15;
                    systemTime = procValueAt.getSystemTime(i13);
                    Uid uid9 = uid3;
                    String str1011 = str35;
                    foregroundTime = procValueAt.getForegroundTime(i13);
                    starts2 = procValueAt.getStarts(i13);
                    int i62 = i18;
                    numCrashes = procValueAt.getNumCrashes(i13);
                    numAnrs = procValueAt.getNumAnrs(i13);
                    if (i13 == 0) {
                        iCountExcessivePowers = procValueAt.countExcessivePowers();
                    } else {
                        iCountExcessivePowers = 0;
                    }
                    i23 = iCountExcessivePowers;
                    if (userTime != 0) {
                        proc = procValueAt;
                        m.v(sb4, 0, str30, "    Proc ");
                        sb4.append(processStats.keyAt(size5));
                        sb4.append(":\n");
                        sb4.append(str30);
                        sb4.append("      CPU: ");
                        formatTimeMs(sb4, userTime);
                        sb4.append("usr + ");
                        formatTimeMs(sb4, systemTime);
                        sb4.append("krn ; ");
                        formatTimeMs(sb4, foregroundTime);
                        sb4.append(FOREGROUND_ACTIVITY_DATA);
                        if (starts2 != 0) {
                            str39 = str103;
                            sb4.append(str39);
                            sb4.append(str30);
                            sb4.append("      ");
                            if (starts2 != 0) {
                                sb4.append(starts2);
                                sb4.append(" starts");
                                i24 = i12;
                            } else {
                                i24 = 0;
                            }
                            if (numCrashes != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numCrashes);
                                sb4.append(" crashes");
                                i24 = i12;
                            }
                            if (numAnrs != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numAnrs);
                                sb4.append(" anrs");
                            }
                        } else {
                            str39 = str103;
                            sb4.append(str39);
                            sb4.append(str30);
                            sb4.append("      ");
                            if (starts2 != 0) {
                                sb4.append(starts2);
                                sb4.append(" starts");
                                i24 = i12;
                            } else {
                                i24 = 0;
                            }
                            if (numCrashes != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numCrashes);
                                sb4.append(" crashes");
                                i24 = i12;
                            }
                            if (numAnrs != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numAnrs);
                                sb4.append(" anrs");
                            }
                        }
                        printWriter10 = printWriter;
                        printWriter10.println(sb4.toString());
                        i25 = 0;
                        while (i25 < i23) {
                            Uid.Proc proc3 = proc;
                            excessivePower = proc3.getExcessivePower(i25);
                            if (excessivePower != null) {
                                printWriter.print(str);
                                printWriter10.print("      * Killed for ");
                                if (excessivePower.type == 2) {
                                    printWriter10.print(CPU_DATA);
                                } else {
                                    printWriter10.print("unknown");
                                }
                                printWriter10.print(" use: ");
                                TimeUtils.formatDuration(excessivePower.usedTime, printWriter10);
                                printWriter10.print(" over ");
                                TimeUtils.formatDuration(excessivePower.overTime, printWriter10);
                                if (excessivePower.overTime != 0) {
                                    str41 = str33;
                                    printWriter10.print(str41);
                                    printWriter10.print((excessivePower.usedTime * 100) / excessivePower.overTime);
                                    printWriter10.println("%)");
                                } else {
                                    str41 = str33;
                                }
                            } else {
                                str41 = str33;
                            }
                            i25++;
                            proc = proc3;
                            str33 = str41;
                        }
                        str40 = str33;
                        i26 = i12;
                    } else {
                        proc = procValueAt;
                        m.v(sb4, 0, str30, "    Proc ");
                        sb4.append(processStats.keyAt(size5));
                        sb4.append(":\n");
                        sb4.append(str30);
                        sb4.append("      CPU: ");
                        formatTimeMs(sb4, userTime);
                        sb4.append("usr + ");
                        formatTimeMs(sb4, systemTime);
                        sb4.append("krn ; ");
                        formatTimeMs(sb4, foregroundTime);
                        sb4.append(FOREGROUND_ACTIVITY_DATA);
                        if (starts2 != 0) {
                            str39 = str103;
                            sb4.append(str39);
                            sb4.append(str30);
                            sb4.append("      ");
                            if (starts2 != 0) {
                                sb4.append(starts2);
                                sb4.append(" starts");
                                i24 = i12;
                            } else {
                                i24 = 0;
                            }
                            if (numCrashes != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numCrashes);
                                sb4.append(" crashes");
                                i24 = i12;
                            }
                            if (numAnrs != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numAnrs);
                                sb4.append(" anrs");
                            }
                        } else {
                            str39 = str103;
                            sb4.append(str39);
                            sb4.append(str30);
                            sb4.append("      ");
                            if (starts2 != 0) {
                                sb4.append(starts2);
                                sb4.append(" starts");
                                i24 = i12;
                            } else {
                                i24 = 0;
                            }
                            if (numCrashes != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numCrashes);
                                sb4.append(" crashes");
                                i24 = i12;
                            }
                            if (numAnrs != 0) {
                                if (i24 != 0) {
                                    sb4.append(str34);
                                }
                                sb4.append(numAnrs);
                                sb4.append(" anrs");
                            }
                        }
                        printWriter10 = printWriter;
                        printWriter10.println(sb4.toString());
                        i25 = 0;
                        while (i25 < i23) {
                            Uid.Proc proc4 = proc;
                            excessivePower = proc4.getExcessivePower(i25);
                            if (excessivePower != null) {
                                printWriter.print(str);
                                printWriter10.print("      * Killed for ");
                                if (excessivePower.type == 2) {
                                    printWriter10.print(CPU_DATA);
                                } else {
                                    printWriter10.print("unknown");
                                }
                                printWriter10.print(" use: ");
                                TimeUtils.formatDuration(excessivePower.usedTime, printWriter10);
                                printWriter10.print(" over ");
                                TimeUtils.formatDuration(excessivePower.overTime, printWriter10);
                                if (excessivePower.overTime != 0) {
                                    str41 = str33;
                                    printWriter10.print(str41);
                                    printWriter10.print((excessivePower.usedTime * 100) / excessivePower.overTime);
                                    printWriter10.println("%)");
                                } else {
                                    str41 = str33;
                                }
                            } else {
                                str41 = str33;
                            }
                            i25++;
                            proc = proc4;
                            str33 = str41;
                        }
                        str40 = str33;
                        i26 = i12;
                    }
                    size5--;
                    str103 = str39;
                    str33 = str40;
                    uid3 = uid9;
                    str35 = str1011;
                    j15 = j713;
                    i13 = i2;
                    PrintWriter printWriter14 = printWriter10;
                    i18 = i26;
                    printWriter7 = printWriter14;
                }
                int i63 = i18;
                j7 = j15;
                Uid uid10 = uid3;
                str36 = str35;
                str37 = str33;
                printWriter8 = printWriter7;
                packageStats = uid10.getPackageStats();
                size6 = packageStats.size() - 1;
                i20 = i63;
                while (size6 >= 0) {
                    printWriter.print(str);
                    printWriter8.print("    Apk ");
                    printWriter8.print(packageStats.keyAt(size6));
                    printWriter8.println(SettingsStringUtil.DELIMITER);
                    Uid.Pkg pkgValueAt2 = packageStats.valueAt(size6);
                    wakeupAlarmStats = pkgValueAt2.getWakeupAlarmStats();
                    size7 = wakeupAlarmStats.size() - 1;
                    i22 = 0;
                    while (size7 >= 0) {
                        printWriter.print(str);
                        printWriter8.print("      Wakeup alarm ");
                        printWriter8.print(wakeupAlarmStats.keyAt(size7));
                        printWriter8.print(str12);
                        printWriter8.print(wakeupAlarmStats.valueAt(size7).getCountLocked(i2));
                        printWriter8.println(" times");
                        size7--;
                        i22 = i12;
                    }
                    str38 = str12;
                    serviceStats = pkgValueAt2.getServiceStats();
                    size8 = serviceStats.size() - 1;
                    while (size8 >= 0) {
                        Uid.Pkg.Serv servValueAt2 = serviceStats.valueAt(size8);
                        long j714 = j45;
                        startTime = servValueAt2.getStartTime(j714, i2);
                        ArrayMap<String, ? extends Uid.Pkg> arrayMap4 = packageStats;
                        starts = servValueAt2.getStarts(i2);
                        launches = servValueAt2.getLaunches(i2);
                        if (startTime == 0) {
                            m.v(sb4, 0, str30, "      Service ");
                            sb4.append(serviceStats.keyAt(size8));
                            sb4.append(":\n");
                            sb4.append(str30);
                            sb4.append("        Created for: ");
                            formatTimeMs(sb4, startTime / 1000);
                            sb4.append("uptime\n");
                            sb4.append(str30);
                            sb4.append("        Starts: ");
                            sb4.append(starts);
                            sb4.append(", launches: ");
                            sb4.append(launches);
                            printWriter8.println(sb4.toString());
                            i22 = i12;
                        } else {
                            m.v(sb4, 0, str30, "      Service ");
                            sb4.append(serviceStats.keyAt(size8));
                            sb4.append(":\n");
                            sb4.append(str30);
                            sb4.append("        Created for: ");
                            formatTimeMs(sb4, startTime / 1000);
                            sb4.append("uptime\n");
                            sb4.append(str30);
                            sb4.append("        Starts: ");
                            sb4.append(starts);
                            sb4.append(", launches: ");
                            sb4.append(launches);
                            printWriter8.println(sb4.toString());
                            i22 = i12;
                        }
                        size8--;
                        packageStats = arrayMap4;
                        j45 = j714;
                        str38 = str38;
                    }
                    ArrayMap<String, ? extends Uid.Pkg> arrayMap5 = packageStats;
                    str12 = str38;
                    long j715 = j45;
                    if (i22 == 0) {
                        printWriter.print(str);
                        printWriter8.println("      (nothing executed)");
                    }
                    size6--;
                    i20 = i12;
                    packageStats = arrayMap5;
                    j45 = j715;
                }
                i21 = i2;
                j17 = j45;
                i7 = 0;
                if (i20 == 0) {
                    printWriter.print(str);
                    printWriter8.println("    (nothing executed)");
                }
                printWriter9 = printWriter8;
            } else {
                str36 = str9;
                printWriter9 = printWriter12;
                i21 = i8;
                printWriter8 = printWriter2;
                sb4 = sb;
                sparseArray = sparseArray4;
                str26 = str14;
                str24 = str13;
                str31 = str69;
                j17 = j45;
                j8 = j46;
                str37 = str6;
                j11 = j5;
                str19 = str68;
                i14 = i51;
            }
            i51 = i14 + 1;
            sb = sb4;
            printWriter2 = printWriter8;
            i8 = i21;
            str6 = str37;
            j45 = j17;
            i9 = i9;
            j5 = j11;
            str9 = str36;
            sparseArray3 = sparseArray;
            j46 = j8;
            str13 = str24;
            str68 = str19;
            str14 = str26;
            str69 = str31;
            printWriter12 = printWriter9;
            i3 = i3;
        }
    }

    public static final class HistoryItem implements Parcelable {
        public static final byte CMD_CURRENT_TIME = 5;
        public static final byte CMD_NULL = -1;
        public static final byte CMD_OVERFLOW = 6;
        public static final byte CMD_RESET = 7;
        public static final byte CMD_SHUTDOWN = 8;
        public static final byte CMD_START = 4;
        public static final byte CMD_UPDATE = 0;
        public static final int EVENT_ACTIVE = 10;
        public static final int EVENT_ALARM = 13;
        public static final int EVENT_ALARM_FINISH = 16397;
        public static final int EVENT_ALARM_START = 32781;
        public static final int EVENT_COLLECT_EXTERNAL_STATS = 14;
        public static final int EVENT_CONNECTIVITY_CHANGED = 9;
        public static final int EVENT_COUNT = 22;
        public static final int EVENT_FLAG_FINISH = 16384;
        public static final int EVENT_FLAG_START = 32768;
        public static final int EVENT_FOREGROUND = 2;
        public static final int EVENT_FOREGROUND_FINISH = 16386;
        public static final int EVENT_FOREGROUND_START = 32770;
        public static final int EVENT_JOB = 6;
        public static final int EVENT_JOB_FINISH = 16390;
        public static final int EVENT_JOB_START = 32774;
        public static final int EVENT_LONG_WAKE_LOCK = 20;
        public static final int EVENT_LONG_WAKE_LOCK_FINISH = 16404;
        public static final int EVENT_LONG_WAKE_LOCK_START = 32788;
        public static final int EVENT_NONE = 0;
        public static final int EVENT_PACKAGE_ACTIVE = 16;
        public static final int EVENT_PACKAGE_INACTIVE = 15;
        public static final int EVENT_PACKAGE_INSTALLED = 11;
        public static final int EVENT_PACKAGE_UNINSTALLED = 12;
        public static final int EVENT_PROC = 1;
        public static final int EVENT_PROC_FINISH = 16385;
        public static final int EVENT_PROC_START = 32769;
        public static final int EVENT_SCREEN_WAKE_UP = 18;
        public static final int EVENT_SYNC = 4;
        public static final int EVENT_SYNC_FINISH = 16388;
        public static final int EVENT_SYNC_START = 32772;
        public static final int EVENT_TEMP_WHITELIST = 17;
        public static final int EVENT_TEMP_WHITELIST_FINISH = 16401;
        public static final int EVENT_TEMP_WHITELIST_START = 32785;
        public static final int EVENT_TOP = 3;
        public static final int EVENT_TOP_FINISH = 16387;
        public static final int EVENT_TOP_START = 32771;
        public static final int EVENT_TYPE_MASK = -49153;
        public static final int EVENT_USER_FOREGROUND = 8;
        public static final int EVENT_USER_FOREGROUND_FINISH = 16392;
        public static final int EVENT_USER_FOREGROUND_START = 32776;
        public static final int EVENT_USER_RUNNING = 7;
        public static final int EVENT_USER_RUNNING_FINISH = 16391;
        public static final int EVENT_USER_RUNNING_START = 32775;
        public static final int EVENT_WAKEUP_AP = 19;
        public static final int EVENT_WAKE_LOCK = 5;
        public static final int EVENT_WAKE_LOCK_FINISH = 16389;
        public static final int EVENT_WAKE_LOCK_START = 32773;
        public static final int MOST_INTERESTING_STATES = 1835008;
        public static final int MOST_INTERESTING_STATES2 = -1749024768;
        public static final int SETTLE_TO_ZERO_STATES = -1900544;
        public static final int SETTLE_TO_ZERO_STATES2 = 1748959232;
        public static final int STATE2_BLUETOOTH_ON_FLAG = 4194304;
        public static final int STATE2_BLUETOOTH_SCAN_FLAG = 1048576;
        public static final int STATE2_CAMERA_FLAG = 2097152;
        public static final int STATE2_CHARGING_FLAG = 16777216;
        public static final int STATE2_DEVICE_IDLE_MASK = 100663296;
        public static final int STATE2_DEVICE_IDLE_SHIFT = 25;
        public static final int STATE2_FLASHLIGHT_FLAG = 134217728;
        public static final int STATE2_PHONE_IN_CALL_FLAG = 8388608;
        public static final int STATE2_POWER_SAVE_FLAG = Integer.MIN_VALUE;
        public static final int STATE2_VIDEO_ON_FLAG = 1073741824;
        public static final int STATE2_WIFI_ON_FLAG = 268435456;
        public static final int STATE2_WIFI_RUNNING_FLAG = 536870912;
        public static final int STATE2_WIFI_SIGNAL_STRENGTH_MASK = 112;
        public static final int STATE2_WIFI_SIGNAL_STRENGTH_SHIFT = 4;
        public static final int STATE2_WIFI_SUPPL_STATE_MASK = 15;
        public static final int STATE2_WIFI_SUPPL_STATE_SHIFT = 0;
        public static final int STATE_AUDIO_ON_FLAG = 4194304;
        public static final int STATE_BATTERY_PLUGGED_FLAG = 524288;
        public static final int STATE_BRIGHTNESS_MASK = 7;
        public static final int STATE_BRIGHTNESS_SHIFT = 0;
        public static final int STATE_CPU_RUNNING_FLAG = Integer.MIN_VALUE;
        public static final int STATE_DATA_CONNECTION_MASK = 15872;
        public static final int STATE_DATA_CONNECTION_SHIFT = 9;
        public static final int STATE_GPS_ON_FLAG = 536870912;
        public static final int STATE_MOBILE_RADIO_ACTIVE_FLAG = 33554432;
        public static final int STATE_PHONE_SCANNING_FLAG = 2097152;
        public static final int STATE_PHONE_SIGNAL_STRENGTH_MASK = 56;
        public static final int STATE_PHONE_SIGNAL_STRENGTH_SHIFT = 3;
        public static final int STATE_PHONE_STATE_MASK = 448;
        public static final int STATE_PHONE_STATE_SHIFT = 6;
        private static final int STATE_RESERVED_0 = 16777216;
        public static final int STATE_SCREEN_DOZE_FLAG = 262144;
        public static final int STATE_SCREEN_ON_FLAG = 1048576;
        public static final int STATE_SENSOR_ON_FLAG = 8388608;
        public static final int STATE_WAKE_LOCK_FLAG = 1073741824;
        public static final int STATE_WIFI_FULL_LOCK_FLAG = 268435456;
        public static final int STATE_WIFI_MULTICAST_ON_FLAG = 65536;
        public static final int STATE_WIFI_RADIO_ACTIVE_FLAG = 67108864;
        public static final int STATE_WIFI_SCAN_FLAG = 134217728;
        public int batteryChargeUAh;
        public byte batteryHealth;
        public byte batteryLevel;
        public byte batteryPlugType;
        public byte batteryStatus;
        public short batteryTemperature;
        public char batteryVoltage;
        public byte cmd;
        public long currentTime;
        public int eventCode;
        public HistoryTag eventTag;
        public final HistoryTag localEventTag;
        public final HistoryTag localWakeReasonTag;
        public final HistoryTag localWakelockTag;
        public HistoryItem next;
        public int numReadInts;
        public int states;
        public int states2;
        public HistoryStepDetails stepDetails;
        public long time;
        public HistoryTag wakeReasonTag;
        public HistoryTag wakelockTag;

        public HistoryItem() {
            this.cmd = (byte) -1;
            this.localWakelockTag = new HistoryTag();
            this.localWakeReasonTag = new HistoryTag();
            this.localEventTag = new HistoryTag();
        }

        private void setToCommon(HistoryItem historyItem) {
            this.batteryLevel = historyItem.batteryLevel;
            this.batteryStatus = historyItem.batteryStatus;
            this.batteryHealth = historyItem.batteryHealth;
            this.batteryPlugType = historyItem.batteryPlugType;
            this.batteryTemperature = historyItem.batteryTemperature;
            this.batteryVoltage = historyItem.batteryVoltage;
            this.batteryChargeUAh = historyItem.batteryChargeUAh;
            this.states = historyItem.states;
            this.states2 = historyItem.states2;
            if (historyItem.wakelockTag != null) {
                HistoryTag historyTag = this.localWakelockTag;
                this.wakelockTag = historyTag;
                historyTag.setTo(historyItem.wakelockTag);
            } else {
                this.wakelockTag = null;
            }
            if (historyItem.wakeReasonTag != null) {
                HistoryTag historyTag2 = this.localWakeReasonTag;
                this.wakeReasonTag = historyTag2;
                historyTag2.setTo(historyItem.wakeReasonTag);
            } else {
                this.wakeReasonTag = null;
            }
            this.eventCode = historyItem.eventCode;
            if (historyItem.eventTag != null) {
                HistoryTag historyTag3 = this.localEventTag;
                this.eventTag = historyTag3;
                historyTag3.setTo(historyItem.eventTag);
            } else {
                this.eventTag = null;
            }
            this.currentTime = historyItem.currentTime;
        }

        public void clear() {
            this.time = 0L;
            this.cmd = (byte) -1;
            this.batteryLevel = (byte) 0;
            this.batteryStatus = (byte) 0;
            this.batteryHealth = (byte) 0;
            this.batteryPlugType = (byte) 0;
            this.batteryTemperature = (short) 0;
            this.batteryVoltage = (char) 0;
            this.batteryChargeUAh = 0;
            this.states = 0;
            this.states2 = 0;
            this.wakelockTag = null;
            this.wakeReasonTag = null;
            this.eventCode = 0;
            this.eventTag = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean isDeltaData() {
            return this.cmd == 0;
        }

        public void readFromParcel(Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            int i2 = parcel.readInt();
            this.cmd = (byte) (i2 & 255);
            this.batteryLevel = (byte) ((i2 >> 8) & 255);
            this.batteryStatus = (byte) ((i2 >> 16) & 15);
            this.batteryHealth = (byte) ((i2 >> 20) & 15);
            this.batteryPlugType = (byte) ((i2 >> 24) & 15);
            int i3 = parcel.readInt();
            this.batteryTemperature = (short) (i3 & 65535);
            this.batteryVoltage = (char) ((i3 >> 16) & 65535);
            this.batteryChargeUAh = parcel.readInt();
            this.states = parcel.readInt();
            this.states2 = parcel.readInt();
            if ((268435456 & i2) != 0) {
                HistoryTag historyTag = this.localWakelockTag;
                this.wakelockTag = historyTag;
                historyTag.readFromParcel(parcel);
            } else {
                this.wakelockTag = null;
            }
            if ((536870912 & i2) != 0) {
                HistoryTag historyTag2 = this.localWakeReasonTag;
                this.wakeReasonTag = historyTag2;
                historyTag2.readFromParcel(parcel);
            } else {
                this.wakeReasonTag = null;
            }
            if ((i2 & 1073741824) != 0) {
                this.eventCode = parcel.readInt();
                HistoryTag historyTag3 = this.localEventTag;
                this.eventTag = historyTag3;
                historyTag3.readFromParcel(parcel);
            } else {
                this.eventCode = 0;
                this.eventTag = null;
            }
            byte b2 = this.cmd;
            if (b2 == 5 || b2 == 7) {
                this.currentTime = parcel.readLong();
            } else {
                this.currentTime = 0L;
            }
            this.numReadInts = ((parcel.dataPosition() - iDataPosition) / 4) + this.numReadInts;
        }

        public boolean same(HistoryItem historyItem) {
            if (!sameNonEvent(historyItem) || this.eventCode != historyItem.eventCode) {
                return false;
            }
            HistoryTag historyTag = this.wakelockTag;
            HistoryTag historyTag2 = historyItem.wakelockTag;
            if (historyTag != historyTag2 && (historyTag == null || historyTag2 == null || !historyTag.equals(historyTag2))) {
                return false;
            }
            HistoryTag historyTag3 = this.wakeReasonTag;
            HistoryTag historyTag4 = historyItem.wakeReasonTag;
            if (historyTag3 != historyTag4 && (historyTag3 == null || historyTag4 == null || !historyTag3.equals(historyTag4))) {
                return false;
            }
            HistoryTag historyTag5 = this.eventTag;
            HistoryTag historyTag6 = historyItem.eventTag;
            if (historyTag5 != historyTag6) {
                return (historyTag5 == null || historyTag6 == null || !historyTag5.equals(historyTag6)) ? false : true;
            }
            return true;
        }

        public boolean sameNonEvent(HistoryItem historyItem) {
            return this.batteryLevel == historyItem.batteryLevel && this.batteryStatus == historyItem.batteryStatus && this.batteryHealth == historyItem.batteryHealth && this.batteryPlugType == historyItem.batteryPlugType && this.batteryTemperature == historyItem.batteryTemperature && this.batteryVoltage == historyItem.batteryVoltage && this.batteryChargeUAh == historyItem.batteryChargeUAh && this.states == historyItem.states && this.states2 == historyItem.states2 && this.currentTime == historyItem.currentTime;
        }

        public void setTo(HistoryItem historyItem) {
            this.time = historyItem.time;
            this.cmd = historyItem.cmd;
            setToCommon(historyItem);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.time);
            parcel.writeInt((this.cmd & 255) | ((this.batteryLevel << 8) & 65280) | ((this.batteryStatus << 16) & SurfaceControl.FX_SURFACE_MASK) | ((this.batteryHealth << Ascii.DC4) & 15728640) | ((this.batteryPlugType << Ascii.CAN) & 251658240) | (this.wakelockTag != null ? 268435456 : 0) | (this.wakeReasonTag != null ? 536870912 : 0) | (this.eventCode != 0 ? 1073741824 : 0));
            parcel.writeInt((this.batteryTemperature & 65535) | ((this.batteryVoltage << 16) & (-65536)));
            parcel.writeInt(this.batteryChargeUAh);
            parcel.writeInt(this.states);
            parcel.writeInt(this.states2);
            HistoryTag historyTag = this.wakelockTag;
            if (historyTag != null) {
                historyTag.writeToParcel(parcel, i2);
            }
            HistoryTag historyTag2 = this.wakeReasonTag;
            if (historyTag2 != null) {
                historyTag2.writeToParcel(parcel, i2);
            }
            int i3 = this.eventCode;
            if (i3 != 0) {
                parcel.writeInt(i3);
                this.eventTag.writeToParcel(parcel, i2);
            }
            byte b2 = this.cmd;
            if (b2 == 5 || b2 == 7) {
                parcel.writeLong(this.currentTime);
            }
        }

        public void setTo(long j2, byte b2, HistoryItem historyItem) {
            this.time = j2;
            this.cmd = b2;
            setToCommon(historyItem);
        }

        public HistoryItem(long j2, Parcel parcel) {
            this.cmd = (byte) -1;
            this.localWakelockTag = new HistoryTag();
            this.localWakeReasonTag = new HistoryTag();
            this.localEventTag = new HistoryTag();
            this.time = j2;
            this.numReadInts = 2;
            readFromParcel(parcel);
        }
    }

    public static final class HistoryTag {
        public int poolIdx;
        public String string;
        public int uid;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || HistoryTag.class != obj.getClass()) {
                return false;
            }
            HistoryTag historyTag = (HistoryTag) obj;
            return this.uid == historyTag.uid && this.string.equals(historyTag.string);
        }

        public int hashCode() {
            return (this.string.hashCode() * 31) + this.uid;
        }

        public void readFromParcel(Parcel parcel) {
            this.string = parcel.readString();
            this.uid = parcel.readInt();
            this.poolIdx = -1;
        }

        public void setTo(HistoryTag historyTag) {
            this.string = historyTag.string;
            this.uid = historyTag.uid;
            this.poolIdx = historyTag.poolIdx;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.string);
            parcel.writeInt(this.uid);
        }

        public void setTo(String str, int i2) {
            this.string = str;
            this.uid = i2;
            this.poolIdx = -1;
        }
    }

    public static final class LevelStepTracker {
        public long mLastStepTime = -1;
        public int mNumStepDurations;
        public final long[] mStepDurations;

        public LevelStepTracker(int i2) {
            this.mStepDurations = new long[i2];
        }

        private void appendHex(long j2, int i2, StringBuilder sb) {
            boolean z2 = false;
            while (i2 >= 0) {
                int i3 = (int) ((j2 >> i2) & 15);
                i2 -= 4;
                if (z2 || i3 != 0) {
                    if (i3 < 0 || i3 > 9) {
                        sb.append((char) ((i3 + 97) - 10));
                    } else {
                        sb.append((char) (i3 + 48));
                    }
                    z2 = true;
                }
            }
        }

        public void addLevelSteps(int i2, long j2, long j3) {
            int length = this.mNumStepDurations;
            long j4 = this.mLastStepTime;
            if (j4 >= 0 && i2 > 0) {
                long[] jArr = this.mStepDurations;
                long j5 = j3 - j4;
                for (int i3 = 0; i3 < i2; i3++) {
                    System.arraycopy(jArr, 0, jArr, 1, jArr.length - 1);
                    long j6 = j5 / ((long) (i2 - i3));
                    j5 -= j6;
                    if (j6 > BatteryStats.STEP_LEVEL_TIME_MASK) {
                        j6 = 1099511627775L;
                    }
                    jArr[0] = j6 | j2;
                }
                length += i2;
                if (length > jArr.length) {
                    length = jArr.length;
                }
            }
            this.mNumStepDurations = length;
            this.mLastStepTime = j3;
        }

        public void clearTime() {
            this.mLastStepTime = -1L;
        }

        public long computeTimeEstimate(long j2, long j3, int[] iArr) {
            long[] jArr = this.mStepDurations;
            int i2 = this.mNumStepDurations;
            if (i2 <= 0) {
                return -1L;
            }
            long j4 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                long j5 = jArr[i4];
                long j6 = (BatteryStats.STEP_LEVEL_INITIAL_MODE_MASK & j5) >> 48;
                if ((((j5 & BatteryStats.STEP_LEVEL_MODIFIED_MODE_MASK) >> 56) & j2) == 0 && (j6 & j2) == j3) {
                    i3++;
                    j4 += j5 & BatteryStats.STEP_LEVEL_TIME_MASK;
                }
            }
            if (i3 <= 0) {
                return -1L;
            }
            if (iArr != null) {
                iArr[0] = i3;
            }
            return (j4 / ((long) i3)) * 100;
        }

        public long computeTimePerLevel() {
            long[] jArr = this.mStepDurations;
            int i2 = this.mNumStepDurations;
            if (i2 <= 0) {
                return -1L;
            }
            long j2 = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                j2 += jArr[i3] & BatteryStats.STEP_LEVEL_TIME_MASK;
            }
            return j2 / ((long) i2);
        }

        public void decodeEntryAt(int i2, String str) {
            int i3;
            int i4;
            char cCharAt;
            int i5;
            int i6;
            char cCharAt2;
            long j2;
            int length = str.length();
            int i7 = 0;
            long j3 = 0;
            while (i7 < length && (cCharAt2 = str.charAt(i7)) != '-') {
                i7++;
                if (cCharAt2 != 'D') {
                    if (cCharAt2 != 'F') {
                        if (cCharAt2 == 'I') {
                            j2 = 576460752303423488L;
                        } else if (cCharAt2 == 'Z') {
                            j2 = 216172782113783808L;
                        } else if (cCharAt2 == 'd') {
                            j2 = 562949953421312L;
                        } else if (cCharAt2 != 'f') {
                            if (cCharAt2 == 'i') {
                                j2 = 2251799813685248L;
                            } else if (cCharAt2 == 'z') {
                                j2 = 844424930131968L;
                            } else if (cCharAt2 == 'O') {
                                j2 = 72057594037927936L;
                            } else if (cCharAt2 == 'P') {
                                j2 = 288230376151711744L;
                            } else if (cCharAt2 == 'o') {
                                j2 = 281474976710656L;
                            } else if (cCharAt2 == 'p') {
                                j2 = TrafficStats.PB_IN_BYTES;
                            }
                        }
                    }
                    j3 |= 0;
                } else {
                    j2 = 144115188075855872L;
                }
                j3 |= j2;
            }
            int i8 = i7 + 1;
            long j4 = 0;
            while (i8 < length && (cCharAt = str.charAt(i8)) != '-') {
                i8++;
                j4 <<= 4;
                if (cCharAt < '0' || cCharAt > '9') {
                    if (cCharAt >= 'a' && cCharAt <= 'f') {
                        i5 = cCharAt - 'a';
                    } else if (cCharAt >= 'A' && cCharAt <= 'F') {
                        i5 = cCharAt - 'A';
                    }
                    i6 = i5 + 10;
                } else {
                    i6 = cCharAt - '0';
                }
                j4 += (long) i6;
            }
            int i9 = i8 + 1;
            long j5 = j3 | ((j4 << 40) & BatteryStats.STEP_LEVEL_LEVEL_MASK);
            long j6 = 0;
            while (i9 < length) {
                char cCharAt3 = str.charAt(i9);
                if (cCharAt3 == '-') {
                    break;
                }
                i9++;
                j6 <<= 4;
                if (cCharAt3 < '0' || cCharAt3 > '9') {
                    if (cCharAt3 >= 'a' && cCharAt3 <= 'f') {
                        i3 = cCharAt3 - 'a';
                    } else if (cCharAt3 >= 'A' && cCharAt3 <= 'F') {
                        i3 = cCharAt3 - 'A';
                    }
                    i4 = i3 + 10;
                } else {
                    i4 = cCharAt3 - '0';
                }
                j6 += (long) i4;
            }
            this.mStepDurations[i2] = (j6 & BatteryStats.STEP_LEVEL_TIME_MASK) | j5;
        }

        public void encodeEntryAt(int i2, StringBuilder sb) {
            long j2 = this.mStepDurations[i2];
            long j3 = BatteryStats.STEP_LEVEL_TIME_MASK & j2;
            int i3 = (int) ((BatteryStats.STEP_LEVEL_LEVEL_MASK & j2) >> 40);
            int i4 = (int) ((BatteryStats.STEP_LEVEL_INITIAL_MODE_MASK & j2) >> 48);
            int i5 = (int) ((j2 & BatteryStats.STEP_LEVEL_MODIFIED_MODE_MASK) >> 56);
            int i6 = (i4 & 3) + 1;
            if (i6 == 1) {
                sb.append('f');
            } else if (i6 == 2) {
                sb.append('o');
            } else if (i6 == 3) {
                sb.append(DateFormat.DATE);
            } else if (i6 == 4) {
                sb.append(DateFormat.TIME_ZONE);
            }
            if ((i4 & 4) != 0) {
                sb.append('p');
            }
            if ((i4 & 8) != 0) {
                sb.append('i');
            }
            int i7 = (i5 & 3) + 1;
            if (i7 == 1) {
                sb.append('F');
            } else if (i7 == 2) {
                sb.append('O');
            } else if (i7 == 3) {
                sb.append('D');
            } else if (i7 == 4) {
                sb.append('Z');
            }
            if ((i5 & 4) != 0) {
                sb.append('P');
            }
            if ((i5 & 8) != 0) {
                sb.append('I');
            }
            sb.append('-');
            appendHex(i3, 4, sb);
            sb.append('-');
            appendHex(j3, 36, sb);
        }

        public long getDurationAt(int i2) {
            return this.mStepDurations[i2] & BatteryStats.STEP_LEVEL_TIME_MASK;
        }

        public int getInitModeAt(int i2) {
            return (int) ((this.mStepDurations[i2] & BatteryStats.STEP_LEVEL_INITIAL_MODE_MASK) >> 48);
        }

        public int getLevelAt(int i2) {
            return (int) ((this.mStepDurations[i2] & BatteryStats.STEP_LEVEL_LEVEL_MASK) >> 40);
        }

        public int getModModeAt(int i2) {
            return (int) ((this.mStepDurations[i2] & BatteryStats.STEP_LEVEL_MODIFIED_MODE_MASK) >> 56);
        }

        public void init() {
            this.mLastStepTime = -1L;
            this.mNumStepDurations = 0;
        }

        public void readFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 > this.mStepDurations.length) {
                throw new ParcelFormatException(android.accessibilityservice.c.d("more step durations than available: ", i2));
            }
            this.mNumStepDurations = i2;
            for (int i3 = 0; i3 < i2; i3++) {
                this.mStepDurations[i3] = parcel.readLong();
            }
        }

        public void writeToParcel(Parcel parcel) {
            int i2 = this.mNumStepDurations;
            parcel.writeInt(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                parcel.writeLong(this.mStepDurations[i3]);
            }
        }

        public LevelStepTracker(int i2, long[] jArr) {
            this.mNumStepDurations = i2;
            long[] jArr2 = new long[i2];
            this.mStepDurations = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, i2);
        }
    }

    public static final class BitDescription {
        public final int mask;
        public final String name;
        public final int shift;
        public final String shortName;
        public final String[] shortValues;
        public final String[] values;

        public BitDescription(int i2, String str, String str2) {
            this.mask = i2;
            this.shift = -1;
            this.name = str;
            this.shortName = str2;
            this.values = null;
            this.shortValues = null;
        }

        public BitDescription(int i2, int i3, String str, String str2, String[] strArr, String[] strArr2) {
            this.mask = i2;
            this.shift = i3;
            this.name = str;
            this.shortName = str2;
            this.values = strArr;
            this.shortValues = strArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dumpCheckinLocked(Context context, PrintWriter printWriter, List<ApplicationInfo> list, int i2, long j2) {
        prepareForDumpLocked();
        dumpLine(printWriter, 0, "i", VERSION_DATA, CHECKIN_VERSION, Integer.valueOf(getParcelVersion()), getStartPlatformVersion(), getEndPlatformVersion());
        getHistoryBaseTime();
        SystemClock.elapsedRealtime();
        boolean z2 = (i2 & 14) != 0;
        if (((i2 & 16) != 0 || (i2 & 8) != 0) && startIteratingHistoryLocked()) {
            for (int i3 = 0; i3 < getHistoryStringPoolSize(); i3++) {
                try {
                    printWriter.print(9);
                    printWriter.print(',');
                    printWriter.print(HISTORY_STRING_POOL);
                    printWriter.print(',');
                    printWriter.print(i3);
                    printWriter.print(",");
                    printWriter.print(getHistoryTagPoolUid(i3));
                    printWriter.print(",\"");
                    printWriter.print(getHistoryTagPoolString(i3).replace("\\", "\\\\").replace("\"", "\\\""));
                    printWriter.print("\"");
                    printWriter.println();
                } catch (Throwable th) {
                    finishIteratingHistoryLocked();
                    throw th;
                }
            }
            dumpHistoryLocked(printWriter, i2, j2, true);
            finishIteratingHistoryLocked();
        }
        if (z2 && (i2 & 6) == 0) {
            return;
        }
        if (list != null) {
            SparseArray sparseArray = new SparseArray();
            for (int i4 = 0; i4 < list.size(); i4++) {
                ApplicationInfo applicationInfo = list.get(i4);
                Pair pair = (Pair) sparseArray.get(UserHandle.getAppId(applicationInfo.uid));
                if (pair == null) {
                    pair = new Pair(new ArrayList(), new MutableBoolean(false));
                    sparseArray.put(UserHandle.getAppId(applicationInfo.uid), pair);
                }
                ((ArrayList) pair.first).add(applicationInfo.packageName);
            }
            SparseArray<? extends Uid> uidStats = getUidStats();
            int size = uidStats.size();
            String[] strArr = new String[2];
            for (int i5 = 0; i5 < size; i5++) {
                int appId = UserHandle.getAppId(uidStats.keyAt(i5));
                Pair pair2 = (Pair) sparseArray.get(appId);
                if (pair2 != null) {
                    S s2 = pair2.second;
                    if (!((MutableBoolean) s2).value) {
                        ((MutableBoolean) s2).value = true;
                        for (int i6 = 0; i6 < ((ArrayList) pair2.first).size(); i6++) {
                            strArr[0] = Integer.toString(appId);
                            strArr[1] = (String) ((ArrayList) pair2.first).get(i6);
                            dumpLine(printWriter, 0, "i", "uid", strArr);
                        }
                    }
                }
            }
        }
        if (z2 && (i2 & 2) == 0) {
            return;
        }
        dumpDurationSteps(printWriter, "", DISCHARGE_STEP_DATA, getDischargeLevelStepTracker(), true);
        String[] strArr2 = new String[1];
        long jComputeBatteryTimeRemaining = computeBatteryTimeRemaining(SystemClock.elapsedRealtime() * 1000);
        if (jComputeBatteryTimeRemaining >= 0) {
            strArr2[0] = Long.toString(jComputeBatteryTimeRemaining);
            dumpLine(printWriter, 0, "i", DISCHARGE_TIME_REMAIN_DATA, strArr2);
        }
        dumpDurationSteps(printWriter, "", CHARGE_STEP_DATA, getChargeLevelStepTracker(), true);
        long jComputeChargeTimeRemaining = computeChargeTimeRemaining(SystemClock.elapsedRealtime() * 1000);
        if (jComputeChargeTimeRemaining >= 0) {
            strArr2[0] = Long.toString(jComputeChargeTimeRemaining);
            dumpLine(printWriter, 0, "i", CHARGE_TIME_REMAIN_DATA, strArr2);
        }
        dumpCheckinLocked(context, printWriter, 0, -1, (i2 & 64) != 0);
    }

    public void dumpLocked(Context context, PrintWriter printWriter, int i2, int i3, long j2) {
        boolean z2;
        String str;
        boolean z3;
        prepareForDumpLocked();
        boolean z4 = (i2 & 14) != 0;
        if ((i2 & 8) != 0 || !z4) {
            long historyTotalSize = getHistoryTotalSize();
            long historyUsedSize = getHistoryUsedSize();
            if (startIteratingHistoryLocked()) {
                try {
                    printWriter.print("Battery History (");
                    printWriter.print((100 * historyUsedSize) / historyTotalSize);
                    printWriter.print("% used, ");
                    printSizeValue(printWriter, historyUsedSize);
                    printWriter.print(" used of ");
                    printSizeValue(printWriter, historyTotalSize);
                    printWriter.print(", ");
                    printWriter.print(getHistoryStringPoolSize());
                    printWriter.print(" strings using ");
                    printSizeValue(printWriter, getHistoryStringPoolBytes());
                    printWriter.println("):");
                    dumpHistoryLocked(printWriter, i2, j2, false);
                    printWriter.println();
                    finishIteratingHistoryLocked();
                } catch (Throwable th) {
                    finishIteratingHistoryLocked();
                    throw th;
                }
            }
            if (startIteratingOldHistoryLocked()) {
                try {
                    HistoryItem historyItem = new HistoryItem();
                    printWriter.println("Old battery History:");
                    HistoryPrinter historyPrinter = new HistoryPrinter();
                    long j3 = -1;
                    while (getNextOldHistoryLocked(historyItem)) {
                        if (j3 < 0) {
                            j3 = historyItem.time;
                        }
                        long j4 = j3;
                        historyPrinter.printNextItem(printWriter, historyItem, j4, false, (i2 & 32) != 0);
                        j3 = j4;
                    }
                    printWriter.println();
                    finishIteratingOldHistoryLocked();
                } catch (Throwable th2) {
                    finishIteratingOldHistoryLocked();
                    throw th2;
                }
            }
        }
        if (z4 && (i2 & 6) == 0) {
            return;
        }
        if (z4) {
            z2 = z4;
        } else {
            SparseArray<? extends Uid> uidStats = getUidStats();
            int size = uidStats.size();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            int i4 = 0;
            boolean z5 = false;
            while (i4 < size) {
                SparseArray<? extends Uid.Pid> pidStats = uidStats.valueAt(i4).getPidStats();
                if (pidStats != null) {
                    int i5 = 0;
                    while (i5 < pidStats.size()) {
                        Uid.Pid pidValueAt = pidStats.valueAt(i5);
                        if (!z5) {
                            printWriter.println("Per-PID Stats:");
                            z5 = true;
                        }
                        boolean z6 = z4;
                        long j5 = pidValueAt.mWakeSumMs + (pidValueAt.mWakeNesting > 0 ? jElapsedRealtime - pidValueAt.mWakeStartMs : 0L);
                        printWriter.print("  PID ");
                        printWriter.print(pidStats.keyAt(i5));
                        printWriter.print(" wake time: ");
                        TimeUtils.formatDuration(j5, printWriter);
                        printWriter.println("");
                        i5++;
                        z4 = z6;
                    }
                }
                i4++;
                z4 = z4;
            }
            z2 = z4;
            if (z5) {
                printWriter.println();
            }
        }
        if (!z2 || (i2 & 2) != 0) {
            if (dumpDurationSteps(printWriter, "  ", "Discharge step durations:", getDischargeLevelStepTracker(), false)) {
                long jComputeBatteryTimeRemaining = computeBatteryTimeRemaining(SystemClock.elapsedRealtime() * 1000);
                if (jComputeBatteryTimeRemaining >= 0) {
                    printWriter.print("  Estimated discharge time remaining: ");
                    TimeUtils.formatDuration(jComputeBatteryTimeRemaining / 1000, printWriter);
                    printWriter.println();
                }
                LevelStepTracker dischargeLevelStepTracker = getDischargeLevelStepTracker();
                int i6 = 0;
                while (true) {
                    int[] iArr = STEP_LEVEL_MODES_OF_INTEREST;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    dumpTimeEstimate(printWriter, "  Estimated ", STEP_LEVEL_MODE_LABELS[i6], " time: ", dischargeLevelStepTracker.computeTimeEstimate(iArr[i6], STEP_LEVEL_MODE_VALUES[i6], null));
                    i6++;
                }
                printWriter.println();
            }
            if (dumpDurationSteps(printWriter, "  ", "Charge step durations:", getChargeLevelStepTracker(), false)) {
                long jComputeChargeTimeRemaining = computeChargeTimeRemaining(SystemClock.elapsedRealtime() * 1000);
                if (jComputeChargeTimeRemaining >= 0) {
                    printWriter.print("  Estimated charge time remaining: ");
                    TimeUtils.formatDuration(jComputeChargeTimeRemaining / 1000, printWriter);
                    printWriter.println();
                }
                printWriter.println();
            }
        }
        if (z2 && (i2 & 6) == 0) {
            z3 = false;
        } else {
            printWriter.println("Daily stats:");
            printWriter.print("  Current start time: ");
            printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", getCurrentDailyStartTime()).toString());
            printWriter.print("  Next min deadline: ");
            printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", getNextMinDailyDeadline()).toString());
            printWriter.print("  Next max deadline: ");
            printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", getNextMaxDailyDeadline()).toString());
            StringBuilder sb = new StringBuilder(64);
            int[] iArr2 = new int[1];
            LevelStepTracker dailyDischargeLevelStepTracker = getDailyDischargeLevelStepTracker();
            LevelStepTracker dailyChargeLevelStepTracker = getDailyChargeLevelStepTracker();
            ArrayList<PackageChange> dailyPackageChanges = getDailyPackageChanges();
            if (dailyDischargeLevelStepTracker.mNumStepDurations <= 0 && dailyChargeLevelStepTracker.mNumStepDurations <= 0 && dailyPackageChanges == null) {
                str = "    ";
            } else if ((i2 & 4) == 0 && z2) {
                printWriter.println("  Current daily steps:");
                str = "    ";
                dumpDailyLevelStepSummary(printWriter, "    ", "Discharge", dailyDischargeLevelStepTracker, sb, iArr2);
                dumpDailyLevelStepSummary(printWriter, "    ", "Charge", dailyChargeLevelStepTracker, sb, iArr2);
            } else {
                str = "    ";
                if (dumpDurationSteps(printWriter, str, "  Current daily discharge step durations:", dailyDischargeLevelStepTracker, false)) {
                    dumpDailyLevelStepSummary(printWriter, "      ", "Discharge", dailyDischargeLevelStepTracker, sb, iArr2);
                }
                if (dumpDurationSteps(printWriter, str, "  Current daily charge step durations:", dailyChargeLevelStepTracker, false)) {
                    dumpDailyLevelStepSummary(printWriter, "      ", "Charge", dailyChargeLevelStepTracker, sb, iArr2);
                }
                dumpDailyPackageChanges(printWriter, str, dailyPackageChanges);
            }
            int i7 = 0;
            while (true) {
                DailyItem dailyItemLocked = getDailyItemLocked(i7);
                if (dailyItemLocked == null) {
                    break;
                }
                int i8 = i7 + 1;
                int i9 = i2 & 4;
                if (i9 != 0) {
                    printWriter.println();
                }
                printWriter.print("  Daily from ");
                printWriter.print(DateFormat.format("yyyy-MM-dd-HH-mm-ss", dailyItemLocked.mStartTime).toString());
                printWriter.print(" to ");
                printWriter.print(DateFormat.format("yyyy-MM-dd-HH-mm-ss", dailyItemLocked.mEndTime).toString());
                printWriter.println(SettingsStringUtil.DELIMITER);
                if (i9 == 0 && z2) {
                    dumpDailyLevelStepSummary(printWriter, "    ", "Discharge", dailyItemLocked.mDischargeSteps, sb, iArr2);
                    dumpDailyLevelStepSummary(printWriter, "    ", "Charge", dailyItemLocked.mChargeSteps, sb, iArr2);
                } else {
                    if (dumpDurationSteps(printWriter, "      ", "    Discharge step durations:", dailyItemLocked.mDischargeSteps, false)) {
                        dumpDailyLevelStepSummary(printWriter, "        ", "Discharge", dailyItemLocked.mDischargeSteps, sb, iArr2);
                    }
                    if (dumpDurationSteps(printWriter, "      ", "    Charge step durations:", dailyItemLocked.mChargeSteps, false)) {
                        dumpDailyLevelStepSummary(printWriter, "        ", "Charge", dailyItemLocked.mChargeSteps, sb, iArr2);
                    }
                    dumpDailyPackageChanges(printWriter, str, dailyItemLocked.mPackageChanges);
                }
                i7 = i8;
            }
            z3 = false;
            printWriter.println();
        }
        if (z2 && (i2 & 2) == 0) {
            return;
        }
        printWriter.println("Statistics since last charge:");
        printWriter.println("  System starts: " + getStartCount() + ", currently on battery: " + getIsOnBattery());
        dumpLocked(context, printWriter, "", 0, i3, (i2 & 64) != 0 ? true : z3);
        printWriter.println();
    }
}
