package android.os;

import android.app.backup.FullBackup;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.hardware.Camera;
import android.location.LocationManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.http.CharArrayBuffers;
import android.nfc.cardemulation.CardEmulation;
import android.telephony.PhoneNumberUtils;
import android.telephony.SignalStrength;
import android.util.Printer;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.view.SurfaceControl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class BatteryStats implements Parcelable {
    private static final String APK_DATA = "apk";
    public static final int AUDIO_TURNED_ON = 7;
    private static final String BATTERY_DATA = "bt";
    private static final String BATTERY_DISCHARGE_DATA = "dc";
    private static final String BATTERY_LEVEL_DATA = "lv";
    private static final int BATTERY_STATS_CHECKIN_VERSION = 7;
    private static final long BYTES_PER_GB = 1073741824;
    private static final long BYTES_PER_KB = 1024;
    private static final long BYTES_PER_MB = 1048576;
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
    public static final String[] DATA_CONNECTION_NAMES;
    public static final int DATA_CONNECTION_NONE = 0;
    public static final int DATA_CONNECTION_OTHER = 16;
    private static final String DATA_CONNECTION_TIME_DATA = "dct";
    public static final int DATA_CONNECTION_UMTS = 3;
    public static final int FOREGROUND_ACTIVITY = 10;
    private static final String FOREGROUND_DATA = "fg";
    public static final int FULL_WIFI_LOCK = 5;
    private static final String HISTORY_DATA = "h";
    public static final BitDescription[] HISTORY_STATE_DESCRIPTIONS;
    private static final String KERNEL_WAKELOCK_DATA = "kwl";
    private static final boolean LOCAL_LOGV = false;
    private static final String MISC_DATA = "m";
    private static final String NETWORK_DATA = "nt";
    public static final int NETWORK_MOBILE_RX_BYTES = 0;
    public static final int NETWORK_MOBILE_TX_BYTES = 1;
    public static final int NETWORK_WIFI_RX_BYTES = 2;
    public static final int NETWORK_WIFI_TX_BYTES = 3;
    public static final int NUM_DATA_CONNECTION_TYPES = 17;
    public static final int NUM_NETWORK_ACTIVITY_TYPES = 4;
    public static final int NUM_SCREEN_BRIGHTNESS_BINS = 5;
    private static final String PROCESS_DATA = "pr";
    public static final int SCREEN_BRIGHTNESS_BRIGHT = 4;
    public static final int SCREEN_BRIGHTNESS_DARK = 0;
    private static final String SCREEN_BRIGHTNESS_DATA = "br";
    public static final int SCREEN_BRIGHTNESS_DIM = 1;
    public static final int SCREEN_BRIGHTNESS_LIGHT = 3;
    public static final int SCREEN_BRIGHTNESS_MEDIUM = 2;
    public static final String[] SCREEN_BRIGHTNESS_NAMES;
    public static final int SENSOR = 3;
    private static final String SENSOR_DATA = "sr";
    public static final String SERVICE_NAME = "batterystats";
    private static final String SIGNAL_SCANNING_TIME_DATA = "sst";
    private static final String SIGNAL_STRENGTH_COUNT_DATA = "sgc";
    private static final String SIGNAL_STRENGTH_TIME_DATA = "sgt";
    public static final int STATS_CURRENT = 2;
    public static final int STATS_LAST = 1;
    public static final int STATS_SINCE_CHARGED = 0;
    public static final int STATS_SINCE_UNPLUGGED = 3;
    private static final String[] STAT_NAMES = {"t", "l", FullBackup.CACHE_TREE_TOKEN, "u"};
    private static final String UID_DATA = "uid";
    private static final String USER_ACTIVITY_DATA = "ua";
    private static final String VIBRATOR_DATA = "vib";
    public static final int VIBRATOR_ON = 9;
    public static final int VIDEO_TURNED_ON = 8;
    private static final String WAKELOCK_DATA = "wl";
    public static final int WAKE_TYPE_FULL = 1;
    public static final int WAKE_TYPE_PARTIAL = 0;
    public static final int WAKE_TYPE_WINDOW = 2;
    public static final int WIFI_BATCHED_SCAN = 11;
    private static final String WIFI_DATA = "wfl";
    public static final int WIFI_MULTICAST_ENABLED = 7;
    public static final int WIFI_RUNNING = 4;
    public static final int WIFI_SCAN = 6;
    private final StringBuilder mFormatBuilder;
    private final Formatter mFormatter;

    public static abstract class Counter {
        public abstract int getCountLocked(int i2);

        public abstract void logState(Printer printer, String str);
    }

    public static class HistoryPrinter {
        public int oldState = 0;
        public int oldStatus = -1;
        public int oldHealth = -1;
        public int oldPlug = -1;
        public int oldTemp = -1;
        public int oldVolt = -1;

        public void printNextItem(PrintWriter printWriter, HistoryItem historyItem, long j2) {
            printWriter.print("  ");
            TimeUtils.formatDuration(historyItem.time - j2, printWriter, 19);
            printWriter.print(" ");
            byte b2 = historyItem.cmd;
            if (b2 == 2) {
                printWriter.println(" START");
            } else if (b2 == 3) {
                printWriter.println(" *OVERFLOW*");
            } else {
                byte b3 = historyItem.batteryLevel;
                if (b3 < 10) {
                    printWriter.print("00");
                } else if (b3 < 100) {
                    printWriter.print("0");
                }
                printWriter.print((int) historyItem.batteryLevel);
                printWriter.print(" ");
                int i2 = historyItem.states;
                if (i2 < 16) {
                    printWriter.print("0000000");
                } else if (i2 < 256) {
                    printWriter.print("000000");
                } else if (i2 < 4096) {
                    printWriter.print("00000");
                } else if (i2 < 65536) {
                    printWriter.print("0000");
                } else if (i2 < 1048576) {
                    printWriter.print("000");
                } else if (i2 < 16777216) {
                    printWriter.print("00");
                } else if (i2 < 268435456) {
                    printWriter.print("0");
                }
                printWriter.print(Integer.toHexString(historyItem.states));
                int i3 = this.oldStatus;
                byte b4 = historyItem.batteryStatus;
                if (i3 != b4) {
                    this.oldStatus = b4;
                    printWriter.print(" status=");
                    int i4 = this.oldStatus;
                    if (i4 == 1) {
                        printWriter.print("unknown");
                    } else if (i4 == 2) {
                        printWriter.print("charging");
                    } else if (i4 == 3) {
                        printWriter.print("discharging");
                    } else if (i4 == 4) {
                        printWriter.print("not-charging");
                    } else if (i4 != 5) {
                        printWriter.print(i4);
                    } else {
                        printWriter.print("full");
                    }
                }
                int i5 = this.oldHealth;
                byte b5 = historyItem.batteryHealth;
                if (i5 != b5) {
                    this.oldHealth = b5;
                    printWriter.print(" health=");
                    int i6 = this.oldHealth;
                    switch (i6) {
                        case 1:
                            printWriter.print("unknown");
                            break;
                        case 2:
                            printWriter.print("good");
                            break;
                        case 3:
                            printWriter.print("overheat");
                            break;
                        case 4:
                            printWriter.print("dead");
                            break;
                        case 5:
                            printWriter.print("over-voltage");
                            break;
                        case 6:
                            printWriter.print("failure");
                            break;
                        default:
                            printWriter.print(i6);
                            break;
                    }
                }
                int i7 = this.oldPlug;
                byte b6 = historyItem.batteryPlugType;
                if (i7 != b6) {
                    this.oldPlug = b6;
                    printWriter.print(" plug=");
                    int i8 = this.oldPlug;
                    if (i8 == 0) {
                        printWriter.print(Camera.Parameters.EFFECT_NONE);
                    } else if (i8 == 1) {
                        printWriter.print("ac");
                    } else if (i8 == 2) {
                        printWriter.print(Context.USB_SERVICE);
                    } else if (i8 != 4) {
                        printWriter.print(i8);
                    } else {
                        printWriter.print("wireless");
                    }
                }
                int i9 = this.oldTemp;
                char c2 = historyItem.batteryTemperature;
                if (i9 != c2) {
                    this.oldTemp = c2;
                    printWriter.print(" temp=");
                    printWriter.print(this.oldTemp);
                }
                int i10 = this.oldVolt;
                char c3 = historyItem.batteryVoltage;
                if (i10 != c3) {
                    this.oldVolt = c3;
                    printWriter.print(" volt=");
                    printWriter.print(this.oldVolt);
                }
                BatteryStats.printBitDescriptions(printWriter, this.oldState, historyItem.states, BatteryStats.HISTORY_STATE_DESCRIPTIONS);
                printWriter.println();
            }
            this.oldState = historyItem.states;
        }

        public void printNextItemCheckin(PrintWriter printWriter, HistoryItem historyItem, long j2) {
            printWriter.print(historyItem.time - j2);
            printWriter.print(",");
            byte b2 = historyItem.cmd;
            if (b2 == 2) {
                printWriter.print("start");
                return;
            }
            if (b2 == 3) {
                printWriter.print("overflow");
                return;
            }
            printWriter.print((int) historyItem.batteryLevel);
            printWriter.print(",");
            printWriter.print(historyItem.states);
            printWriter.print(",");
            printWriter.print((int) historyItem.batteryStatus);
            printWriter.print(",");
            printWriter.print((int) historyItem.batteryHealth);
            printWriter.print(",");
            printWriter.print((int) historyItem.batteryPlugType);
            printWriter.print(",");
            printWriter.print((int) historyItem.batteryTemperature);
            printWriter.print(",");
            printWriter.print((int) historyItem.batteryVoltage);
        }
    }

    public static abstract class Timer {
        public abstract int getCountLocked(int i2);

        public abstract long getTotalTimeLocked(long j2, int i2);

        public abstract void logState(Printer printer, String str);
    }

    public static final class TimerEntry {
        public final int mId;
        public final String mName;
        public final long mTime;
        public final Timer mTimer;

        public TimerEntry(String str, int i2, Timer timer, long j2) {
            this.mName = str;
            this.mId = i2;
            this.mTimer = timer;
            this.mTime = j2;
        }
    }

    public static abstract class Uid {
        public static final int NUM_USER_ACTIVITY_TYPES = 3;
        public static final int NUM_WIFI_BATCHED_SCAN_BINS = 5;
        public static final String[] USER_ACTIVITY_TYPES = {CardEmulation.CATEGORY_OTHER, "button", "touch"};

        public class Pid {
            public long mWakeStart;
            public long mWakeSum;

            public Pid() {
            }
        }

        public static abstract class Pkg {

            public abstract class Serv {
                public Serv() {
                }

                public abstract int getLaunches(int i2);

                public abstract long getStartTime(long j2, int i2);

                public abstract int getStarts(int i2);
            }

            public abstract Map<String, ? extends Serv> getServiceStats();

            public abstract int getWakeups(int i2);
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

            public abstract int getStarts(int i2);

            public abstract long getSystemTime(int i2);

            public abstract long getTimeAtCpuSpeedStep(int i2, int i3);

            public abstract long getUserTime(int i2);
        }

        public static abstract class Sensor {
            public static final int GPS = -10000;

            public abstract int getHandle();

            public abstract Timer getSensorTime();
        }

        public static abstract class Wakelock {
            public abstract Timer getWakeTime(int i2);
        }

        public abstract long getAudioTurnedOnTime(long j2, int i2);

        public abstract Timer getForegroundActivityTimer();

        public abstract long getFullWifiLockTime(long j2, int i2);

        public abstract long getNetworkActivityCount(int i2, int i3);

        public abstract Map<String, ? extends Pkg> getPackageStats();

        public abstract SparseArray<? extends Pid> getPidStats();

        public abstract Map<String, ? extends Proc> getProcessStats();

        public abstract Map<Integer, ? extends Sensor> getSensorStats();

        public abstract int getUid();

        public abstract int getUserActivityCount(int i2, int i3);

        public abstract Timer getVibratorOnTimer();

        public abstract long getVideoTurnedOnTime(long j2, int i2);

        public abstract Map<String, ? extends Wakelock> getWakelockStats();

        public abstract long getWifiBatchedScanTime(int i2, long j2, int i3);

        public abstract long getWifiMulticastTime(long j2, int i2);

        public abstract long getWifiRunningTime(long j2, int i2);

        public abstract long getWifiScanTime(long j2, int i2);

        public abstract boolean hasNetworkActivity();

        public abstract boolean hasUserActivity();

        public abstract void noteActivityPausedLocked();

        public abstract void noteActivityResumedLocked();

        public abstract void noteAudioTurnedOffLocked();

        public abstract void noteAudioTurnedOnLocked();

        public abstract void noteFullWifiLockAcquiredLocked();

        public abstract void noteFullWifiLockReleasedLocked();

        public abstract void noteUserActivityLocked(int i2);

        public abstract void noteVideoTurnedOffLocked();

        public abstract void noteVideoTurnedOnLocked();

        public abstract void noteWifiBatchedScanStartedLocked(int i2);

        public abstract void noteWifiBatchedScanStoppedLocked();

        public abstract void noteWifiMulticastDisabledLocked();

        public abstract void noteWifiMulticastEnabledLocked();

        public abstract void noteWifiRunningLocked();

        public abstract void noteWifiScanStartedLocked();

        public abstract void noteWifiScanStoppedLocked();

        public abstract void noteWifiStoppedLocked();
    }

    static {
        String[] strArr = {"dark", "dim", "medium", "light", "bright"};
        SCREEN_BRIGHTNESS_NAMES = strArr;
        String[] strArr2 = {Camera.Parameters.EFFECT_NONE, "gprs", "edge", "umts", "cdma", "evdo_0", "evdo_A", "1xrtt", "hsdpa", "hsupa", "hspa", "iden", "evdo_b", "lte", "ehrpd", "hspap", CardEmulation.CATEGORY_OTHER};
        DATA_CONNECTION_NAMES = strArr2;
        HISTORY_STATE_DESCRIPTIONS = new BitDescription[]{new BitDescription(524288, BatteryManager.EXTRA_PLUGGED), new BitDescription(1048576, "screen"), new BitDescription(268435456, LocationManager.GPS_PROVIDER), new BitDescription(262144, "phone_in_call"), new BitDescription(134217728, "phone_scanning"), new BitDescription(131072, "wifi"), new BitDescription(67108864, "wifi_running"), new BitDescription(33554432, "wifi_full_lock"), new BitDescription(16777216, "wifi_scan"), new BitDescription(8388608, "wifi_multicast"), new BitDescription(65536, "bluetooth"), new BitDescription(4194304, Context.AUDIO_SERVICE), new BitDescription(2097152, "video"), new BitDescription(1073741824, "wake_lock"), new BitDescription(536870912, Context.SENSOR_SERVICE), new BitDescription(15, 0, "brightness", strArr), new BitDescription(240, 4, "signal_strength", SignalStrength.SIGNAL_STRENGTH_NAMES), new BitDescription(HistoryItem.STATE_PHONE_STATE_MASK, 8, "phone_state", new String[]{"in", "out", "emergency", "off"}), new BitDescription(HistoryItem.STATE_DATA_CONNECTION_MASK, 12, "data_conn", strArr2)};
    }

    public BatteryStats() {
        StringBuilder sb = new StringBuilder(32);
        this.mFormatBuilder = sb;
        this.mFormatter = new Formatter(sb);
    }

    private static long computeWakeLock(Timer timer, long j2, int i2) {
        if (timer != null) {
            return (timer.getTotalTimeLocked(j2, i2) + 500) / 1000;
        }
        return 0L;
    }

    private static final void dumpLine(PrintWriter printWriter, int i2, String str, String str2, Object... objArr) {
        printWriter.print(7);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(i2);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(str);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(str2);
        for (Object obj : objArr) {
            printWriter.print(PhoneNumberUtils.PAUSE);
            printWriter.print(obj);
        }
        printWriter.println();
    }

    private final String formatBytesLocked(long j2) {
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

    private final String formatRatioLocked(long j2, long j3) {
        if (j3 == 0) {
            return "---%";
        }
        this.mFormatBuilder.setLength(0);
        this.mFormatter.format("%.1f%%", Float.valueOf((j2 / j3) * 100.0f));
        return this.mFormatBuilder.toString();
    }

    private static final void formatTime(StringBuilder sb, long j2) {
        long j3 = j2 / 100;
        formatTimeRaw(sb, j3);
        sb.append((j2 - (j3 * 100)) * 10);
        sb.append("ms ");
    }

    private static final void formatTimeMs(StringBuilder sb, long j2) {
        long j3 = j2 / 1000;
        formatTimeRaw(sb, j3);
        sb.append(j2 - (j3 * 1000));
        sb.append("ms ");
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
        long j6 = j4 + (j5 * 60 * 60);
        long j7 = (j2 - j6) / 60;
        if (j7 != 0 || j6 != 0) {
            sb.append(j7);
            sb.append("m ");
        }
        long j8 = j6 + (j7 * 60);
        if (j2 == 0 && j8 == 0) {
            return;
        }
        sb.append(j2 - j8);
        sb.append("s ");
    }

    public static void printBitDescriptions(PrintWriter printWriter, int i2, int i3, BitDescription[] bitDescriptionArr) {
        int i4 = i2 ^ i3;
        if (i4 == 0) {
            return;
        }
        for (BitDescription bitDescription : bitDescriptionArr) {
            int i5 = bitDescription.mask;
            if ((i4 & i5) != 0) {
                if (bitDescription.shift < 0) {
                    printWriter.print((i5 & i3) != 0 ? " +" : " -");
                    printWriter.print(bitDescription.name);
                } else {
                    printWriter.print(" ");
                    printWriter.print(bitDescription.name);
                    printWriter.print("=");
                    int i6 = (bitDescription.mask & i3) >> bitDescription.shift;
                    String[] strArr = bitDescription.values;
                    if (strArr == null || i6 < 0 || i6 >= strArr.length) {
                        printWriter.print(i6);
                    } else {
                        printWriter.print(strArr[i6]);
                    }
                }
            }
        }
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
                    sb.append(CharArrayBuffers.uppercaseAddon);
                }
                sb.append('(');
                sb.append(countLocked);
                sb.append(" times)");
                return ", ";
            }
        }
        return str2;
    }

    private static final String printWakeLockCheckin(StringBuilder sb, Timer timer, long j2, String str, int i2, String str2) {
        long totalTimeLocked;
        int countLocked;
        String str3;
        if (timer != null) {
            totalTimeLocked = timer.getTotalTimeLocked(j2, i2);
            countLocked = timer.getCountLocked(i2);
        } else {
            totalTimeLocked = 0;
            countLocked = 0;
        }
        sb.append(str2);
        sb.append((totalTimeLocked + 500) / 1000);
        sb.append(PhoneNumberUtils.PAUSE);
        if (str != null) {
            str3 = str + ",";
        } else {
            str3 = ProxyProperties.LOCAL_EXCL_LIST;
        }
        sb.append(str3);
        sb.append(countLocked);
        return ",";
    }

    public abstract long computeBatteryRealtime(long j2, int i2);

    public abstract long computeBatteryUptime(long j2, int i2);

    public abstract long computeRealtime(long j2, int i2);

    public abstract long computeUptime(long j2, int i2);

    public final void dumpCheckinLocked(PrintWriter printWriter, int i2, int i3) {
        char c2;
        int i4;
        StringBuilder sb;
        int i5 = i3;
        long jUptimeMillis = SystemClock.uptimeMillis() * 1000;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long batteryUptime = getBatteryUptime(jUptimeMillis);
        long batteryRealtime = getBatteryRealtime(jElapsedRealtime);
        long jComputeBatteryUptime = computeBatteryUptime(jUptimeMillis, i2);
        long jComputeBatteryRealtime = computeBatteryRealtime(jElapsedRealtime, i2);
        long jComputeRealtime = computeRealtime(jElapsedRealtime, i2);
        long jComputeUptime = computeUptime(jUptimeMillis, i2);
        long screenOnTime = getScreenOnTime(batteryRealtime, i2);
        long phoneOnTime = getPhoneOnTime(batteryRealtime, i2);
        long wifiOnTime = getWifiOnTime(batteryRealtime, i2);
        long globalWifiRunningTime = getGlobalWifiRunningTime(batteryRealtime, i2);
        long bluetoothOnTime = getBluetoothOnTime(batteryRealtime, i2);
        StringBuilder sb2 = new StringBuilder(128);
        SparseArray<? extends Uid> uidStats = getUidStats();
        int size = uidStats.size();
        long j2 = batteryUptime;
        String str = STAT_NAMES[i2];
        StringBuilder sb3 = sb2;
        Object[] objArr = new Object[5];
        objArr[0] = i2 == 0 ? Integer.valueOf(getStartCount()) : "N/A";
        objArr[1] = Long.valueOf(jComputeBatteryRealtime / 1000);
        int i6 = 2;
        objArr[2] = Long.valueOf(jComputeBatteryUptime / 1000);
        int i7 = 3;
        objArr[3] = Long.valueOf(jComputeRealtime / 1000);
        objArr[4] = Long.valueOf(jComputeUptime / 1000);
        int i8 = 0;
        dumpLine(printWriter, 0, str, BATTERY_DATA, objArr);
        int i9 = 0;
        long networkActivityCount = 0;
        long networkActivityCount2 = 0;
        long networkActivityCount3 = 0;
        long networkActivityCount4 = 0;
        long totalTimeLocked = 0;
        long totalTimeLocked2 = 0;
        while (i9 < size) {
            Uid uidValueAt = uidStats.valueAt(i9);
            networkActivityCount += uidValueAt.getNetworkActivityCount(i8, i2);
            networkActivityCount2 += uidValueAt.getNetworkActivityCount(1, i2);
            networkActivityCount3 += uidValueAt.getNetworkActivityCount(i6, i2);
            networkActivityCount4 += uidValueAt.getNetworkActivityCount(i7, i2);
            Map<String, ? extends Uid.Wakelock> wakelockStats = uidValueAt.getWakelockStats();
            if (wakelockStats.size() > 0) {
                Iterator<Map.Entry<String, ? extends Uid.Wakelock>> it = wakelockStats.entrySet().iterator();
                while (it.hasNext()) {
                    Uid.Wakelock value = it.next().getValue();
                    Timer wakeTime = value.getWakeTime(1);
                    if (wakeTime != null) {
                        totalTimeLocked += wakeTime.getTotalTimeLocked(batteryRealtime, i2);
                    }
                    Timer wakeTime2 = value.getWakeTime(0);
                    if (wakeTime2 != null) {
                        totalTimeLocked2 += wakeTime2.getTotalTimeLocked(batteryRealtime, i2);
                    }
                }
            }
            i9++;
            i8 = 0;
            i6 = 2;
            i7 = 3;
        }
        dumpLine(printWriter, 0, str, MISC_DATA, Long.valueOf(screenOnTime / 1000), Long.valueOf(phoneOnTime / 1000), Long.valueOf(wifiOnTime / 1000), Long.valueOf(globalWifiRunningTime / 1000), Long.valueOf(bluetoothOnTime / 1000), Long.valueOf(networkActivityCount), Long.valueOf(networkActivityCount2), Long.valueOf(networkActivityCount3), Long.valueOf(networkActivityCount4), Long.valueOf(totalTimeLocked), Long.valueOf(totalTimeLocked2), Integer.valueOf(getInputEventCount(i2)));
        Object[] objArr2 = new Object[5];
        for (int i10 = 0; i10 < 5; i10++) {
            objArr2[i10] = Long.valueOf(getScreenBrightnessTime(i10, batteryRealtime, i2) / 1000);
        }
        dumpLine(printWriter, 0, str, SCREEN_BRIGHTNESS_DATA, objArr2);
        Object[] objArr3 = new Object[5];
        int i11 = 0;
        for (int i12 = 5; i11 < i12; i12 = 5) {
            objArr3[i11] = Long.valueOf(getPhoneSignalStrengthTime(i11, batteryRealtime, i2) / 1000);
            i11++;
        }
        dumpLine(printWriter, 0, str, SIGNAL_STRENGTH_TIME_DATA, objArr3);
        dumpLine(printWriter, 0, str, SIGNAL_SCANNING_TIME_DATA, Long.valueOf(getPhoneSignalScanningTime(batteryRealtime, i2) / 1000));
        for (int i13 = 0; i13 < 5; i13++) {
            objArr3[i13] = Integer.valueOf(getPhoneSignalStrengthCount(i13, i2));
        }
        dumpLine(printWriter, 0, str, SIGNAL_STRENGTH_COUNT_DATA, objArr3);
        Object[] objArr4 = new Object[17];
        for (int i14 = 0; i14 < 17; i14++) {
            objArr4[i14] = Long.valueOf(getPhoneDataConnectionTime(i14, batteryRealtime, i2) / 1000);
        }
        dumpLine(printWriter, 0, str, DATA_CONNECTION_TIME_DATA, objArr4);
        for (int i15 = 0; i15 < 17; i15++) {
            objArr4[i15] = Integer.valueOf(getPhoneDataConnectionCount(i15, i2));
        }
        dumpLine(printWriter, 0, str, DATA_CONNECTION_COUNT_DATA, objArr4);
        if (i2 == 3) {
            dumpLine(printWriter, 0, str, BATTERY_LEVEL_DATA, Integer.valueOf(getDischargeStartLevel()), Integer.valueOf(getDischargeCurrentLevel()));
        }
        if (i2 == 3) {
            dumpLine(printWriter, 0, str, BATTERY_DISCHARGE_DATA, Integer.valueOf(getDischargeStartLevel() - getDischargeCurrentLevel()), Integer.valueOf(getDischargeStartLevel() - getDischargeCurrentLevel()), Integer.valueOf(getDischargeAmountScreenOn()), Integer.valueOf(getDischargeAmountScreenOff()));
            c2 = 4;
        } else {
            c2 = 4;
            dumpLine(printWriter, 0, str, BATTERY_DISCHARGE_DATA, Integer.valueOf(getLowDischargeAmountSinceCharge()), Integer.valueOf(getHighDischargeAmountSinceCharge()), Integer.valueOf(getDischargeAmountScreenOn()), Integer.valueOf(getDischargeAmountScreenOff()));
        }
        if (i5 < 0) {
            Map<String, ? extends Timer> kernelWakelockStats = getKernelWakelockStats();
            if (kernelWakelockStats.size() > 0) {
                Iterator<Map.Entry<String, ? extends Timer>> it2 = kernelWakelockStats.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry<String, ? extends Timer> next = it2.next();
                    sb3.setLength(0);
                    printWakeLockCheckin(sb3, next.getValue(), batteryRealtime, null, i2, ProxyProperties.LOCAL_EXCL_LIST);
                    dumpLine(printWriter, 0, str, KERNEL_WAKELOCK_DATA, next.getKey(), sb3.toString());
                    batteryRealtime = batteryRealtime;
                    it2 = it2;
                    c2 = 4;
                }
            }
        }
        long j3 = batteryRealtime;
        int i16 = 0;
        while (i16 < size) {
            int iKeyAt = uidStats.keyAt(i16);
            if (i5 < 0 || iKeyAt == i5) {
                Uid uidValueAt2 = uidStats.valueAt(i16);
                long networkActivityCount5 = uidValueAt2.getNetworkActivityCount(0, i2);
                long networkActivityCount6 = uidValueAt2.getNetworkActivityCount(1, i2);
                long networkActivityCount7 = uidValueAt2.getNetworkActivityCount(2, i2);
                long networkActivityCount8 = uidValueAt2.getNetworkActivityCount(3, i2);
                long fullWifiLockTime = uidValueAt2.getFullWifiLockTime(j3, i2);
                long wifiScanTime = uidValueAt2.getWifiScanTime(j3, i2);
                long wifiRunningTime = uidValueAt2.getWifiRunningTime(j3, i2);
                if (networkActivityCount5 > 0 || networkActivityCount6 > 0 || networkActivityCount7 > 0 || networkActivityCount8 > 0) {
                    dumpLine(printWriter, iKeyAt, str, NETWORK_DATA, Long.valueOf(networkActivityCount5), Long.valueOf(networkActivityCount6), Long.valueOf(networkActivityCount7), Long.valueOf(networkActivityCount8));
                }
                if (fullWifiLockTime != 0 || wifiScanTime != 0 || wifiRunningTime != 0) {
                    dumpLine(printWriter, iKeyAt, str, WIFI_DATA, Long.valueOf(fullWifiLockTime), Long.valueOf(wifiScanTime), Long.valueOf(wifiRunningTime));
                }
                if (uidValueAt2.hasUserActivity()) {
                    Object[] objArr5 = new Object[3];
                    int i17 = 0;
                    boolean z2 = false;
                    for (int i18 = 3; i17 < i18; i18 = 3) {
                        int userActivityCount = uidValueAt2.getUserActivityCount(i17, i2);
                        objArr5[i17] = Integer.valueOf(userActivityCount);
                        if (userActivityCount != 0) {
                            z2 = true;
                        }
                        i17++;
                    }
                    if (z2) {
                        dumpLine(printWriter, 0, str, USER_ACTIVITY_DATA, objArr5);
                    }
                }
                Map<String, ? extends Uid.Wakelock> wakelockStats2 = uidValueAt2.getWakelockStats();
                if (wakelockStats2.size() > 0) {
                    for (Map.Entry<String, ? extends Uid.Wakelock> entry : wakelockStats2.entrySet()) {
                        Uid.Wakelock value2 = entry.getValue();
                        StringBuilder sb4 = sb3;
                        sb4.setLength(0);
                        Uid uid = uidValueAt2;
                        int i19 = iKeyAt;
                        int i20 = i16;
                        printWakeLockCheckin(sb4, value2.getWakeTime(2), j3, "w", i2, printWakeLockCheckin(sb4, value2.getWakeTime(0), j3, "p", i2, printWakeLockCheckin(sb4, value2.getWakeTime(1), j3, FullBackup.DATA_TREE_TOKEN, i2, ProxyProperties.LOCAL_EXCL_LIST)));
                        if (sb4.length() > 0) {
                            String key = entry.getKey();
                            if (key.indexOf(44) >= 0) {
                                key = key.replace(PhoneNumberUtils.PAUSE, '_');
                            }
                            dumpLine(printWriter, i19, str, WAKELOCK_DATA, key, sb4.toString());
                        }
                        iKeyAt = i19;
                        i16 = i20;
                        sb3 = sb4;
                        uidValueAt2 = uid;
                    }
                }
                Uid uid2 = uidValueAt2;
                int i21 = iKeyAt;
                i4 = i16;
                sb = sb3;
                Map<Integer, ? extends Uid.Sensor> sensorStats = uid2.getSensorStats();
                long j4 = 500;
                if (sensorStats.size() > 0) {
                    for (Map.Entry<Integer, ? extends Uid.Sensor> entry2 : sensorStats.entrySet()) {
                        Uid.Sensor value3 = entry2.getValue();
                        int iIntValue = entry2.getKey().intValue();
                        Timer sensorTime = value3.getSensorTime();
                        if (sensorTime != null) {
                            long totalTimeLocked3 = (sensorTime.getTotalTimeLocked(j3, i2) + j4) / 1000;
                            int countLocked = sensorTime.getCountLocked(i2);
                            if (totalTimeLocked3 != 0) {
                                dumpLine(printWriter, i21, str, SENSOR_DATA, Integer.valueOf(iIntValue), Long.valueOf(totalTimeLocked3), Integer.valueOf(countLocked));
                            }
                        }
                        j4 = 500;
                    }
                }
                Timer vibratorOnTimer = uid2.getVibratorOnTimer();
                if (vibratorOnTimer != null) {
                    long totalTimeLocked4 = (vibratorOnTimer.getTotalTimeLocked(j3, i2) + 500) / 1000;
                    int countLocked2 = vibratorOnTimer.getCountLocked(i2);
                    if (totalTimeLocked4 != 0) {
                        dumpLine(printWriter, i21, str, VIBRATOR_DATA, Long.valueOf(totalTimeLocked4), Integer.valueOf(countLocked2));
                    }
                }
                Timer foregroundActivityTimer = uid2.getForegroundActivityTimer();
                if (foregroundActivityTimer != null) {
                    long totalTimeLocked5 = (foregroundActivityTimer.getTotalTimeLocked(j3, i2) + 500) / 1000;
                    int countLocked3 = foregroundActivityTimer.getCountLocked(i2);
                    if (totalTimeLocked5 != 0) {
                        dumpLine(printWriter, i21, str, FOREGROUND_DATA, Long.valueOf(totalTimeLocked5), Integer.valueOf(countLocked3));
                    }
                }
                Map<String, ? extends Uid.Proc> processStats = uid2.getProcessStats();
                if (processStats.size() > 0) {
                    for (Map.Entry<String, ? extends Uid.Proc> entry3 : processStats.entrySet()) {
                        Uid.Proc value4 = entry3.getValue();
                        long userTime = value4.getUserTime(i2) * 10;
                        long systemTime = value4.getSystemTime(i2) * 10;
                        long foregroundTime = value4.getForegroundTime(i2) * 10;
                        long starts = value4.getStarts(i2);
                        if (userTime != 0 || systemTime != 0 || foregroundTime != 0 || starts != 0) {
                            dumpLine(printWriter, i21, str, PROCESS_DATA, entry3.getKey(), Long.valueOf(userTime), Long.valueOf(systemTime), Long.valueOf(foregroundTime), Long.valueOf(starts));
                        }
                    }
                }
                Map<String, ? extends Uid.Pkg> packageStats = uid2.getPackageStats();
                if (packageStats.size() > 0) {
                    Iterator<Map.Entry<String, ? extends Uid.Pkg>> it3 = packageStats.entrySet().iterator();
                    while (it3.hasNext()) {
                        Map.Entry<String, ? extends Uid.Pkg> next2 = it3.next();
                        Uid.Pkg value5 = next2.getValue();
                        int wakeups = value5.getWakeups(i2);
                        Iterator<Map.Entry<String, ? extends Uid.Pkg.Serv>> it4 = value5.getServiceStats().entrySet().iterator();
                        while (it4.hasNext()) {
                            Map.Entry<String, ? extends Uid.Pkg.Serv> next3 = it4.next();
                            Uid.Pkg.Serv value6 = next3.getValue();
                            long j5 = j2;
                            long startTime = value6.getStartTime(j5, i2);
                            int starts2 = value6.getStarts(i2);
                            int launches = value6.getLaunches(i2);
                            if (startTime != 0 || starts2 != 0 || launches != 0) {
                                dumpLine(printWriter, i21, str, APK_DATA, Integer.valueOf(wakeups), next2.getKey(), next3.getKey(), Long.valueOf(startTime / 1000), Integer.valueOf(starts2), Integer.valueOf(launches));
                            }
                            j2 = j5;
                            it4 = it4;
                            it3 = it3;
                        }
                    }
                }
            } else {
                i4 = i16;
                sb = sb3;
            }
            i5 = i3;
            j2 = j2;
            sb3 = sb;
            i16 = i4 + 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x028a  */
    public final void dumpLocked(PrintWriter printWriter, String str, int i2, int i3) {
        String str2;
        long j2;
        String str3;
        String str4;
        Comparator<TimerEntry> comparator;
        String str5;
        String str6;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        int i4;
        long j8;
        int i5;
        int i6;
        StringBuilder sb;
        String str7;
        String str8;
        String str9;
        String str10;
        long j9;
        String str11;
        Uid uid;
        String str12;
        StringBuilder sb2;
        String str13;
        long j10;
        String str14;
        String str15;
        String str16;
        String str17;
        long j11;
        boolean z2;
        String str18;
        long j12;
        long j13;
        boolean z3;
        long j14;
        boolean z4;
        StringBuilder sb3;
        String str19;
        int i7;
        StringBuilder sb4;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        long j15;
        int i8;
        boolean z5;
        StringBuilder sb5;
        long j16;
        boolean z6;
        BatteryStats batteryStats = this;
        int i9 = i2;
        long jUptimeMillis = SystemClock.uptimeMillis() * 1000;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long batteryUptime = batteryStats.getBatteryUptime(jUptimeMillis);
        long batteryRealtime = batteryStats.getBatteryRealtime(jElapsedRealtime);
        long jComputeBatteryUptime = batteryStats.computeBatteryUptime(jUptimeMillis, i9);
        long jComputeBatteryRealtime = batteryStats.computeBatteryRealtime(jElapsedRealtime, i9);
        long jComputeRealtime = batteryStats.computeRealtime(jElapsedRealtime, i9);
        long jComputeUptime = batteryStats.computeUptime(jUptimeMillis, i9);
        long j17 = batteryUptime;
        StringBuilder sb6 = new StringBuilder(128);
        SparseArray<? extends Uid> uidStats = getUidStats();
        int size = uidStats.size();
        SparseArray<? extends Uid> sparseArray = uidStats;
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Time on battery: ");
        int i10 = size;
        formatTimeMs(sb6, jComputeBatteryRealtime / 1000);
        String str25 = "(";
        sb6.append("(");
        sb6.append(batteryStats.formatRatioLocked(jComputeBatteryRealtime, jComputeRealtime));
        sb6.append(") realtime, ");
        formatTimeMs(sb6, jComputeBatteryUptime / 1000);
        sb6.append("(");
        sb6.append(batteryStats.formatRatioLocked(jComputeBatteryUptime, jComputeRealtime));
        sb6.append(") uptime");
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Total run time: ");
        formatTimeMs(sb6, jComputeRealtime / 1000);
        sb6.append("realtime, ");
        formatTimeMs(sb6, jComputeUptime / 1000);
        sb6.append("uptime, ");
        printWriter.println(sb6.toString());
        long j18 = batteryRealtime;
        long screenOnTime = batteryStats.getScreenOnTime(j18, i9);
        long phoneOnTime = batteryStats.getPhoneOnTime(j18, i9);
        long globalWifiRunningTime = batteryStats.getGlobalWifiRunningTime(j18, i9);
        long wifiOnTime = batteryStats.getWifiOnTime(j18, i9);
        long bluetoothOnTime = batteryStats.getBluetoothOnTime(j18, i9);
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Screen on: ");
        long j19 = bluetoothOnTime;
        formatTimeMs(sb6, screenOnTime / 1000);
        sb6.append("(");
        long j20 = jComputeBatteryRealtime;
        sb6.append(batteryStats.formatRatioLocked(screenOnTime, j20));
        sb6.append("), Input events: ");
        sb6.append(batteryStats.getInputEventCount(i9));
        sb6.append(", Active phone call: ");
        long j21 = screenOnTime;
        formatTimeMs(sb6, phoneOnTime / 1000);
        sb6.append("(");
        sb6.append(batteryStats.formatRatioLocked(phoneOnTime, j20));
        String str26 = ")";
        sb6.append(")");
        printWriter.println(sb6.toString());
        sb6.setLength(0);
        sb6.append(str);
        sb6.append("  Screen brightnesses: ");
        int i11 = 0;
        boolean z7 = false;
        while (true) {
            str2 = ", ";
            j2 = j20;
            if (i11 >= 5) {
                break;
            }
            StringBuilder sb7 = sb6;
            long screenBrightnessTime = batteryStats.getScreenBrightnessTime(i11, j18, i9);
            if (screenBrightnessTime == 0) {
                z6 = z7;
                j16 = j21;
                sb5 = sb7;
            } else {
                if (z7) {
                    sb5 = sb7;
                    sb5.append(", ");
                } else {
                    sb5 = sb7;
                }
                sb5.append(SCREEN_BRIGHTNESS_NAMES[i11]);
                sb5.append(" ");
                formatTimeMs(sb5, screenBrightnessTime / 1000);
                sb5.append("(");
                j16 = j21;
                sb5.append(batteryStats.formatRatioLocked(screenBrightnessTime, j16));
                sb5.append(")");
                z6 = true;
            }
            i11++;
            sb6 = sb5;
            j21 = j16;
            j20 = j2;
            z7 = z6;
            j18 = j18;
        }
        long j22 = j18;
        String str27 = "No activity";
        if (!z7) {
            sb6.append("No activity");
        }
        printWriter.println(sb6.toString());
        Comparator<TimerEntry> comparator2 = new Comparator<TimerEntry>() { // from class: android.os.BatteryStats.1
            @Override // java.util.Comparator
            public int compare(TimerEntry timerEntry, TimerEntry timerEntry2) {
                long j23 = timerEntry.mTime;
                long j24 = timerEntry2.mTime;
                if (j23 < j24) {
                    return 1;
                }
                return j23 > j24 ? -1 : 0;
            }
        };
        String str28 = ": ";
        String str29 = " realtime";
        if (i3 < 0) {
            Map<String, ? extends Timer> kernelWakelockStats = getKernelWakelockStats();
            if (kernelWakelockStats.size() > 0) {
                String str30 = " ";
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<String, ? extends Timer>> it = kernelWakelockStats.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, ? extends Timer> next = it.next();
                    Timer value = next.getValue();
                    String str31 = str25;
                    String str32 = str26;
                    long j23 = j22;
                    long jComputeWakeLock = computeWakeLock(value, j23, i9);
                    if (jComputeWakeLock > 0) {
                        arrayList.add(new TimerEntry(next.getKey(), 0, value, jComputeWakeLock));
                    }
                    it = it;
                    j22 = j23;
                    str25 = str31;
                    str26 = str32;
                }
                str5 = str25;
                str6 = str26;
                long j24 = j22;
                Collections.sort(arrayList, comparator2);
                int i12 = 0;
                while (i12 < arrayList.size()) {
                    TimerEntry timerEntry = (TimerEntry) arrayList.get(i12);
                    String str33 = str29;
                    sb6.setLength(0);
                    sb6.append(str);
                    sb6.append("  Kernel Wake lock ");
                    sb6.append(timerEntry.mName);
                    int i13 = i12;
                    String str34 = str2;
                    Comparator<TimerEntry> comparator3 = comparator2;
                    long j25 = globalWifiRunningTime;
                    String str35 = str30;
                    long j26 = wifiOnTime;
                    long j27 = j19;
                    long j28 = j2;
                    ArrayList arrayList2 = arrayList;
                    long j29 = j24;
                    String str36 = str28;
                    StringBuilder sb8 = sb6;
                    if (!printWakeLock(sb6, timerEntry.mTimer, j24, null, i2, ": ").equals(str36)) {
                        sb8.append(str33);
                        printWriter.println(sb8.toString());
                    }
                    i12 = i13 + 1;
                    str29 = str33;
                    sb6 = sb8;
                    str28 = str36;
                    arrayList = arrayList2;
                    comparator2 = comparator3;
                    str2 = str34;
                    j2 = j28;
                    globalWifiRunningTime = j25;
                    wifiOnTime = j26;
                    j19 = j27;
                    str30 = str35;
                    j24 = j29;
                }
                str3 = str2;
                comparator = comparator2;
                j7 = j24;
                j3 = globalWifiRunningTime;
                str4 = str30;
                j4 = wifiOnTime;
                j5 = j19;
                j6 = j2;
            } else {
                str3 = ", ";
                str4 = " ";
                comparator = comparator2;
                str5 = "(";
                str6 = ")";
                j3 = globalWifiRunningTime;
                j4 = wifiOnTime;
                j5 = j19;
                j6 = j2;
                j7 = j22;
            }
        } else {
            str3 = ", ";
            str4 = " ";
            comparator = comparator2;
            str5 = "(";
            str6 = ")";
            j3 = globalWifiRunningTime;
            j4 = wifiOnTime;
            j5 = j19;
            j6 = j2;
            j7 = j22;
        }
        String str37 = str28;
        StringBuilder sb9 = sb6;
        String str38 = str29;
        ArrayList arrayList3 = new ArrayList();
        long j30 = 0;
        long j31 = 0;
        long totalTimeLocked = 0;
        long j32 = 0;
        long networkActivityCount = 0;
        long networkActivityCount2 = 0;
        int i14 = 0;
        while (true) {
            i4 = i10;
            if (i14 >= i4) {
                break;
            }
            String str39 = str37;
            SparseArray<? extends Uid> sparseArray2 = sparseArray;
            String str40 = str38;
            Uid uidValueAt = sparseArray2.valueAt(i14);
            sparseArray = sparseArray2;
            long networkActivityCount3 = j30 + uidValueAt.getNetworkActivityCount(0, i9);
            long networkActivityCount4 = j31 + uidValueAt.getNetworkActivityCount(1, i9);
            networkActivityCount += uidValueAt.getNetworkActivityCount(2, i9);
            String str41 = str27;
            StringBuilder sb10 = sb9;
            networkActivityCount2 += uidValueAt.getNetworkActivityCount(3, i9);
            Map<String, ? extends Uid.Wakelock> wakelockStats = uidValueAt.getWakelockStats();
            if (wakelockStats.size() > 0) {
                for (Map.Entry<String, ? extends Uid.Wakelock> entry : wakelockStats.entrySet()) {
                    Uid.Wakelock value2 = entry.getValue();
                    long j33 = networkActivityCount3;
                    Timer wakeTime = value2.getWakeTime(1);
                    long j34 = networkActivityCount4;
                    long j35 = j7;
                    if (wakeTime != null) {
                        totalTimeLocked += wakeTime.getTotalTimeLocked(j35, i9);
                    }
                    Timer wakeTime2 = value2.getWakeTime(0);
                    if (wakeTime2 != null) {
                        long totalTimeLocked2 = wakeTime2.getTotalTimeLocked(j35, i9);
                        if (totalTimeLocked2 > 0) {
                            if (i3 < 0) {
                                arrayList3.add(new TimerEntry(entry.getKey(), uidValueAt.getUid(), wakeTime2, totalTimeLocked2));
                            }
                            j32 += totalTimeLocked2;
                        }
                    }
                    j7 = j35;
                    networkActivityCount3 = j33;
                    networkActivityCount4 = j34;
                }
            }
            i14++;
            j7 = j7;
            str37 = str39;
            j30 = networkActivityCount3;
            str27 = str41;
            i10 = i4;
            sb9 = sb10;
            j31 = networkActivityCount4;
            str38 = str40;
        }
        String str42 = str38;
        String str43 = str27;
        String str44 = str37;
        long j36 = j31;
        long j37 = j7;
        printWriter.print(str);
        printWriter.print("  Mobile total received: ");
        printWriter.print(batteryStats.formatBytesLocked(j30));
        printWriter.print(", Total sent: ");
        printWriter.println(batteryStats.formatBytesLocked(j36));
        printWriter.print(str);
        printWriter.print("  Wi-Fi total received: ");
        printWriter.print(batteryStats.formatBytesLocked(networkActivityCount));
        printWriter.print(", Total sent: ");
        printWriter.println(batteryStats.formatBytesLocked(networkActivityCount2));
        StringBuilder sb11 = sb9;
        sb11.setLength(0);
        sb11.append(str);
        sb11.append("  Total full wakelock time: ");
        formatTimeMs(sb11, (totalTimeLocked + 500) / 1000);
        sb11.append(", Total partial wakelock time: ");
        formatTimeMs(sb11, (j32 + 500) / 1000);
        printWriter.println(sb11.toString());
        sb11.setLength(0);
        sb11.append(str);
        sb11.append("  Signal levels: ");
        int i15 = 0;
        boolean z8 = false;
        while (i15 < 5) {
            long phoneSignalStrengthTime = batteryStats.getPhoneSignalStrengthTime(i15, j37, i9);
            if (phoneSignalStrengthTime == 0) {
                z5 = z8;
                i8 = i9;
                str23 = str3;
                j15 = j6;
                str24 = str4;
            } else {
                str23 = str3;
                if (z8) {
                    sb11.append(str23);
                }
                sb11.append(SignalStrength.SIGNAL_STRENGTH_NAMES[i15]);
                str24 = str4;
                sb11.append(str24);
                formatTimeMs(sb11, phoneSignalStrengthTime / 1000);
                sb11.append(str5);
                j15 = j6;
                sb11.append(batteryStats.formatRatioLocked(phoneSignalStrengthTime, j15));
                sb11.append(") ");
                i8 = i2;
                sb11.append(batteryStats.getPhoneSignalStrengthCount(i15, i8));
                sb11.append("x");
                z5 = true;
            }
            i15++;
            str4 = str24;
            z8 = z5;
            j6 = j15;
            i9 = i8;
            str3 = str23;
        }
        int i16 = i9;
        String str45 = str3;
        long j38 = j6;
        String str46 = str4;
        if (!z8) {
            sb11.append(str43);
        }
        printWriter.println(sb11.toString());
        sb11.setLength(0);
        sb11.append(str);
        sb11.append("  Signal scanning time: ");
        formatTimeMs(sb11, batteryStats.getPhoneSignalScanningTime(j37, i16) / 1000);
        printWriter.println(sb11.toString());
        sb11.setLength(0);
        sb11.append(str);
        sb11.append("  Radio types: ");
        int i17 = 0;
        boolean z9 = false;
        while (i17 < 17) {
            long phoneDataConnectionTime = batteryStats.getPhoneDataConnectionTime(i17, j37, i16);
            if (phoneDataConnectionTime == 0) {
                str22 = str5;
            } else {
                if (z9) {
                    sb11.append(str45);
                }
                sb11.append(DATA_CONNECTION_NAMES[i17]);
                sb11.append(str46);
                formatTimeMs(sb11, phoneDataConnectionTime / 1000);
                str22 = str5;
                sb11.append(str22);
                sb11.append(batteryStats.formatRatioLocked(phoneDataConnectionTime, j38));
                sb11.append(") ");
                sb11.append(batteryStats.getPhoneDataConnectionCount(i17, i16));
                sb11.append("x");
                z9 = true;
            }
            i17++;
            str5 = str22;
            j37 = j37;
        }
        long j39 = j37;
        String str47 = str5;
        if (!z9) {
            sb11.append(str43);
        }
        printWriter.println(sb11.toString());
        sb11.setLength(0);
        sb11.append(str);
        sb11.append("  Radio data uptime when unplugged: ");
        sb11.append(getRadioDataUptime() / 1000);
        sb11.append(" ms");
        printWriter.println(sb11.toString());
        sb11.setLength(0);
        sb11.append(str);
        sb11.append("  Wifi on: ");
        long j40 = j4;
        formatTimeMs(sb11, j40 / 1000);
        sb11.append(str47);
        sb11.append(batteryStats.formatRatioLocked(j40, j38));
        sb11.append("), Wifi running: ");
        long j41 = j3;
        formatTimeMs(sb11, j41 / 1000);
        sb11.append(str47);
        sb11.append(batteryStats.formatRatioLocked(j41, j38));
        sb11.append("), Bluetooth on: ");
        long j42 = j5;
        formatTimeMs(sb11, j42 / 1000);
        sb11.append(str47);
        sb11.append(batteryStats.formatRatioLocked(j42, j38));
        String str48 = str6;
        sb11.append(str48);
        printWriter.println(sb11.toString());
        printWriter.println(str46);
        if (i16 == 3) {
            if (getIsOnBattery()) {
                printWriter.print(str);
                printWriter.println("  Device is currently unplugged");
                printWriter.print(str);
                printWriter.print("    Discharge cycle start level: ");
                printWriter.println(getDischargeStartLevel());
                printWriter.print(str);
                printWriter.print("    Discharge cycle current level: ");
                printWriter.println(getDischargeCurrentLevel());
            } else {
                printWriter.print(str);
                printWriter.println("  Device is currently plugged into power");
                printWriter.print(str);
                printWriter.print("    Last discharge cycle start level: ");
                printWriter.println(getDischargeStartLevel());
                printWriter.print(str);
                printWriter.print("    Last discharge cycle end level: ");
                printWriter.println(getDischargeCurrentLevel());
            }
            printWriter.print(str);
            printWriter.print("    Amount discharged while screen on: ");
            printWriter.println(getDischargeAmountScreenOn());
            printWriter.print(str);
            printWriter.print("    Amount discharged while screen off: ");
            printWriter.println(getDischargeAmountScreenOff());
            printWriter.println(str46);
        } else {
            printWriter.print(str);
            printWriter.println("  Device battery use since last full charge");
            printWriter.print(str);
            printWriter.print("    Amount discharged (lower bound): ");
            printWriter.println(getLowDischargeAmountSinceCharge());
            printWriter.print(str);
            printWriter.print("    Amount discharged (upper bound): ");
            printWriter.println(getHighDischargeAmountSinceCharge());
            printWriter.print(str);
            printWriter.print("    Amount discharged while screen on: ");
            printWriter.println(getDischargeAmountScreenOnSinceCharge());
            printWriter.print(str);
            printWriter.print("    Amount discharged while screen off: ");
            printWriter.println(getDischargeAmountScreenOffSinceCharge());
            printWriter.println();
        }
        if (arrayList3.size() > 0) {
            ArrayList arrayList4 = arrayList3;
            Collections.sort(arrayList4, comparator);
            printWriter.print(str);
            printWriter.println("  All partial wake locks:");
            int i18 = 0;
            while (i18 < arrayList4.size()) {
                TimerEntry timerEntry2 = (TimerEntry) arrayList4.get(i18);
                sb11.setLength(0);
                sb11.append("  Wake lock ");
                UserHandle.formatUid(sb11, timerEntry2.mId);
                sb11.append(str46);
                sb11.append(timerEntry2.mName);
                printWakeLock(sb11, timerEntry2.mTimer, j39, null, i2, ": ");
                sb11.append(str42);
                printWriter.println(sb11.toString());
                i18++;
                arrayList4 = arrayList4;
                j38 = j38;
            }
            j8 = j38;
            arrayList4.clear();
            printWriter.println();
        } else {
            j8 = j38;
        }
        int i19 = i4;
        int i20 = 0;
        while (i20 < i19) {
            SparseArray<? extends Uid> sparseArray3 = sparseArray;
            int iKeyAt = sparseArray3.keyAt(i20);
            if (i3 < 0 || iKeyAt == i3 || iKeyAt == 1000) {
                Uid uidValueAt2 = sparseArray3.valueAt(i20);
                printWriter.print(str);
                printWriter.print("  ");
                UserHandle.formatUid(printWriter, iKeyAt);
                printWriter.println(":");
                long networkActivityCount5 = uidValueAt2.getNetworkActivityCount(0, i16);
                sparseArray = sparseArray3;
                i5 = i19;
                long networkActivityCount6 = uidValueAt2.getNetworkActivityCount(1, i16);
                i6 = i20;
                String str49 = str42;
                long networkActivityCount7 = uidValueAt2.getNetworkActivityCount(2, i16);
                String str50 = str46;
                String str51 = str45;
                long networkActivityCount8 = uidValueAt2.getNetworkActivityCount(3, i16);
                String str52 = str47;
                StringBuilder sb12 = sb11;
                long j43 = j39;
                long fullWifiLockTime = uidValueAt2.getFullWifiLockTime(j43, i16);
                long wifiScanTime = uidValueAt2.getWifiScanTime(j43, i16);
                long wifiRunningTime = uidValueAt2.getWifiRunningTime(j43, i16);
                if (networkActivityCount5 > 0 || networkActivityCount6 > 0) {
                    printWriter.print(str);
                    printWriter.print("    Mobile network: ");
                    printWriter.print(batteryStats.formatBytesLocked(networkActivityCount5));
                    printWriter.print(" received, ");
                    printWriter.print(batteryStats.formatBytesLocked(networkActivityCount6));
                    printWriter.println(" sent");
                }
                if (networkActivityCount7 > 0 || networkActivityCount8 > 0) {
                    printWriter.print(str);
                    printWriter.print("    Wi-Fi network: ");
                    printWriter.print(batteryStats.formatBytesLocked(networkActivityCount7));
                    printWriter.print(" received, ");
                    printWriter.print(batteryStats.formatBytesLocked(networkActivityCount8));
                    printWriter.println(" sent");
                }
                if (uidValueAt2.hasUserActivity()) {
                    int i21 = 0;
                    boolean z10 = false;
                    while (i21 < 3) {
                        int userActivityCount = uidValueAt2.getUserActivityCount(i21, i16);
                        if (userActivityCount != 0) {
                            if (z10) {
                                sb4 = sb12;
                                str20 = str51;
                                sb4.append(str20);
                            } else {
                                sb4 = sb12;
                                sb4.setLength(0);
                                sb4.append("    User activity: ");
                                str20 = str51;
                                z10 = true;
                            }
                            sb4.append(userActivityCount);
                            str21 = str50;
                            sb4.append(str21);
                            sb4.append(Uid.USER_ACTIVITY_TYPES[i21]);
                        } else {
                            sb4 = sb12;
                            str20 = str51;
                            str21 = str50;
                        }
                        i21++;
                        str50 = str21;
                        str51 = str20;
                        sb12 = sb4;
                    }
                    sb = sb12;
                    str7 = str51;
                    str8 = str50;
                    if (z10) {
                        printWriter.println(sb.toString());
                    }
                } else {
                    sb = sb12;
                    str7 = str51;
                    str8 = str50;
                }
                if (fullWifiLockTime == 0 && wifiScanTime == 0 && wifiRunningTime == 0) {
                    str9 = str;
                    str10 = str52;
                    j9 = j8;
                } else {
                    sb.setLength(0);
                    str9 = str;
                    sb.append(str9);
                    sb.append("    Wifi Running: ");
                    formatTimeMs(sb, wifiRunningTime / 1000);
                    str10 = str52;
                    sb.append(str10);
                    j9 = j8;
                    sb.append(batteryStats.formatRatioLocked(wifiRunningTime, j9));
                    sb.append(")\n");
                    sb.append(str9);
                    sb.append("    Full Wifi Lock: ");
                    formatTimeMs(sb, fullWifiLockTime / 1000);
                    sb.append(str10);
                    sb.append(batteryStats.formatRatioLocked(fullWifiLockTime, j9));
                    sb.append(")\n");
                    sb.append(str9);
                    sb.append("    Wifi Scan: ");
                    formatTimeMs(sb, wifiScanTime / 1000);
                    sb.append(str10);
                    sb.append(batteryStats.formatRatioLocked(wifiScanTime, j9));
                    sb.append(str48);
                    printWriter.println(sb.toString());
                }
                Map<String, ? extends Uid.Wakelock> wakelockStats2 = uidValueAt2.getWakelockStats();
                if (wakelockStats2.size() > 0) {
                    Iterator<Map.Entry<String, ? extends Uid.Wakelock>> it2 = wakelockStats2.entrySet().iterator();
                    str11 = str48;
                    str13 = str10;
                    j10 = j9;
                    long jComputeWakeLock2 = 0;
                    long j44 = 0;
                    long j45 = 0;
                    int i22 = 0;
                    z2 = false;
                    while (it2.hasNext()) {
                        Map.Entry<String, ? extends Uid.Wakelock> next2 = it2.next();
                        Iterator<Map.Entry<String, ? extends Uid.Wakelock>> it3 = it2;
                        Uid.Wakelock value3 = next2.getValue();
                        long j46 = j44;
                        sb.setLength(0);
                        sb.append(str9);
                        sb.append("    Wake lock ");
                        sb.append(next2.getKey());
                        long j47 = j45;
                        Uid uid2 = uidValueAt2;
                        String str53 = str8;
                        String str54 = str7;
                        StringBuilder sb13 = sb;
                        String str55 = str44;
                        if (printWakeLock(sb13, value3.getWakeTime(2), j43, Context.WINDOW_SERVICE, i2, printWakeLock(sb13, value3.getWakeTime(0), j43, "partial", i2, printWakeLock(sb, value3.getWakeTime(1), j43, "full", i2, ": "))).equals(str55)) {
                            sb3 = sb13;
                            str19 = str49;
                            i7 = 1;
                        } else {
                            sb3 = sb13;
                            str19 = str49;
                            sb3.append(str19);
                            printWriter.println(sb3.toString());
                            i22++;
                            i7 = 1;
                            z2 = true;
                        }
                        long jComputeWakeLock3 = j46 + computeWakeLock(value3.getWakeTime(i7), j43, i16);
                        jComputeWakeLock2 += computeWakeLock(value3.getWakeTime(0), j43, i16);
                        long jComputeWakeLock4 = j47 + computeWakeLock(value3.getWakeTime(2), j43, i16);
                        str44 = str55;
                        str49 = str19;
                        str7 = str54;
                        it2 = it3;
                        str9 = str;
                        sb = sb3;
                        j44 = jComputeWakeLock3;
                        j45 = jComputeWakeLock4;
                        uidValueAt2 = uid2;
                        str8 = str53;
                    }
                    uid = uidValueAt2;
                    str12 = str8;
                    str16 = str7;
                    long j48 = j45;
                    str17 = str49;
                    long j49 = j44;
                    sb2 = sb;
                    str14 = str44;
                    j11 = j43;
                    if (i22 <= 1 || (j49 == 0 && jComputeWakeLock2 == 0 && j48 == 0)) {
                        str15 = str;
                    } else {
                        sb2.setLength(0);
                        str15 = str;
                        sb2.append(str15);
                        sb2.append("    TOTAL wake: ");
                        if (j49 != 0) {
                            formatTimeMs(sb2, j49);
                            sb2.append("full");
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (jComputeWakeLock2 != 0) {
                            if (z4) {
                                sb2.append(str16);
                            }
                            formatTimeMs(sb2, jComputeWakeLock2);
                            sb2.append("partial");
                            z4 = true;
                        }
                        if (j48 != 0) {
                            if (z4) {
                                sb2.append(str16);
                            }
                            formatTimeMs(sb2, j48);
                            sb2.append(Context.WINDOW_SERVICE);
                        }
                        sb2.append(str17);
                        printWriter.println(sb2.toString());
                    }
                } else {
                    str11 = str48;
                    uid = uidValueAt2;
                    str12 = str8;
                    sb2 = sb;
                    str13 = str10;
                    j10 = j9;
                    str14 = str44;
                    str15 = str9;
                    str16 = str7;
                    str17 = str49;
                    j11 = j43;
                    z2 = false;
                }
                Map<Integer, ? extends Uid.Sensor> sensorStats = uid.getSensorStats();
                if (sensorStats.size() > 0) {
                    for (Map.Entry<Integer, ? extends Uid.Sensor> entry2 : sensorStats.entrySet()) {
                        Uid.Sensor value4 = entry2.getValue();
                        entry2.getKey().intValue();
                        sb2.setLength(0);
                        sb2.append(str15);
                        sb2.append("    Sensor ");
                        int handle = value4.getHandle();
                        if (handle == -10000) {
                            sb2.append("GPS");
                        } else {
                            sb2.append(handle);
                        }
                        sb2.append(str14);
                        Timer sensorTime = value4.getSensorTime();
                        if (sensorTime != null) {
                            long totalTimeLocked3 = (sensorTime.getTotalTimeLocked(j11, i16) + 500) / 1000;
                            int countLocked = sensorTime.getCountLocked(i16);
                            if (totalTimeLocked3 != 0) {
                                formatTimeMs(sb2, totalTimeLocked3);
                                sb2.append("realtime (");
                                sb2.append(countLocked);
                                sb2.append(" times)");
                            } else {
                                sb2.append("(not used)");
                            }
                        } else {
                            sb2.append("(not used)");
                        }
                        printWriter.println(sb2.toString());
                        z2 = true;
                    }
                }
                Timer vibratorOnTimer = uid.getVibratorOnTimer();
                if (vibratorOnTimer != null) {
                    long totalTimeLocked4 = (vibratorOnTimer.getTotalTimeLocked(j11, i16) + 500) / 1000;
                    int countLocked2 = vibratorOnTimer.getCountLocked(i16);
                    if (totalTimeLocked4 != 0) {
                        sb2.setLength(0);
                        sb2.append(str15);
                        sb2.append("    Vibrator: ");
                        formatTimeMs(sb2, totalTimeLocked4);
                        sb2.append("realtime (");
                        sb2.append(countLocked2);
                        sb2.append(" times)");
                        printWriter.println(sb2.toString());
                        z2 = true;
                    }
                }
                Timer foregroundActivityTimer = uid.getForegroundActivityTimer();
                if (foregroundActivityTimer != null) {
                    long totalTimeLocked5 = (foregroundActivityTimer.getTotalTimeLocked(j11, i16) + 500) / 1000;
                    int countLocked3 = foregroundActivityTimer.getCountLocked(i16);
                    if (totalTimeLocked5 != 0) {
                        sb2.setLength(0);
                        sb2.append(str15);
                        sb2.append("    Foreground activities: ");
                        formatTimeMs(sb2, totalTimeLocked5);
                        sb2.append("realtime (");
                        sb2.append(countLocked3);
                        sb2.append(" times)");
                        printWriter.println(sb2.toString());
                        z2 = true;
                    }
                }
                Map<String, ? extends Uid.Proc> processStats = uid.getProcessStats();
                if (processStats.size() > 0) {
                    Iterator<Map.Entry<String, ? extends Uid.Proc>> it4 = processStats.entrySet().iterator();
                    while (it4.hasNext()) {
                        Map.Entry<String, ? extends Uid.Proc> next3 = it4.next();
                        Uid.Proc value5 = next3.getValue();
                        long userTime = value5.getUserTime(i16);
                        long systemTime = value5.getSystemTime(i16);
                        String str56 = str14;
                        String str57 = str17;
                        long foregroundTime = value5.getForegroundTime(i16);
                        Iterator<Map.Entry<String, ? extends Uid.Proc>> it5 = it4;
                        int starts = value5.getStarts(i16);
                        int iCountExcessivePowers = i16 == 0 ? value5.countExcessivePowers() : 0;
                        if (userTime != 0 || systemTime != 0 || foregroundTime != 0 || starts != 0 || iCountExcessivePowers != 0) {
                            sb2.setLength(0);
                            sb2.append(str15);
                            sb2.append("    Proc ");
                            sb2.append(next3.getKey());
                            sb2.append(":\n");
                            sb2.append(str15);
                            sb2.append("      CPU: ");
                            formatTime(sb2, userTime);
                            sb2.append("usr + ");
                            formatTime(sb2, systemTime);
                            sb2.append("krn ; ");
                            formatTime(sb2, foregroundTime);
                            sb2.append(FOREGROUND_DATA);
                            if (starts != 0) {
                                sb2.append("\n");
                                sb2.append(str15);
                                sb2.append("      ");
                                sb2.append(starts);
                                sb2.append(" proc starts");
                            }
                            printWriter.println(sb2.toString());
                            for (int i23 = 0; i23 < iCountExcessivePowers; i23++) {
                                Uid.Proc.ExcessivePower excessivePower = value5.getExcessivePower(i23);
                                if (excessivePower != null) {
                                    printWriter.print(str);
                                    printWriter.print("      * Killed for ");
                                    int i24 = excessivePower.type;
                                    if (i24 == 1) {
                                        printWriter.print("wake lock");
                                    } else if (i24 == 2) {
                                        printWriter.print("cpu");
                                    } else {
                                        printWriter.print("unknown");
                                    }
                                    printWriter.print(" use: ");
                                    TimeUtils.formatDuration(excessivePower.usedTime, printWriter);
                                    printWriter.print(" over ");
                                    TimeUtils.formatDuration(excessivePower.overTime, printWriter);
                                    if (excessivePower.overTime != 0) {
                                        printWriter.print(" (");
                                        printWriter.print((excessivePower.usedTime * 100) / excessivePower.overTime);
                                        printWriter.println("%)");
                                    }
                                }
                            }
                            z2 = true;
                        }
                        str14 = str56;
                        it4 = it5;
                        str17 = str57;
                        j11 = j11;
                    }
                }
                str44 = str14;
                str18 = str17;
                j12 = j11;
                boolean z11 = true;
                boolean z12 = z2;
                Map<String, ? extends Uid.Pkg> packageStats = uid.getPackageStats();
                if (packageStats.size() > 0) {
                    for (Map.Entry<String, ? extends Uid.Pkg> entry3 : packageStats.entrySet()) {
                        printWriter.print(str);
                        printWriter.print("    Apk ");
                        printWriter.print(entry3.getKey());
                        printWriter.println(":");
                        Uid.Pkg value6 = entry3.getValue();
                        int wakeups = value6.getWakeups(i16);
                        if (wakeups != 0) {
                            printWriter.print(str);
                            printWriter.print("      ");
                            printWriter.print(wakeups);
                            printWriter.println(" wakeup alarms");
                            z3 = z11;
                        } else {
                            z3 = false;
                        }
                        Map<String, ? extends Uid.Pkg.Serv> serviceStats = value6.getServiceStats();
                        if (serviceStats.size() > 0) {
                            boolean z13 = z3;
                            for (Map.Entry<String, ? extends Uid.Pkg.Serv> entry4 : serviceStats.entrySet()) {
                                Uid.Pkg.Serv value7 = entry4.getValue();
                                long j50 = j17;
                                long startTime = value7.getStartTime(j50, i16);
                                int starts2 = value7.getStarts(i16);
                                int launches = value7.getLaunches(i16);
                                if (startTime != 0 || starts2 != 0 || launches != 0) {
                                    sb2.setLength(0);
                                    sb2.append(str15);
                                    sb2.append("      Service ");
                                    sb2.append(entry4.getKey());
                                    sb2.append(":\n");
                                    sb2.append(str15);
                                    sb2.append("        Created for: ");
                                    formatTimeMs(sb2, startTime / 1000);
                                    sb2.append("uptime\n");
                                    sb2.append(str15);
                                    sb2.append("        Starts: ");
                                    sb2.append(starts2);
                                    sb2.append(", launches: ");
                                    sb2.append(launches);
                                    printWriter.println(sb2.toString());
                                    z13 = true;
                                }
                                j17 = j50;
                            }
                            j14 = j17;
                            z3 = z13;
                        } else {
                            j14 = j17;
                        }
                        if (!z3) {
                            printWriter.print(str);
                            printWriter.println("      (nothing executed)");
                        }
                        j17 = j14;
                        z11 = true;
                        z12 = true;
                    }
                }
                j13 = j17;
                if (!z12) {
                    printWriter.print(str);
                    printWriter.println("    (nothing executed)");
                }
            } else {
                str11 = str48;
                sparseArray = sparseArray3;
                i5 = i19;
                i6 = i20;
                str18 = str42;
                str13 = str47;
                sb2 = sb11;
                str16 = str45;
                j13 = j17;
                j12 = j39;
                j10 = j8;
                str12 = str46;
            }
            i20 = i6 + 1;
            j17 = j13;
            str45 = str16;
            i19 = i5;
            str47 = str13;
            str46 = str12;
            str48 = str11;
            str42 = str18;
            j8 = j10;
            j39 = j12;
            batteryStats = this;
            sb11 = sb2;
        }
    }

    public abstract void finishIteratingHistoryLocked();

    public abstract void finishIteratingOldHistoryLocked();

    public abstract long getBatteryRealtime(long j2);

    public abstract long getBatteryUptime(long j2);

    public abstract long getBluetoothOnTime(long j2, int i2);

    public abstract int getCpuSpeedSteps();

    public abstract int getDischargeAmountScreenOff();

    public abstract int getDischargeAmountScreenOffSinceCharge();

    public abstract int getDischargeAmountScreenOn();

    public abstract int getDischargeAmountScreenOnSinceCharge();

    public abstract int getDischargeCurrentLevel();

    public abstract int getDischargeStartLevel();

    public abstract long getGlobalWifiRunningTime(long j2, int i2);

    public abstract int getHighDischargeAmountSinceCharge();

    public abstract long getHistoryBaseTime();

    public abstract int getInputEventCount(int i2);

    public abstract boolean getIsOnBattery();

    public abstract Map<String, ? extends Timer> getKernelWakelockStats();

    public abstract int getLowDischargeAmountSinceCharge();

    public abstract long getNetworkActivityCount(int i2, int i3);

    public abstract boolean getNextHistoryLocked(HistoryItem historyItem);

    public abstract boolean getNextOldHistoryLocked(HistoryItem historyItem);

    public abstract int getPhoneDataConnectionCount(int i2, int i3);

    public abstract long getPhoneDataConnectionTime(int i2, long j2, int i3);

    public abstract long getPhoneOnTime(long j2, int i2);

    public abstract long getPhoneSignalScanningTime(long j2, int i2);

    public abstract int getPhoneSignalStrengthCount(int i2, int i3);

    public abstract long getPhoneSignalStrengthTime(int i2, long j2, int i3);

    public abstract long getRadioDataUptime();

    public long getRadioDataUptimeMs() {
        return getRadioDataUptime() / 1000;
    }

    public abstract long getScreenBrightnessTime(int i2, long j2, int i3);

    public abstract long getScreenOnTime(long j2, int i2);

    public abstract int getStartCount();

    public abstract SparseArray<? extends Uid> getUidStats();

    public abstract long getWifiOnTime(long j2, int i2);

    public void prepareForDumpLocked() {
    }

    public abstract boolean startIteratingHistoryLocked();

    public abstract boolean startIteratingOldHistoryLocked();

    public static final class HistoryItem implements Parcelable {
        public static final byte CMD_NULL = 0;
        public static final byte CMD_OVERFLOW = 3;
        public static final byte CMD_START = 2;
        public static final byte CMD_UPDATE = 1;
        public static final boolean DEBUG = false;
        public static final int DELTA_BATTERY_LEVEL_FLAG = 1048576;
        public static final int DELTA_CMD_MASK = 3;
        public static final int DELTA_CMD_SHIFT = 18;
        public static final int DELTA_STATE_FLAG = 2097152;
        public static final int DELTA_STATE_MASK = -4194304;
        public static final int DELTA_TIME_ABS = 262141;
        public static final int DELTA_TIME_INT = 262142;
        public static final int DELTA_TIME_LONG = 262143;
        public static final int DELTA_TIME_MASK = 262143;
        public static final int MOST_INTERESTING_STATES = 270270464;
        public static final int STATE_AUDIO_ON_FLAG = 4194304;
        public static final int STATE_BATTERY_PLUGGED_FLAG = 524288;
        public static final int STATE_BLUETOOTH_ON_FLAG = 65536;
        public static final int STATE_BRIGHTNESS_MASK = 15;
        public static final int STATE_BRIGHTNESS_SHIFT = 0;
        public static final int STATE_DATA_CONNECTION_MASK = 61440;
        public static final int STATE_DATA_CONNECTION_SHIFT = 12;
        public static final int STATE_GPS_ON_FLAG = 268435456;
        public static final int STATE_PHONE_IN_CALL_FLAG = 262144;
        public static final int STATE_PHONE_SCANNING_FLAG = 134217728;
        public static final int STATE_PHONE_STATE_MASK = 3840;
        public static final int STATE_PHONE_STATE_SHIFT = 8;
        public static final int STATE_SCREEN_ON_FLAG = 1048576;
        public static final int STATE_SENSOR_ON_FLAG = 536870912;
        public static final int STATE_SIGNAL_STRENGTH_MASK = 240;
        public static final int STATE_SIGNAL_STRENGTH_SHIFT = 4;
        public static final int STATE_VIDEO_ON_FLAG = 2097152;
        public static final int STATE_WAKE_LOCK_FLAG = 1073741824;
        public static final int STATE_WIFI_FULL_LOCK_FLAG = 33554432;
        public static final int STATE_WIFI_MULTICAST_ON_FLAG = 8388608;
        public static final int STATE_WIFI_ON_FLAG = 131072;
        public static final int STATE_WIFI_RUNNING_FLAG = 67108864;
        public static final int STATE_WIFI_SCAN_FLAG = 16777216;
        public static final String TAG = "HistoryItem";
        public byte batteryHealth;
        public byte batteryLevel;
        public byte batteryPlugType;
        public byte batteryStatus;
        public char batteryTemperature;
        public char batteryVoltage;
        public byte cmd = 0;
        public HistoryItem next;
        public int states;
        public long time;

        public HistoryItem() {
        }

        private int buildBatteryLevelInt() {
            return ((this.batteryLevel << 24) & (-16777216)) | ((this.batteryTemperature << 14) & 16760832) | (this.batteryVoltage & 16383);
        }

        private int buildStateInt() {
            return ((this.batteryStatus << DhcpPacket.DHCP_BROADCAST_ADDRESS) & (-268435456)) | ((this.batteryHealth << 24) & 251658240) | ((this.batteryPlugType << 22) & 12582912) | (this.states & 4194303);
        }

        private void readFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            this.cmd = (byte) (i2 & 255);
            this.batteryLevel = (byte) ((i2 >> 8) & 255);
            this.batteryStatus = (byte) ((i2 >> 16) & 15);
            this.batteryHealth = (byte) ((i2 >> 20) & 15);
            this.batteryPlugType = (byte) ((i2 >> 24) & 15);
            int i3 = parcel.readInt();
            this.batteryTemperature = (char) (i3 & 65535);
            this.batteryVoltage = (char) ((i3 >> 16) & 65535);
            this.states = parcel.readInt();
        }

        public void clear() {
            this.time = 0L;
            this.cmd = (byte) 0;
            this.batteryLevel = (byte) 0;
            this.batteryStatus = (byte) 0;
            this.batteryHealth = (byte) 0;
            this.batteryPlugType = (byte) 0;
            this.batteryTemperature = (char) 0;
            this.batteryVoltage = (char) 0;
            this.states = 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readDelta(Parcel parcel) {
            int i2 = parcel.readInt();
            int i3 = 262143 & i2;
            this.cmd = (byte) ((i2 >> 18) & 3);
            if (i3 < 262141) {
                this.time += (long) i3;
            } else if (i3 == 262141) {
                this.time = parcel.readLong();
                readFromParcel(parcel);
                return;
            } else if (i3 == 262142) {
                this.time += (long) parcel.readInt();
            } else {
                this.time += parcel.readLong();
            }
            if ((1048576 & i2) != 0) {
                int i4 = parcel.readInt();
                this.batteryLevel = (byte) ((i4 >> 24) & 255);
                this.batteryTemperature = (char) ((i4 >> 14) & Process.MEDIA_RW_GID);
                this.batteryVoltage = (char) (i4 & 16383);
            }
            if ((2097152 & i2) == 0) {
                this.states = (i2 & DELTA_STATE_MASK) | (this.states & 4194303);
                return;
            }
            int i5 = parcel.readInt();
            this.states = (i2 & DELTA_STATE_MASK) | (i5 & 4194303);
            this.batteryStatus = (byte) ((i5 >> 28) & 15);
            this.batteryHealth = (byte) ((i5 >> 24) & 15);
            this.batteryPlugType = (byte) ((i5 >> 22) & 3);
        }

        public boolean same(HistoryItem historyItem) {
            return this.batteryLevel == historyItem.batteryLevel && this.batteryStatus == historyItem.batteryStatus && this.batteryHealth == historyItem.batteryHealth && this.batteryPlugType == historyItem.batteryPlugType && this.batteryTemperature == historyItem.batteryTemperature && this.batteryVoltage == historyItem.batteryVoltage && this.states == historyItem.states;
        }

        public void setTo(HistoryItem historyItem) {
            this.time = historyItem.time;
            this.cmd = historyItem.cmd;
            this.batteryLevel = historyItem.batteryLevel;
            this.batteryStatus = historyItem.batteryStatus;
            this.batteryHealth = historyItem.batteryHealth;
            this.batteryPlugType = historyItem.batteryPlugType;
            this.batteryTemperature = historyItem.batteryTemperature;
            this.batteryVoltage = historyItem.batteryVoltage;
            this.states = historyItem.states;
        }

        public void writeDelta(Parcel parcel, HistoryItem historyItem) {
            int i2;
            if (historyItem == null || historyItem.cmd != 1) {
                parcel.writeInt(DELTA_TIME_ABS);
                writeToParcel(parcel, 0);
                return;
            }
            long j2 = this.time - historyItem.time;
            int iBuildBatteryLevelInt = historyItem.buildBatteryLevelInt();
            int iBuildStateInt = historyItem.buildStateInt();
            if (j2 < 0 || j2 > 2147483647L) {
                i2 = 262143;
            } else {
                i2 = j2 >= 262141 ? 262142 : (int) j2;
            }
            int i3 = (this.cmd << 18) | i2 | (this.states & DELTA_STATE_MASK);
            int iBuildBatteryLevelInt2 = buildBatteryLevelInt();
            boolean z2 = iBuildBatteryLevelInt2 != iBuildBatteryLevelInt;
            if (z2) {
                i3 |= 1048576;
            }
            int iBuildStateInt2 = buildStateInt();
            boolean z3 = iBuildStateInt2 != iBuildStateInt;
            if (z3) {
                i3 |= 2097152;
            }
            parcel.writeInt(i3);
            if (i2 >= 262142) {
                if (i2 == 262142) {
                    parcel.writeInt((int) j2);
                } else {
                    parcel.writeLong(j2);
                }
            }
            if (z2) {
                parcel.writeInt(iBuildBatteryLevelInt2);
            }
            if (z3) {
                parcel.writeInt(iBuildStateInt2);
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.time);
            parcel.writeInt((this.cmd & 255) | ((this.batteryLevel << 8) & 65280) | ((this.batteryStatus << 16) & SurfaceControl.FX_SURFACE_MASK) | ((this.batteryHealth << 20) & 15728640) | ((this.batteryPlugType << 24) & 251658240));
            parcel.writeInt((this.batteryTemperature & 65535) | ((this.batteryVoltage << 16) & (-65536)));
            parcel.writeInt(this.states);
        }

        public HistoryItem(long j2, Parcel parcel) {
            this.time = j2;
            readFromParcel(parcel);
        }

        public void setTo(long j2, byte b2, HistoryItem historyItem) {
            this.time = j2;
            this.cmd = b2;
            this.batteryLevel = historyItem.batteryLevel;
            this.batteryStatus = historyItem.batteryStatus;
            this.batteryHealth = historyItem.batteryHealth;
            this.batteryPlugType = historyItem.batteryPlugType;
            this.batteryTemperature = historyItem.batteryTemperature;
            this.batteryVoltage = historyItem.batteryVoltage;
            this.states = historyItem.states;
        }
    }

    public static final class BitDescription {
        public final int mask;
        public final String name;
        public final int shift;
        public final String[] values;

        public BitDescription(int i2, String str) {
            this.mask = i2;
            this.shift = -1;
            this.name = str;
            this.values = null;
        }

        public BitDescription(int i2, int i3, String str, String[] strArr) {
            this.mask = i2;
            this.shift = i3;
            this.name = str;
            this.values = strArr;
        }
    }

    public void dumpCheckinLocked(PrintWriter printWriter, List<ApplicationInfo> list, boolean z2, boolean z3) {
        prepareForDumpLocked();
        long historyBaseTime = getHistoryBaseTime() + SystemClock.elapsedRealtime();
        if (z3) {
            HistoryItem historyItem = new HistoryItem();
            if (startIteratingHistoryLocked()) {
                HistoryPrinter historyPrinter = new HistoryPrinter();
                while (getNextHistoryLocked(historyItem)) {
                    printWriter.print(7);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(0);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(HISTORY_DATA);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    historyPrinter.printNextItemCheckin(printWriter, historyItem, historyBaseTime);
                    printWriter.println();
                }
                finishIteratingHistoryLocked();
            }
        }
        if (list != null) {
            SparseArray sparseArray = new SparseArray();
            for (int i2 = 0; i2 < list.size(); i2++) {
                ApplicationInfo applicationInfo = list.get(i2);
                ArrayList arrayList = (ArrayList) sparseArray.get(applicationInfo.uid);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    sparseArray.put(applicationInfo.uid, arrayList);
                }
                arrayList.add(applicationInfo.packageName);
            }
            SparseArray<? extends Uid> uidStats = getUidStats();
            int size = uidStats.size();
            String[] strArr = new String[2];
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt = uidStats.keyAt(i3);
                ArrayList arrayList2 = (ArrayList) sparseArray.get(iKeyAt);
                if (arrayList2 != null) {
                    for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                        strArr[0] = Integer.toString(iKeyAt);
                        strArr[1] = (String) arrayList2.get(i4);
                        dumpLine(printWriter, 0, "i", "uid", strArr);
                    }
                }
            }
        }
        if (z2) {
            dumpCheckinLocked(printWriter, 3, -1);
        } else {
            dumpCheckinLocked(printWriter, 0, -1);
            dumpCheckinLocked(printWriter, 3, -1);
        }
    }

    public void dumpLocked(PrintWriter printWriter, boolean z2, int i2) {
        prepareForDumpLocked();
        long historyBaseTime = getHistoryBaseTime() + SystemClock.elapsedRealtime();
        HistoryItem historyItem = new HistoryItem();
        if (startIteratingHistoryLocked()) {
            printWriter.println("Battery History:");
            HistoryPrinter historyPrinter = new HistoryPrinter();
            while (getNextHistoryLocked(historyItem)) {
                historyPrinter.printNextItem(printWriter, historyItem, historyBaseTime);
            }
            finishIteratingHistoryLocked();
            printWriter.println(ProxyProperties.LOCAL_EXCL_LIST);
        }
        if (startIteratingOldHistoryLocked()) {
            printWriter.println("Old battery History:");
            HistoryPrinter historyPrinter2 = new HistoryPrinter();
            while (getNextOldHistoryLocked(historyItem)) {
                historyPrinter2.printNextItem(printWriter, historyItem, historyBaseTime);
            }
            finishIteratingOldHistoryLocked();
            printWriter.println(ProxyProperties.LOCAL_EXCL_LIST);
        }
        SparseArray<? extends Uid> uidStats = getUidStats();
        int size = uidStats.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i3 = 0;
        boolean z3 = false;
        while (i3 < size) {
            SparseArray<? extends Uid.Pid> pidStats = uidStats.valueAt(i3).getPidStats();
            if (pidStats != null) {
                int i4 = 0;
                while (i4 < pidStats.size()) {
                    Uid.Pid pidValueAt = pidStats.valueAt(i4);
                    if (!z3) {
                        printWriter.println("Per-PID Stats:");
                        z3 = true;
                    }
                    long j2 = pidValueAt.mWakeSum;
                    int i5 = i3;
                    long j3 = pidValueAt.mWakeStart;
                    long j4 = 0;
                    if (j3 != 0) {
                        j4 = jElapsedRealtime - j3;
                    }
                    printWriter.print("  PID ");
                    printWriter.print(pidStats.keyAt(i4));
                    printWriter.print(" wake time: ");
                    TimeUtils.formatDuration(j2 + j4, printWriter);
                    printWriter.println(ProxyProperties.LOCAL_EXCL_LIST);
                    i4++;
                    i3 = i5;
                }
            }
            i3++;
        }
        if (z3) {
            printWriter.println(ProxyProperties.LOCAL_EXCL_LIST);
        }
        if (!z2) {
            printWriter.println("Statistics since last charge:");
            printWriter.println("  System starts: " + getStartCount() + ", currently on battery: " + getIsOnBattery());
            dumpLocked(printWriter, ProxyProperties.LOCAL_EXCL_LIST, 0, i2);
            printWriter.println(ProxyProperties.LOCAL_EXCL_LIST);
        }
        printWriter.println("Statistics since last unplugged:");
        dumpLocked(printWriter, ProxyProperties.LOCAL_EXCL_LIST, 3, i2);
    }
}
