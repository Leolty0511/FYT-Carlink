.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Counter;
    }
.end annotation


# static fields
.field private static final AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field public static final BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "27"

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EHRPD:I = 0xe

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSPAP:I = 0xf

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field public static final DATA_CONNECTION_LTE:I = 0xd

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x10

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final FOREGROUND_SERVICE:I = 0x16

.field private static final FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_TRACKED_SCREEN_STATE:I = 0x4

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field private static final RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc

.field private static final sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final UID_TIMES_TYPE_ALL:Ljava/lang/String;

.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    const-string/jumbo v1, "u"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "l"

    .line 7
    .line 8
    .line 9
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "bright"

    .line 16
    .line 17
    const-string v1, "dark"

    .line 18
    .line 19
    const-string v2, "dim"

    .line 20
    .line 21
    const-string/jumbo v3, "medium"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v4, "light"

    .line 25
    .line 26
    .line 27
    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    sput-object v10, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "0"

    .line 34
    .line 35
    const-string v1, "1"

    .line 36
    .line 37
    const-string v2, "2"

    .line 38
    .line 39
    const-string v3, "3"

    .line 40
    .line 41
    const-string v12, "4"

    .line 42
    .line 43
    filled-new-array {v0, v1, v2, v3, v12}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    sput-object v11, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 48
    .line 49
    const-string/jumbo v13, "none"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v14, "gprs"

    .line 53
    .line 54
    .line 55
    const-string v15, "edge"

    .line 56
    .line 57
    const-string/jumbo v16, "umts"

    .line 58
    .line 59
    .line 60
    const-string v17, "cdma"

    .line 61
    .line 62
    const-string v18, "evdo_0"

    .line 63
    .line 64
    const-string v19, "evdo_A"

    .line 65
    .line 66
    const-string v20, "1xrtt"

    .line 67
    .line 68
    const-string/jumbo v21, "hsdpa"

    .line 69
    .line 70
    .line 71
    const-string/jumbo v22, "hsupa"

    .line 72
    .line 73
    .line 74
    const-string/jumbo v23, "hspa"

    .line 75
    .line 76
    .line 77
    const-string/jumbo v24, "iden"

    .line 78
    .line 79
    .line 80
    const-string v25, "evdo_b"

    .line 81
    .line 82
    const-string/jumbo v26, "lte"

    .line 83
    .line 84
    .line 85
    const-string v27, "ehrpd"

    .line 86
    .line 87
    const-string/jumbo v28, "hspap"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v29, "other"

    .line 91
    .line 92
    .line 93
    filled-new-array/range {v13 .. v29}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v36

    .line 97
    sput-object v36, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 98
    .line 99
    const-string/jumbo v13, "invalid"

    .line 100
    .line 101
    .line 102
    const-string v14, "disconn"

    .line 103
    .line 104
    const-string v15, "disabled"

    .line 105
    .line 106
    const-string/jumbo v16, "inactive"

    .line 107
    .line 108
    .line 109
    const-string/jumbo v17, "scanning"

    .line 110
    .line 111
    .line 112
    const-string v18, "authenticating"

    .line 113
    .line 114
    const-string v19, "associating"

    .line 115
    .line 116
    const-string v20, "associated"

    .line 117
    .line 118
    const-string v21, "4-way-handshake"

    .line 119
    .line 120
    const-string/jumbo v22, "group-handshake"

    .line 121
    .line 122
    .line 123
    const-string v23, "completed"

    .line 124
    .line 125
    const-string v24, "dormant"

    .line 126
    .line 127
    const-string/jumbo v25, "uninit"

    .line 128
    .line 129
    .line 130
    filled-new-array/range {v13 .. v25}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    sput-object v13, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 135
    .line 136
    const-string/jumbo v14, "inv"

    .line 137
    .line 138
    .line 139
    const-string v15, "dsc"

    .line 140
    .line 141
    const-string v16, "dis"

    .line 142
    .line 143
    const-string/jumbo v17, "inact"

    .line 144
    .line 145
    .line 146
    const-string/jumbo v18, "scan"

    .line 147
    .line 148
    .line 149
    const-string v19, "auth"

    .line 150
    .line 151
    const-string v20, "ascing"

    .line 152
    .line 153
    const-string v21, "asced"

    .line 154
    .line 155
    const-string v22, "4-way"

    .line 156
    .line 157
    const-string/jumbo v23, "group"

    .line 158
    .line 159
    .line 160
    const-string v24, "compl"

    .line 161
    .line 162
    const-string v25, "dorm"

    .line 163
    .line 164
    const-string/jumbo v26, "uninit"

    .line 165
    .line 166
    .line 167
    filled-new-array/range {v14 .. v26}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    sput-object v14, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 172
    .line 173
    const/16 v15, 0x12

    .line 174
    .line 175
    new-array v9, v15, [Landroid/os/BatteryStats$BitDescription;

    .line 176
    .line 177
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 178
    .line 179
    const-string/jumbo v6, "running"

    .line 180
    .line 181
    .line 182
    const-string/jumbo v7, "r"

    .line 183
    .line 184
    .line 185
    const/high16 v8, -0x80000000

    .line 186
    .line 187
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const/4 v8, 0x0

    .line 191
    aput-object v5, v9, v8

    .line 192
    .line 193
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 194
    .line 195
    const-string/jumbo v6, "wake_lock"

    .line 196
    .line 197
    .line 198
    const-string/jumbo v7, "w"

    .line 199
    .line 200
    .line 201
    const/high16 v8, 0x40000000    # 2.0f

    .line 202
    .line 203
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/4 v8, 0x1

    .line 207
    aput-object v5, v9, v8

    .line 208
    .line 209
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 210
    .line 211
    const-string/jumbo v6, "sensor"

    .line 212
    .line 213
    .line 214
    const-string/jumbo v7, "s"

    .line 215
    .line 216
    .line 217
    const/high16 v8, 0x800000

    .line 218
    .line 219
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/16 v18, 0x2

    .line 223
    .line 224
    aput-object v5, v9, v18

    .line 225
    .line 226
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 227
    .line 228
    const-string/jumbo v6, "gps"

    .line 229
    .line 230
    .line 231
    const-string v7, "g"

    .line 232
    .line 233
    const/high16 v8, 0x20000000

    .line 234
    .line 235
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const/16 v19, 0x3

    .line 239
    .line 240
    aput-object v5, v9, v19

    .line 241
    .line 242
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 243
    .line 244
    const-string/jumbo v6, "wifi_full_lock"

    .line 245
    .line 246
    .line 247
    const-string v7, "Wl"

    .line 248
    .line 249
    const/high16 v8, 0x10000000

    .line 250
    .line 251
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const/16 v20, 0x4

    .line 255
    .line 256
    aput-object v5, v9, v20

    .line 257
    .line 258
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 259
    .line 260
    const-string/jumbo v6, "wifi_scan"

    .line 261
    .line 262
    .line 263
    const-string v7, "Ws"

    .line 264
    .line 265
    const/high16 v8, 0x8000000

    .line 266
    .line 267
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const/16 v21, 0x5

    .line 271
    .line 272
    aput-object v5, v9, v21

    .line 273
    .line 274
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 275
    .line 276
    const-string/jumbo v6, "wifi_multicast"

    .line 277
    .line 278
    .line 279
    const-string v7, "Wm"

    .line 280
    .line 281
    const/high16 v8, 0x10000

    .line 282
    .line 283
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const/16 v22, 0x6

    .line 287
    .line 288
    aput-object v5, v9, v22

    .line 289
    .line 290
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 291
    .line 292
    const-string/jumbo v6, "wifi_radio"

    .line 293
    .line 294
    .line 295
    const-string v7, "Wr"

    .line 296
    .line 297
    const/high16 v8, 0x4000000

    .line 298
    .line 299
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const/16 v23, 0x7

    .line 303
    .line 304
    aput-object v5, v9, v23

    .line 305
    .line 306
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 307
    .line 308
    const-string/jumbo v6, "mobile_radio"

    .line 309
    .line 310
    .line 311
    const-string v7, "Pr"

    .line 312
    .line 313
    const/high16 v8, 0x2000000

    .line 314
    .line 315
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const/16 v24, 0x8

    .line 319
    .line 320
    aput-object v5, v9, v24

    .line 321
    .line 322
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 323
    .line 324
    const-string/jumbo v6, "phone_scanning"

    .line 325
    .line 326
    .line 327
    const-string v7, "Psc"

    .line 328
    .line 329
    const/high16 v8, 0x200000

    .line 330
    .line 331
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/16 v25, 0x9

    .line 335
    .line 336
    aput-object v5, v9, v25

    .line 337
    .line 338
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 339
    .line 340
    const-string v6, "audio"

    .line 341
    .line 342
    const-string v7, "a"

    .line 343
    .line 344
    const/high16 v8, 0x400000

    .line 345
    .line 346
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const/16 v8, 0xa

    .line 350
    .line 351
    aput-object v5, v9, v8

    .line 352
    .line 353
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 354
    .line 355
    const-string/jumbo v6, "screen"

    .line 356
    .line 357
    .line 358
    const-string v7, "S"

    .line 359
    .line 360
    const/high16 v8, 0x100000

    .line 361
    .line 362
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const/16 v37, 0xb

    .line 366
    .line 367
    aput-object v5, v9, v37

    .line 368
    .line 369
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 370
    .line 371
    const-string/jumbo v6, "plugged"

    .line 372
    .line 373
    .line 374
    const-string v7, "BP"

    .line 375
    .line 376
    const/high16 v8, 0x80000

    .line 377
    .line 378
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const/16 v38, 0xc

    .line 382
    .line 383
    aput-object v5, v9, v38

    .line 384
    .line 385
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 386
    .line 387
    const-string/jumbo v6, "screen_doze"

    .line 388
    .line 389
    .line 390
    const-string v7, "Sd"

    .line 391
    .line 392
    const/high16 v8, 0x40000

    .line 393
    .line 394
    invoke-direct {v5, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const/16 v8, 0xd

    .line 398
    .line 399
    aput-object v5, v9, v8

    .line 400
    .line 401
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 402
    .line 403
    const/16 v31, 0x3e00

    .line 404
    .line 405
    const/16 v32, 0x9

    .line 406
    .line 407
    const-string v33, "data_conn"

    .line 408
    .line 409
    const-string v34, "Pcn"

    .line 410
    .line 411
    move-object/from16 v30, v5

    .line 412
    .line 413
    move-object/from16 v35, v36

    .line 414
    .line 415
    invoke-direct/range {v30 .. v36}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const/16 v6, 0xe

    .line 419
    .line 420
    aput-object v5, v9, v6

    .line 421
    .line 422
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 423
    .line 424
    const/16 v28, 0x1c0

    .line 425
    .line 426
    const/16 v29, 0x6

    .line 427
    .line 428
    const-string/jumbo v30, "phone_state"

    .line 429
    .line 430
    .line 431
    const-string v31, "Pst"

    .line 432
    .line 433
    const-string/jumbo v6, "in"

    .line 434
    .line 435
    .line 436
    const-string/jumbo v7, "out"

    .line 437
    .line 438
    .line 439
    const-string v8, "emergency"

    .line 440
    .line 441
    const-string/jumbo v15, "off"

    .line 442
    .line 443
    .line 444
    filled-new-array {v6, v7, v8, v15}, [Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v32

    .line 448
    const-string/jumbo v6, "out"

    .line 449
    .line 450
    .line 451
    const-string v7, "em"

    .line 452
    .line 453
    const-string/jumbo v8, "in"

    .line 454
    .line 455
    .line 456
    filled-new-array {v8, v6, v7, v15}, [Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v33

    .line 460
    move-object/from16 v27, v5

    .line 461
    .line 462
    invoke-direct/range {v27 .. v33}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const/16 v6, 0xf

    .line 466
    .line 467
    aput-object v5, v9, v6

    .line 468
    .line 469
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 470
    .line 471
    const/16 v28, 0x38

    .line 472
    .line 473
    const/16 v29, 0x3

    .line 474
    .line 475
    const-string/jumbo v30, "phone_signal_strength"

    .line 476
    .line 477
    .line 478
    const-string v31, "Pss"

    .line 479
    .line 480
    sget-object v32, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 481
    .line 482
    filled-new-array {v0, v1, v2, v3, v12}, [Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v33

    .line 486
    move-object/from16 v27, v5

    .line 487
    .line 488
    invoke-direct/range {v27 .. v33}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const/16 v6, 0x10

    .line 492
    .line 493
    aput-object v5, v9, v6

    .line 494
    .line 495
    new-instance v27, Landroid/os/BatteryStats$BitDescription;

    .line 496
    .line 497
    const/4 v6, 0x7

    .line 498
    const/4 v7, 0x0

    .line 499
    const-string v8, "brightness"

    .line 500
    .line 501
    const-string v28, "Sb"

    .line 502
    .line 503
    move-object/from16 v5, v27

    .line 504
    .line 505
    move-object/from16 v16, v9

    .line 506
    .line 507
    move-object/from16 v9, v28

    .line 508
    .line 509
    invoke-direct/range {v5 .. v11}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const/16 v5, 0x11

    .line 513
    .line 514
    aput-object v27, v16, v5

    .line 515
    .line 516
    sput-object v16, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 517
    .line 518
    const/16 v5, 0xd

    .line 519
    .line 520
    new-array v6, v5, [Landroid/os/BatteryStats$BitDescription;

    .line 521
    .line 522
    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    .line 523
    .line 524
    const-string/jumbo v8, "power_save"

    .line 525
    .line 526
    .line 527
    const-string/jumbo v9, "ps"

    .line 528
    .line 529
    .line 530
    const/high16 v10, -0x80000000

    .line 531
    .line 532
    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    const/4 v8, 0x0

    .line 536
    aput-object v7, v6, v8

    .line 537
    .line 538
    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    .line 539
    .line 540
    const-string/jumbo v9, "video"

    .line 541
    .line 542
    .line 543
    const-string/jumbo v10, "v"

    .line 544
    .line 545
    .line 546
    const/high16 v11, 0x40000000    # 2.0f

    .line 547
    .line 548
    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    const/4 v9, 0x1

    .line 552
    aput-object v7, v6, v9

    .line 553
    .line 554
    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    .line 555
    .line 556
    const-string/jumbo v10, "wifi_running"

    .line 557
    .line 558
    .line 559
    const-string v11, "Ww"

    .line 560
    .line 561
    const/high16 v5, 0x20000000

    .line 562
    .line 563
    invoke-direct {v7, v5, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    aput-object v7, v6, v18

    .line 567
    .line 568
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 569
    .line 570
    const-string/jumbo v7, "wifi"

    .line 571
    .line 572
    .line 573
    const-string v10, "W"

    .line 574
    .line 575
    const/high16 v11, 0x10000000

    .line 576
    .line 577
    invoke-direct {v5, v11, v7, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    aput-object v5, v6, v19

    .line 581
    .line 582
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 583
    .line 584
    const-string v7, "flashlight"

    .line 585
    .line 586
    const-string v10, "fl"

    .line 587
    .line 588
    const/high16 v11, 0x8000000

    .line 589
    .line 590
    invoke-direct {v5, v11, v7, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    aput-object v5, v6, v20

    .line 594
    .line 595
    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    .line 596
    .line 597
    const/high16 v27, 0x6000000

    .line 598
    .line 599
    const/16 v28, 0x19

    .line 600
    .line 601
    const-string v29, "device_idle"

    .line 602
    .line 603
    const-string v30, "di"

    .line 604
    .line 605
    const-string v7, "full"

    .line 606
    .line 607
    const-string v10, "???"

    .line 608
    .line 609
    filled-new-array {v15, v4, v7, v10}, [Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v31

    .line 613
    const-string v7, "full"

    .line 614
    .line 615
    const-string v10, "???"

    .line 616
    .line 617
    filled-new-array {v15, v4, v7, v10}, [Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v32

    .line 621
    move-object/from16 v26, v5

    .line 622
    .line 623
    invoke-direct/range {v26 .. v32}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    aput-object v5, v6, v21

    .line 627
    .line 628
    new-instance v4, Landroid/os/BatteryStats$BitDescription;

    .line 629
    .line 630
    const-string v5, "charging"

    .line 631
    .line 632
    const-string v7, "ch"

    .line 633
    .line 634
    const/high16 v10, 0x1000000

    .line 635
    .line 636
    invoke-direct {v4, v10, v5, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    aput-object v4, v6, v22

    .line 640
    .line 641
    new-instance v4, Landroid/os/BatteryStats$BitDescription;

    .line 642
    .line 643
    const-string/jumbo v5, "phone_in_call"

    .line 644
    .line 645
    .line 646
    const-string v7, "Pcl"

    .line 647
    .line 648
    const/high16 v10, 0x800000

    .line 649
    .line 650
    invoke-direct {v4, v10, v5, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    aput-object v4, v6, v23

    .line 654
    .line 655
    new-instance v4, Landroid/os/BatteryStats$BitDescription;

    .line 656
    .line 657
    const-string v5, "bluetooth"

    .line 658
    .line 659
    const-string v7, "b"

    .line 660
    .line 661
    const/high16 v10, 0x400000

    .line 662
    .line 663
    invoke-direct {v4, v10, v5, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    aput-object v4, v6, v24

    .line 667
    .line 668
    new-instance v4, Landroid/os/BatteryStats$BitDescription;

    .line 669
    .line 670
    const/16 v27, 0x70

    .line 671
    .line 672
    const/16 v28, 0x4

    .line 673
    .line 674
    const-string/jumbo v29, "wifi_signal_strength"

    .line 675
    .line 676
    .line 677
    const-string v30, "Wss"

    .line 678
    .line 679
    filled-new-array {v0, v1, v2, v3, v12}, [Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v31

    .line 683
    filled-new-array {v0, v1, v2, v3, v12}, [Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v32

    .line 687
    move-object/from16 v26, v4

    .line 688
    .line 689
    invoke-direct/range {v26 .. v32}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    aput-object v4, v6, v25

    .line 693
    .line 694
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 695
    .line 696
    const/16 v27, 0xf

    .line 697
    .line 698
    const/16 v28, 0x0

    .line 699
    .line 700
    const-string/jumbo v29, "wifi_suppl"

    .line 701
    .line 702
    .line 703
    const-string v30, "Wsp"

    .line 704
    .line 705
    move-object/from16 v26, v0

    .line 706
    .line 707
    move-object/from16 v31, v13

    .line 708
    .line 709
    move-object/from16 v32, v14

    .line 710
    .line 711
    invoke-direct/range {v26 .. v32}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    const/16 v1, 0xa

    .line 715
    .line 716
    aput-object v0, v6, v1

    .line 717
    .line 718
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 719
    .line 720
    const-string v2, "camera"

    .line 721
    .line 722
    const-string v3, "ca"

    .line 723
    .line 724
    const/high16 v4, 0x200000

    .line 725
    .line 726
    invoke-direct {v0, v4, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    aput-object v0, v6, v37

    .line 730
    .line 731
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 732
    .line 733
    const-string v2, "ble_scan"

    .line 734
    .line 735
    const-string v3, "bles"

    .line 736
    .line 737
    const/high16 v4, 0x100000

    .line 738
    .line 739
    invoke-direct {v0, v4, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    aput-object v0, v6, v38

    .line 743
    .line 744
    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 745
    .line 746
    const-string/jumbo v39, "null"

    .line 747
    .line 748
    .line 749
    const-string/jumbo v40, "proc"

    .line 750
    .line 751
    .line 752
    const-string v41, "fg"

    .line 753
    .line 754
    const-string/jumbo v42, "top"

    .line 755
    .line 756
    .line 757
    const-string/jumbo v43, "sync"

    .line 758
    .line 759
    .line 760
    const-string/jumbo v44, "wake_lock_in"

    .line 761
    .line 762
    .line 763
    const-string/jumbo v45, "job"

    .line 764
    .line 765
    .line 766
    const-string/jumbo v46, "user"

    .line 767
    .line 768
    .line 769
    const-string/jumbo v47, "userfg"

    .line 770
    .line 771
    .line 772
    const-string v48, "conn"

    .line 773
    .line 774
    const-string v49, "active"

    .line 775
    .line 776
    const-string/jumbo v50, "pkginst"

    .line 777
    .line 778
    .line 779
    const-string/jumbo v51, "pkgunin"

    .line 780
    .line 781
    .line 782
    const-string v52, "alarm"

    .line 783
    .line 784
    const-string/jumbo v53, "stats"

    .line 785
    .line 786
    .line 787
    const-string/jumbo v54, "pkginactive"

    .line 788
    .line 789
    .line 790
    const-string/jumbo v55, "pkgactive"

    .line 791
    .line 792
    .line 793
    const-string/jumbo v56, "tmpwhitelist"

    .line 794
    .line 795
    .line 796
    const-string/jumbo v57, "screenwake"

    .line 797
    .line 798
    .line 799
    const-string/jumbo v58, "wakeupap"

    .line 800
    .line 801
    .line 802
    const-string/jumbo v59, "longwake"

    .line 803
    .line 804
    .line 805
    const-string v60, "est_capacity"

    .line 806
    .line 807
    filled-new-array/range {v39 .. v60}, [Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 812
    .line 813
    const-string v39, "Enl"

    .line 814
    .line 815
    const-string v40, "Epr"

    .line 816
    .line 817
    const-string v41, "Efg"

    .line 818
    .line 819
    const-string v42, "Etp"

    .line 820
    .line 821
    const-string v43, "Esy"

    .line 822
    .line 823
    const-string v44, "Ewl"

    .line 824
    .line 825
    const-string v45, "Ejb"

    .line 826
    .line 827
    const-string v46, "Eur"

    .line 828
    .line 829
    const-string v47, "Euf"

    .line 830
    .line 831
    const-string v48, "Ecn"

    .line 832
    .line 833
    const-string v49, "Eac"

    .line 834
    .line 835
    const-string v50, "Epi"

    .line 836
    .line 837
    const-string v51, "Epu"

    .line 838
    .line 839
    const-string v52, "Eal"

    .line 840
    .line 841
    const-string v53, "Est"

    .line 842
    .line 843
    const-string v54, "Eai"

    .line 844
    .line 845
    const-string v55, "Eaa"

    .line 846
    .line 847
    const-string v56, "Etw"

    .line 848
    .line 849
    const-string v57, "Esw"

    .line 850
    .line 851
    const-string v58, "Ewa"

    .line 852
    .line 853
    const-string v59, "Elw"

    .line 854
    .line 855
    const-string v60, "Eec"

    .line 856
    .line 857
    filled-new-array/range {v39 .. v60}, [Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 862
    .line 863
    new-instance v0, Landroid/os/a;

    .line 864
    .line 865
    invoke-direct {v0, v8}, Landroid/os/a;-><init>(I)V

    .line 866
    .line 867
    .line 868
    sput-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    .line 869
    .line 870
    new-instance v2, Landroid/os/a;

    .line 871
    .line 872
    invoke-direct {v2, v9}, Landroid/os/a;-><init>(I)V

    .line 873
    .line 874
    .line 875
    sput-object v2, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    .line 876
    .line 877
    const/16 v3, 0x16

    .line 878
    .line 879
    new-array v3, v3, [Landroid/os/BatteryStats$IntToString;

    .line 880
    .line 881
    aput-object v0, v3, v8

    .line 882
    .line 883
    aput-object v0, v3, v9

    .line 884
    .line 885
    aput-object v0, v3, v18

    .line 886
    .line 887
    aput-object v0, v3, v19

    .line 888
    .line 889
    aput-object v0, v3, v20

    .line 890
    .line 891
    aput-object v0, v3, v21

    .line 892
    .line 893
    aput-object v0, v3, v22

    .line 894
    .line 895
    aput-object v0, v3, v23

    .line 896
    .line 897
    aput-object v0, v3, v24

    .line 898
    .line 899
    aput-object v0, v3, v25

    .line 900
    .line 901
    aput-object v0, v3, v1

    .line 902
    .line 903
    aput-object v0, v3, v37

    .line 904
    .line 905
    aput-object v0, v3, v38

    .line 906
    .line 907
    const/16 v4, 0xd

    .line 908
    .line 909
    aput-object v0, v3, v4

    .line 910
    .line 911
    const/16 v4, 0xe

    .line 912
    .line 913
    aput-object v0, v3, v4

    .line 914
    .line 915
    const/16 v4, 0xf

    .line 916
    .line 917
    aput-object v0, v3, v4

    .line 918
    .line 919
    const/16 v4, 0x10

    .line 920
    .line 921
    aput-object v0, v3, v4

    .line 922
    .line 923
    const/16 v4, 0x11

    .line 924
    .line 925
    aput-object v0, v3, v4

    .line 926
    .line 927
    const/16 v4, 0x12

    .line 928
    .line 929
    aput-object v0, v3, v4

    .line 930
    .line 931
    const/16 v4, 0x13

    .line 932
    .line 933
    aput-object v0, v3, v4

    .line 934
    .line 935
    const/16 v4, 0x14

    .line 936
    .line 937
    aput-object v0, v3, v4

    .line 938
    .line 939
    const/16 v0, 0x15

    .line 940
    .line 941
    aput-object v2, v3, v0

    .line 942
    .line 943
    sput-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    .line 944
    .line 945
    const-string/jumbo v4, "off"

    .line 946
    .line 947
    .line 948
    const-string/jumbo v5, "scanning"

    .line 949
    .line 950
    .line 951
    const-string/jumbo v6, "no_net"

    .line 952
    .line 953
    .line 954
    const-string v7, "disconn"

    .line 955
    .line 956
    const-string/jumbo v8, "sta"

    .line 957
    .line 958
    .line 959
    const-string/jumbo v9, "p2p"

    .line 960
    .line 961
    .line 962
    const-string/jumbo v10, "sta_p2p"

    .line 963
    .line 964
    .line 965
    const-string/jumbo v11, "soft_ap"

    .line 966
    .line 967
    .line 968
    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 973
    .line 974
    new-array v0, v1, [I

    .line 975
    .line 976
    fill-array-data v0, :array_0

    .line 977
    .line 978
    .line 979
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 980
    .line 981
    new-array v0, v1, [I

    .line 982
    .line 983
    fill-array-data v0, :array_1

    .line 984
    .line 985
    .line 986
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 987
    .line 988
    const-string/jumbo v1, "screen off"

    .line 989
    .line 990
    .line 991
    const-string/jumbo v2, "screen off power save"

    .line 992
    .line 993
    .line 994
    const-string/jumbo v3, "screen off device idle"

    .line 995
    .line 996
    .line 997
    const-string/jumbo v4, "screen on"

    .line 998
    .line 999
    .line 1000
    const-string/jumbo v5, "screen on power save"

    .line 1001
    .line 1002
    .line 1003
    const-string/jumbo v6, "screen doze"

    .line 1004
    .line 1005
    .line 1006
    const-string/jumbo v7, "screen doze power save"

    .line 1007
    .line 1008
    .line 1009
    const-string/jumbo v8, "screen doze-suspend"

    .line 1010
    .line 1011
    .line 1012
    const-string/jumbo v9, "screen doze-suspend power save"

    .line 1013
    .line 1014
    .line 1015
    const-string/jumbo v10, "screen doze-suspend device idle"

    .line 1016
    .line 1017
    .line 1018
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 1023
    .line 1024
    return-void

    .line 1025
    :array_0
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    new-instance v1, Ljava/util/Formatter;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 19
    .line 20
    const-string v0, "A"

    .line 21
    .line 22
    iput-object v0, p0, Landroid/os/BatteryStats;->UID_TIMES_TYPE_ALL:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    const-wide/16 p2, 0x1f4

    .line 8
    .line 9
    add-long/2addr p0, p2

    .line 10
    const-wide/16 p2, 0x3e8

    .line 11
    .line 12
    div-long/2addr p0, p2

    .line 13
    return-wide p0

    .line 14
    :cond_0
    const-wide/16 p0, 0x0

    .line 15
    .line 16
    return-wide p0
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v1, v5, v3

    .line 29
    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    cmp-long v1, v5, v3

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    array-length v1, p0

    .line 50
    move v5, v0

    .line 51
    :goto_0
    if-ge v5, v1, :cond_3

    .line 52
    .line 53
    aget-object v6, p0, v5

    .line 54
    .line 55
    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    cmp-long v6, v6, v3

    .line 60
    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return v0

    .line 68
    :cond_4
    :goto_1
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 2

    .line 1
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, ","

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide p2

    .line 38
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 49
    .line 50
    .line 51
    move-result-wide p2

    .line 52
    const-wide/32 v0, 0x36ee80

    .line 53
    .line 54
    .line 55
    div-long/2addr p2, v0

    .line 56
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    array-length p3, p2

    .line 64
    const/4 p4, 0x0

    .line 65
    :goto_0
    if-ge p4, p3, :cond_1

    .line 66
    .line 67
    aget-object v0, p2, p4

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 p4, p4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    move-object/from16 v3, p4

    .line 15
    .line 16
    move-object/from16 v8, p6

    .line 17
    .line 18
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    const-wide/16 v9, 0x0

    .line 23
    .line 24
    cmp-long v5, v3, v9

    .line 25
    .line 26
    const-string v11, " steps)"

    .line 27
    .line 28
    const-string v12, " (from "

    .line 29
    .line 30
    const/4 v13, 0x0

    .line 31
    if-ltz v5, :cond_1

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v5, " total time: "

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    aget v3, p6, v13

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    move v14, v13

    .line 65
    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 66
    .line 67
    array-length v4, v3

    .line 68
    if-ge v14, v4, :cond_3

    .line 69
    .line 70
    aget v3, v3, v14

    .line 71
    .line 72
    int-to-long v4, v3

    .line 73
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 74
    .line 75
    aget v3, v3, v14

    .line 76
    .line 77
    int-to-long v6, v3

    .line 78
    move-object/from16 v3, p4

    .line 79
    .line 80
    move-object/from16 v8, p6

    .line 81
    .line 82
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    cmp-long v5, v3, v9

    .line 87
    .line 88
    if-lez v5, :cond_2

    .line 89
    .line 90
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v5, " "

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 102
    .line 103
    aget-object v5, v5, v14

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v5, " time: "

    .line 109
    .line 110
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    aget v3, p6, v13

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "Package changes:"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 24
    .line 25
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "  Update "

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, " vers="

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v2, "  Uninstall "

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 12
    .line 13
    if-gtz v4, :cond_1

    .line 14
    .line 15
    return v3

    .line 16
    :cond_1
    if-nez p4, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_2
    const/4 v5, 0x5

    .line 22
    new-array v5, v5, [Ljava/lang/String;

    .line 23
    .line 24
    move v6, v3

    .line 25
    :goto_0
    const/4 v7, 0x1

    .line 26
    if-ge v6, v4, :cond_19

    .line 27
    .line 28
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    int-to-long v11, v11

    .line 41
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    int-to-long v13, v13

    .line 46
    const-wide/16 v17, 0x4

    .line 47
    .line 48
    const-wide/16 v19, 0x3

    .line 49
    .line 50
    const/4 v15, 0x2

    .line 51
    const-wide/16 v21, 0x0

    .line 52
    .line 53
    if-eqz p4, :cond_c

    .line 54
    .line 55
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    aput-object v8, v5, v3

    .line 60
    .line 61
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    aput-object v8, v5, v7

    .line 66
    .line 67
    and-long v8, v13, v19

    .line 68
    .line 69
    cmp-long v8, v8, v21

    .line 70
    .line 71
    const-string v9, ""

    .line 72
    .line 73
    if-nez v8, :cond_7

    .line 74
    .line 75
    move/from16 v23, v4

    .line 76
    .line 77
    and-long v3, v11, v19

    .line 78
    .line 79
    long-to-int v3, v3

    .line 80
    add-int/2addr v3, v7

    .line 81
    if-eq v3, v7, :cond_6

    .line 82
    .line 83
    if-eq v3, v15, :cond_5

    .line 84
    .line 85
    const/4 v4, 0x3

    .line 86
    if-eq v3, v4, :cond_4

    .line 87
    .line 88
    const/4 v4, 0x4

    .line 89
    if-eq v3, v4, :cond_3

    .line 90
    .line 91
    const-string v3, "?"

    .line 92
    .line 93
    aput-object v3, v5, v15

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const-string/jumbo v3, "sds"

    .line 97
    .line 98
    .line 99
    aput-object v3, v5, v15

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const-string/jumbo v3, "sd"

    .line 103
    .line 104
    .line 105
    aput-object v3, v5, v15

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const-string/jumbo v3, "s+"

    .line 109
    .line 110
    .line 111
    aput-object v3, v5, v15

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    const-string/jumbo v3, "s-"

    .line 115
    .line 116
    .line 117
    aput-object v3, v5, v15

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    move/from16 v23, v4

    .line 121
    .line 122
    aput-object v9, v5, v15

    .line 123
    .line 124
    :goto_1
    and-long v3, v13, v17

    .line 125
    .line 126
    cmp-long v3, v3, v21

    .line 127
    .line 128
    if-nez v3, :cond_9

    .line 129
    .line 130
    and-long v3, v11, v17

    .line 131
    .line 132
    cmp-long v3, v3, v21

    .line 133
    .line 134
    if-eqz v3, :cond_8

    .line 135
    .line 136
    const-string/jumbo v3, "p+"

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    const-string/jumbo v3, "p-"

    .line 141
    .line 142
    .line 143
    :goto_2
    const/4 v4, 0x3

    .line 144
    aput-object v3, v5, v4

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_9
    const/4 v4, 0x3

    .line 148
    aput-object v9, v5, v4

    .line 149
    .line 150
    :goto_3
    const-wide/16 v3, 0x8

    .line 151
    .line 152
    and-long v7, v13, v3

    .line 153
    .line 154
    cmp-long v7, v7, v21

    .line 155
    .line 156
    if-nez v7, :cond_b

    .line 157
    .line 158
    and-long/2addr v3, v11

    .line 159
    cmp-long v3, v3, v21

    .line 160
    .line 161
    if-eqz v3, :cond_a

    .line 162
    .line 163
    const-string/jumbo v3, "i+"

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    const-string/jumbo v3, "i-"

    .line 168
    .line 169
    .line 170
    :goto_4
    const/4 v4, 0x4

    .line 171
    aput-object v3, v5, v4

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_b
    const/4 v4, 0x4

    .line 175
    aput-object v9, v5, v4

    .line 176
    .line 177
    :goto_5
    const-string/jumbo v3, "i"

    .line 178
    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    invoke-static {v0, v4, v3, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_c

    .line 185
    .line 186
    :cond_c
    move/from16 v23, v4

    .line 187
    .line 188
    move v4, v3

    .line 189
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v3, "#"

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 198
    .line 199
    .line 200
    const-string v3, ": "

    .line 201
    .line 202
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 206
    .line 207
    .line 208
    const-string v3, " to "

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    .line 215
    .line 216
    and-long v8, v13, v19

    .line 217
    .line 218
    cmp-long v3, v8, v21

    .line 219
    .line 220
    const-string v8, " ("

    .line 221
    .line 222
    if-nez v3, :cond_11

    .line 223
    .line 224
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    and-long v9, v11, v19

    .line 228
    .line 229
    long-to-int v3, v9

    .line 230
    add-int/2addr v3, v7

    .line 231
    if-eq v3, v7, :cond_10

    .line 232
    .line 233
    if-eq v3, v15, :cond_f

    .line 234
    .line 235
    const/4 v9, 0x3

    .line 236
    if-eq v3, v9, :cond_e

    .line 237
    .line 238
    const/4 v9, 0x4

    .line 239
    if-eq v3, v9, :cond_d

    .line 240
    .line 241
    const-string/jumbo v3, "screen-?"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_d
    const-string/jumbo v3, "screen-doze-suspend"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_e
    const-string/jumbo v3, "screen-doze"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_f
    const-string/jumbo v3, "screen-on"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_10
    const-string/jumbo v3, "screen-off"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :goto_6
    move v3, v7

    .line 276
    goto :goto_7

    .line 277
    :cond_11
    move v3, v4

    .line 278
    :goto_7
    and-long v9, v13, v17

    .line 279
    .line 280
    cmp-long v9, v9, v21

    .line 281
    .line 282
    const-string v10, ", "

    .line 283
    .line 284
    if-nez v9, :cond_14

    .line 285
    .line 286
    if-eqz v3, :cond_12

    .line 287
    .line 288
    move-object v3, v10

    .line 289
    goto :goto_8

    .line 290
    :cond_12
    move-object v3, v8

    .line 291
    :goto_8
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    and-long v15, v11, v17

    .line 295
    .line 296
    cmp-long v3, v15, v21

    .line 297
    .line 298
    if-eqz v3, :cond_13

    .line 299
    .line 300
    const-string/jumbo v3, "power-save-on"

    .line 301
    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_13
    const-string/jumbo v3, "power-save-off"

    .line 305
    .line 306
    .line 307
    :goto_9
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    move v3, v7

    .line 311
    :cond_14
    const-wide/16 v15, 0x8

    .line 312
    .line 313
    and-long/2addr v13, v15

    .line 314
    cmp-long v9, v13, v21

    .line 315
    .line 316
    if-nez v9, :cond_17

    .line 317
    .line 318
    if-eqz v3, :cond_15

    .line 319
    .line 320
    move-object v8, v10

    .line 321
    :cond_15
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    and-long v8, v11, v15

    .line 325
    .line 326
    cmp-long v3, v8, v21

    .line 327
    .line 328
    if-eqz v3, :cond_16

    .line 329
    .line 330
    const-string v3, "device-idle-on"

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_16
    const-string v3, "device-idle-off"

    .line 334
    .line 335
    :goto_a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_b

    .line 339
    :cond_17
    move v7, v3

    .line 340
    :goto_b
    if-eqz v7, :cond_18

    .line 341
    .line 342
    const-string v3, ")"

    .line 343
    .line 344
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 348
    .line 349
    .line 350
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 351
    .line 352
    move v3, v4

    .line 353
    move/from16 v4, v23

    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_19
    return v7
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .locals 19

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    new-instance v8, Landroid/os/BatteryStats$HistoryPrinter;

    .line 4
    .line 5
    invoke-direct {v8}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v9, Landroid/os/BatteryStats$HistoryItem;

    .line 9
    .line 10
    invoke-direct {v9}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    move-object/from16 v11, p0

    .line 17
    .line 18
    move-wide v2, v0

    .line 19
    move v4, v10

    .line 20
    :goto_0
    invoke-virtual {v11, v9}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const-wide/16 v12, 0x0

    .line 25
    .line 26
    if-eqz v5, :cond_8

    .line 27
    .line 28
    iget-wide v14, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 29
    .line 30
    cmp-long v2, v0, v12

    .line 31
    .line 32
    if-gez v2, :cond_0

    .line 33
    .line 34
    move-wide/from16 v16, v14

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move-wide/from16 v16, v0

    .line 38
    .line 39
    :goto_1
    cmp-long v0, v14, p3

    .line 40
    .line 41
    if-ltz v0, :cond_7

    .line 42
    .line 43
    cmp-long v0, p3, v12

    .line 44
    .line 45
    const/16 v18, 0x1

    .line 46
    .line 47
    if-ltz v0, :cond_5

    .line 48
    .line 49
    if-nez v4, :cond_5

    .line 50
    .line 51
    iget-byte v6, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    if-eq v6, v0, :cond_3

    .line 55
    .line 56
    const/4 v1, 0x7

    .line 57
    if-eq v6, v1, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    if-eq v6, v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    if-ne v6, v1, :cond_1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    iget-wide v1, v9, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 68
    .line 69
    cmp-long v1, v1, v12

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    iput-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 74
    .line 75
    and-int/lit8 v0, p2, 0x20

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    move/from16 v12, v18

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v12, v10

    .line 83
    :goto_2
    move-object v0, v8

    .line 84
    move-object/from16 v1, p1

    .line 85
    .line 86
    move-object v2, v9

    .line 87
    move-wide/from16 v3, v16

    .line 88
    .line 89
    move/from16 v5, p5

    .line 90
    .line 91
    move v13, v6

    .line 92
    move v6, v12

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 94
    .line 95
    .line 96
    iput-byte v13, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_3
    :goto_3
    and-int/lit8 v0, p2, 0x20

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    move/from16 v6, v18

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    move v6, v10

    .line 107
    :goto_4
    move-object v0, v8

    .line 108
    move-object/from16 v1, p1

    .line 109
    .line 110
    move-object v2, v9

    .line 111
    move-wide/from16 v3, v16

    .line 112
    .line 113
    move/from16 v5, p5

    .line 114
    .line 115
    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 116
    .line 117
    .line 118
    iput-byte v10, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 119
    .line 120
    :goto_5
    move/from16 v4, v18

    .line 121
    .line 122
    :cond_5
    move v12, v4

    .line 123
    and-int/lit8 v0, p2, 0x20

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    move/from16 v6, v18

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_6
    move v6, v10

    .line 131
    :goto_6
    move-object v0, v8

    .line 132
    move-object/from16 v1, p1

    .line 133
    .line 134
    move-object v2, v9

    .line 135
    move-wide/from16 v3, v16

    .line 136
    .line 137
    move/from16 v5, p5

    .line 138
    .line 139
    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 140
    .line 141
    .line 142
    move v4, v12

    .line 143
    :cond_7
    move-wide v2, v14

    .line 144
    move-wide/from16 v0, v16

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_8
    cmp-long v0, p3, v12

    .line 148
    .line 149
    if-ltz v0, :cond_a

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 152
    .line 153
    .line 154
    if-eqz p5, :cond_9

    .line 155
    .line 156
    const-string v0, "NEXT: "

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_9
    const-string v0, "  NEXT: "

    .line 160
    .line 161
    :goto_7
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-wide/16 v0, 0x1

    .line 165
    .line 166
    add-long/2addr v2, v0

    .line 167
    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 168
    .line 169
    .line 170
    :cond_a
    return-void
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    array-length p1, p4

    .line 5
    const/4 p2, 0x0

    .line 6
    :goto_0
    if-ge p2, p1, :cond_0

    .line 7
    .line 8
    aget-object p3, p4, p2

    .line 9
    .line 10
    const/16 v0, 0x2c

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2c

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p4, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const/16 p2, 0x40

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 2

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 4
    .line 5
    .line 6
    move-result-wide p5

    .line 7
    const-wide/16 v0, 0x1f4

    .line 8
    .line 9
    add-long/2addr p5, v0

    .line 10
    const-wide/16 v0, 0x3e8

    .line 11
    .line 12
    div-long/2addr p5, v0

    .line 13
    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long p7, p5, v0

    .line 20
    .line 21
    if-eqz p7, :cond_0

    .line 22
    .line 23
    const/4 p7, 0x2

    .line 24
    new-array p7, p7, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    aput-object p5, p7, v0

    .line 32
    .line 33
    const/4 p5, 0x1

    .line 34
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    aput-object p4, p7, p5

    .line 39
    .line 40
    invoke-static {p0, p1, p2, p3, p7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long v2, p1, v0

    .line 4
    .line 5
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 6
    .line 7
    .line 8
    mul-long/2addr v2, v0

    .line 9
    sub-long/2addr p1, v2

    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p1, "ms "

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long v2, p1, v0

    .line 4
    .line 5
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 6
    .line 7
    .line 8
    mul-long/2addr v2, v0

    .line 9
    sub-long/2addr p1, v2

    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p1, "ms"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 10

    .line 1
    const-wide/32 v0, 0x15180

    .line 2
    .line 3
    .line 4
    div-long v0, p1, v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v4, "d "

    .line 16
    .line 17
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    const-wide/16 v4, 0x3c

    .line 21
    .line 22
    mul-long/2addr v0, v4

    .line 23
    mul-long/2addr v0, v4

    .line 24
    const-wide/16 v6, 0x18

    .line 25
    .line 26
    mul-long/2addr v0, v6

    .line 27
    sub-long v6, p1, v0

    .line 28
    .line 29
    const-wide/16 v8, 0xe10

    .line 30
    .line 31
    div-long/2addr v6, v8

    .line 32
    cmp-long v8, v6, v2

    .line 33
    .line 34
    if-nez v8, :cond_1

    .line 35
    .line 36
    cmp-long v8, v0, v2

    .line 37
    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v8, "h "

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_2
    mul-long/2addr v6, v4

    .line 50
    mul-long/2addr v6, v4

    .line 51
    add-long/2addr v6, v0

    .line 52
    sub-long v0, p1, v6

    .line 53
    .line 54
    div-long/2addr v0, v4

    .line 55
    cmp-long v8, v0, v2

    .line 56
    .line 57
    if-nez v8, :cond_3

    .line 58
    .line 59
    cmp-long v8, v6, v2

    .line 60
    .line 61
    if-eqz v8, :cond_4

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v8, "m "

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    .line 73
    .line 74
    .line 75
    mul-long/2addr v0, v4

    .line 76
    add-long/2addr v0, v6

    .line 77
    cmp-long v4, p1, v2

    .line 78
    .line 79
    if-nez v4, :cond_5

    .line 80
    .line 81
    cmp-long v2, v0, v2

    .line 82
    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    :cond_5
    sub-long/2addr p1, v0

    .line 86
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string/jumbo p1, "s "

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_6
    return-void
.end method

.method public static printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 7

    .line 1
    xor-int/2addr p1, p2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    array-length v2, p4

    .line 8
    const-string v3, "\""

    .line 9
    .line 10
    const-string v4, ":\""

    .line 11
    .line 12
    if-ge v0, v2, :cond_a

    .line 13
    .line 14
    aget-object v2, p4, v0

    .line 15
    .line 16
    iget v5, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 17
    .line 18
    and-int/2addr v5, p1

    .line 19
    if-eqz v5, :cond_9

    .line 20
    .line 21
    if-eqz p5, :cond_1

    .line 22
    .line 23
    const-string v5, " "

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-string v5, ","

    .line 27
    .line 28
    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v5, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 32
    .line 33
    const-string v6, "="

    .line 34
    .line 35
    if-gez v5, :cond_5

    .line 36
    .line 37
    iget v5, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 38
    .line 39
    and-int/2addr v5, p2

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    const-string v5, "+"

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const-string v5, "-"

    .line 46
    .line 47
    :goto_2
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz p5, :cond_3

    .line 51
    .line 52
    iget-object v5, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    iget-object v5, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 56
    .line 57
    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v2, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 61
    .line 62
    const/high16 v5, 0x40000000    # 2.0f

    .line 63
    .line 64
    if-ne v2, v5, :cond_9

    .line 65
    .line 66
    if-eqz p3, :cond_9

    .line 67
    .line 68
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-eqz p5, :cond_4

    .line 72
    .line 73
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 74
    .line 75
    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 93
    .line 94
    .line 95
    :goto_4
    const/4 v1, 0x1

    .line 96
    goto :goto_7

    .line 97
    :cond_5
    if-eqz p5, :cond_6

    .line 98
    .line 99
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 103
    .line 104
    :goto_5
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 111
    .line 112
    and-int/2addr v3, p2

    .line 113
    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 114
    .line 115
    shr-int/2addr v3, v4

    .line 116
    iget-object v4, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v4, :cond_8

    .line 119
    .line 120
    if-ltz v3, :cond_8

    .line 121
    .line 122
    array-length v5, v4

    .line 123
    if-ge v3, v5, :cond_8

    .line 124
    .line 125
    if-eqz p5, :cond_7

    .line 126
    .line 127
    aget-object v2, v4, v3

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_7
    iget-object v2, v2, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 131
    .line 132
    aget-object v2, v2, v3

    .line 133
    .line 134
    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_8
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 139
    .line 140
    .line 141
    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    if-nez v1, :cond_d

    .line 146
    .line 147
    if-eqz p3, :cond_d

    .line 148
    .line 149
    if-eqz p5, :cond_b

    .line 150
    .line 151
    const-string p1, " wake_lock="

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_b
    const-string p1, ",w="

    .line 155
    .line 156
    :goto_8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    if-eqz p5, :cond_c

    .line 160
    .line 161
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 162
    .line 163
    invoke-static {p0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_c
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 181
    .line 182
    .line 183
    :cond_d
    :goto_9
    return-void
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v11

    .line 39
    const-wide/16 v13, 0x3e8

    .line 40
    .line 41
    mul-long/2addr v11, v13

    .line 42
    invoke-virtual {v0, v11, v12, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    .line 43
    .line 44
    .line 45
    move-result-wide v11

    .line 46
    div-long/2addr v11, v13

    .line 47
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    array-length v14, v13

    .line 52
    const/4 v15, 0x0

    .line 53
    const-wide/16 v16, 0x0

    .line 54
    .line 55
    :goto_0
    if-ge v15, v14, :cond_0

    .line 56
    .line 57
    move/from16 v18, v14

    .line 58
    .line 59
    aget-object v14, v13, v15

    .line 60
    .line 61
    invoke-virtual {v14, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v19

    .line 65
    add-long v16, v19, v16

    .line 66
    .line 67
    add-int/lit8 v15, v15, 0x1

    .line 68
    .line 69
    move/from16 v14, v18

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    add-long v13, v5, v7

    .line 73
    .line 74
    add-long v13, v13, v16

    .line 75
    .line 76
    sub-long v13, v11, v13

    .line 77
    .line 78
    const/4 v15, 0x0

    .line 79
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v15, "     "

    .line 86
    .line 87
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-wide/from16 v16, v9

    .line 94
    .line 95
    const-string v9, " Sleep time:  "

    .line 96
    .line 97
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 101
    .line 102
    .line 103
    const-string v9, "("

    .line 104
    .line 105
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v10, ")"

    .line 116
    .line 117
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 v13, 0x0

    .line 128
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v13, " Idle time:   "

    .line 141
    .line 142
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v5, v6, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 v5, 0x0

    .line 169
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v5, " Rx time:     "

    .line 182
    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v7, v8, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v5, " Tx time:     "

    .line 223
    .line 224
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const-string v5, "Cellular"

    .line 231
    .line 232
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-nez v5, :cond_1

    .line 237
    .line 238
    const-string v5, "[3]"

    .line 239
    .line 240
    const-string v6, "[4]"

    .line 241
    .line 242
    const-string v7, "[0]"

    .line 243
    .line 244
    const-string v8, "[1]"

    .line 245
    .line 246
    const-string v13, "[2]"

    .line 247
    .line 248
    filled-new-array {v7, v8, v13, v5, v6}, [Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    goto :goto_1

    .line 253
    :cond_1
    const-string v5, "   15dBm to 20dBm: "

    .line 254
    .line 255
    const-string v6, "   above 20dBm: "

    .line 256
    .line 257
    const-string v7, "   less than 0dBm: "

    .line 258
    .line 259
    const-string v8, "   0dBm to 8dBm: "

    .line 260
    .line 261
    const-string v13, "   8dBm to 15dBm: "

    .line 262
    .line 263
    filled-new-array {v7, v8, v13, v5, v6}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    array-length v6, v6

    .line 272
    array-length v7, v5

    .line 273
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    const/4 v7, 0x1

    .line 278
    if-le v6, v7, :cond_2

    .line 279
    .line 280
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const/4 v7, 0x0

    .line 288
    :goto_2
    if-ge v7, v6, :cond_3

    .line 289
    .line 290
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    aget-object v8, v8, v7

    .line 295
    .line 296
    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 297
    .line 298
    .line 299
    move-result-wide v13

    .line 300
    const/4 v8, 0x0

    .line 301
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v8, "    "

    .line 308
    .line 309
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    aget-object v8, v5, v7

    .line 313
    .line 314
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v8, " "

    .line 318
    .line 319
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    add-int/lit8 v7, v7, 0x1

    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    const/4 v6, 0x0

    .line 353
    aget-object v5, v5, v6

    .line 354
    .line 355
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 356
    .line 357
    .line 358
    move-result-wide v4

    .line 359
    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v4, v5, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :cond_3
    const-wide/16 v4, 0x0

    .line 383
    .line 384
    cmp-long v4, v16, v4

    .line 385
    .line 386
    if-lez v4, :cond_4

    .line 387
    .line 388
    const/4 v4, 0x0

    .line 389
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v3, " Battery drain: "

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    move-wide/from16 v3, v16

    .line 407
    .line 408
    long-to-double v3, v3

    .line 409
    const-wide v5, 0x414b774000000000L    # 3600000.0

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    div-double/2addr v3, v5

    .line 415
    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string/jumbo v3, "mAh"

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    :cond_4
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1

    .line 1
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 3

    .line 1
    long-to-float p2, p2

    .line 2
    const/high16 p3, 0x46200000    # 10240.0f

    .line 3
    .line 4
    cmpl-float v0, p2, p3

    .line 5
    .line 6
    const/high16 v1, 0x44800000    # 1024.0f

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    div-float/2addr p2, v1

    .line 11
    const-string v0, "KB"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    :goto_0
    cmpl-float v2, p2, p3

    .line 17
    .line 18
    if-ltz v2, :cond_1

    .line 19
    .line 20
    div-float/2addr p2, v1

    .line 21
    const-string v0, "MB"

    .line 22
    .line 23
    :cond_1
    cmpl-float v2, p2, p3

    .line 24
    .line 25
    if-ltz v2, :cond_2

    .line 26
    .line 27
    div-float/2addr p2, v1

    .line 28
    const-string v0, "GB"

    .line 29
    .line 30
    :cond_2
    cmpl-float v2, p2, p3

    .line 31
    .line 32
    if-ltz v2, :cond_3

    .line 33
    .line 34
    div-float/2addr p2, v1

    .line 35
    const-string v0, "TB"

    .line 36
    .line 37
    :cond_3
    cmpl-float p3, p2, p3

    .line 38
    .line 39
    if-ltz p3, :cond_4

    .line 40
    .line 41
    div-float/2addr p2, v1

    .line 42
    const-string v0, "PB"

    .line 43
    .line 44
    :cond_4
    float-to-int p2, p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    invoke-virtual {p2, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x1f4

    .line 9
    .line 10
    add-long/2addr v1, v3

    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    .line 13
    div-long/2addr v1, v3

    .line 14
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    .line 15
    .line 16
    .line 17
    move-result p5

    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    cmp-long v7, v1, v5

    .line 21
    .line 22
    if-eqz v7, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p6, "    "

    .line 31
    .line 32
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p6, ": "

    .line 39
    .line 40
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo p6, "realtime ("

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p5, " times)"

    .line 56
    .line 57
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    div-long/2addr p3, v3

    .line 61
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide p5

    .line 65
    cmp-long p7, p5, v5

    .line 66
    .line 67
    if-ltz p7, :cond_0

    .line 68
    .line 69
    const-string p7, " max="

    .line 70
    .line 71
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    .line 78
    .line 79
    .line 80
    move-result p5

    .line 81
    if-eqz p5, :cond_2

    .line 82
    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide p2

    .line 87
    cmp-long p4, p2, v5

    .line 88
    .line 89
    if-ltz p4, :cond_1

    .line 90
    .line 91
    const-string p4, " (running for "

    .line 92
    .line 93
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string/jumbo p2, "ms)"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const-string p2, " (running)"

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x1

    .line 119
    return p0

    .line 120
    :cond_3
    return v0
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    .line 8
    .line 9
    .line 10
    move-result p5

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-eqz v4, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 21
    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 p4, 0x20

    .line 29
    .line 30
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    const/16 p4, 0x28

    .line 34
    .line 35
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p4, " times)"

    .line 42
    .line 43
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-wide/16 p4, 0x3e8

    .line 47
    .line 48
    div-long/2addr p2, p4

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide p4

    .line 53
    cmp-long p6, p4, v2

    .line 54
    .line 55
    if-ltz p6, :cond_1

    .line 56
    .line 57
    const-string p6, " max="

    .line 58
    .line 59
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide p4

    .line 69
    cmp-long p6, p4, v0

    .line 70
    .line 71
    if-lez p6, :cond_2

    .line 72
    .line 73
    const-string p6, " actual="

    .line 74
    .line 75
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-eqz p4, :cond_4

    .line 86
    .line 87
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    cmp-long p3, p1, v2

    .line 92
    .line 93
    if-ltz p3, :cond_3

    .line 94
    .line 95
    const-string p3, " (running for "

    .line 96
    .line 97
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string/jumbo p1, "ms)"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const-string p1, " (running)"

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_0
    const-string p0, ", "

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_5
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    const-wide/16 v6, 0x3e8

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    div-long/2addr v2, v6

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v10

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v12

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    move-object/from16 v3, p6

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-wide/16 v8, 0x0

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    move-object/from16 v3, p6

    .line 43
    .line 44
    move-wide v1, v8

    .line 45
    move-wide v10, v1

    .line 46
    move-wide v12, v10

    .line 47
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-wide/16 v14, 0x1f4

    .line 51
    .line 52
    add-long/2addr v8, v14

    .line 53
    div-long/2addr v8, v6

    .line 54
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x2c

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v6, ","

    .line 63
    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string v7, ""

    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_2
    return-object v6
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 74

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long v12, v5, v3

    const-wide/16 v14, 0x1f4

    add-long v5, v12, v14

    .line 4
    div-long v7, v5, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v5

    .line 6
    invoke-virtual {v0, v1, v2, v10}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v3

    .line 7
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v16

    .line 8
    invoke-virtual {v0, v1, v2, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v18

    .line 9
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v20

    .line 10
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v22

    .line 11
    invoke-virtual {v0, v1, v2, v10}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v1

    .line 12
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v24

    .line 13
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v26

    .line 14
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v28

    .line 15
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v30

    const/4 v14, 0x1

    .line 16
    invoke-virtual {v0, v14, v12, v13, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v32

    const/4 v15, 0x2

    .line 17
    invoke-virtual {v0, v15, v12, v13, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v34

    .line 18
    invoke-virtual {v0, v14, v12, v13, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v36

    .line 19
    invoke-virtual {v0, v15, v12, v13, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v14

    .line 20
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v38

    .line 21
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v39

    .line 22
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMahDischarge(I)J

    move-result-wide v41

    .line 23
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMahDischargeScreenOff(I)J

    move-result-wide v43

    .line 24
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMahDischargeScreenDoze(I)J

    move-result-wide v45

    move-wide/from16 v47, v7

    .line 25
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v7

    move-object/from16 v49, v8

    .line 27
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 28
    sget-object v50, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v11, v50, v10

    move-wide/from16 v50, v5

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    if-nez v10, :cond_0

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "N/A"

    :goto_0
    move-wide/from16 v52, v14

    const/4 v14, 0x0

    aput-object v6, v5, v14

    const-wide/16 v54, 0x3e8

    div-long v16, v16, v54

    .line 30
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v5, v15

    div-long v3, v3, v54

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v5, v4

    div-long v22, v22, v54

    .line 31
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v5, v4

    div-long v1, v1, v54

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v5, v2

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v5, v2

    div-long v20, v20, v54

    .line 33
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v5, v2

    div-long v18, v18, v54

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v5, v2

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v5, v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v5, v2

    const-wide/16 v1, 0x3e8

    div-long v26, v26, v1

    .line 36
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v5, v2

    const-string v1, "bt"

    .line 37
    invoke-static {v9, v14, v11, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v14

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    .line 38
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 39
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_3

    .line 41
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 42
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {v4, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v21

    add-long v21, v21, v17

    move-wide/from16 v17, v21

    .line 44
    :cond_1
    invoke-virtual {v5, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 45
    invoke-virtual {v4, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v4, v4, v19

    move-wide/from16 v19, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {v0, v14, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 47
    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const/4 v6, 0x2

    .line 48
    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v21

    const/4 v6, 0x3

    .line 49
    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v26

    .line 50
    invoke-virtual {v0, v14, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v54

    .line 51
    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v56

    const/4 v3, 0x2

    .line 52
    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v58

    .line 53
    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v60

    const/4 v3, 0x4

    .line 54
    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v62

    const/4 v3, 0x5

    .line 55
    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v64

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    .line 57
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v3, v2

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v3, v6

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v3, v2

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v3, v2

    .line 58
    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v3, v2

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v3, v2

    const-string/jumbo v1, "gn"

    .line 59
    invoke-static {v9, v14, v11, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const-string/jumbo v4, "gmcd"

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v1, p2

    move-object v3, v11

    move-wide/from16 v66, v50

    move v14, v6

    move/from16 v6, p3

    .line 61
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 62
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v1

    .line 63
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v3

    new-array v5, v14, [Ljava/lang/Object;

    const-wide/16 v21, 0x3e8

    .line 64
    div-long v1, v1, v21

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    div-long v3, v3, v21

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x3

    aput-object v1, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v5, v3

    const-string/jumbo v1, "gwfl"

    .line 66
    invoke-static {v9, v2, v11, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v21, 0x0

    const-string/jumbo v4, "gwfcd"

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v2, v21

    move-object v3, v11

    .line 68
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v4, "gble"

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 70
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    .line 71
    div-long v24, v24, v2

    .line 72
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    div-long v39, v39, v2

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    div-long v17, v17, v2

    .line 73
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    div-long v19, v19, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v14

    .line 74
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    .line 75
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    div-long v28, v28, v2

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v1, v5

    div-long v30, v30, v2

    .line 76
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    div-long v34, v34, v2

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v6, 0x9

    aput-object v4, v1, v6

    const/4 v4, 0x2

    .line 77
    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v14, 0xa

    aput-object v6, v1, v14

    div-long v17, v52, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v14, 0xb

    aput-object v6, v1, v14

    .line 78
    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xc

    aput-object v4, v1, v6

    .line 79
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xd

    aput-object v4, v1, v6

    .line 80
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v17

    div-long v17, v17, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v14, 0xe

    aput-object v4, v1, v14

    div-long v32, v32, v2

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v14, 0xf

    aput-object v4, v1, v14

    const/4 v4, 0x1

    .line 81
    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x10

    aput-object v14, v1, v17

    div-long v36, v36, v2

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v14, 0x11

    aput-object v2, v1, v14

    .line 82
    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 83
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "m"

    const/4 v3, 0x0

    .line 85
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    :goto_3
    if-ge v3, v1, :cond_5

    .line 86
    invoke-virtual {v0, v3, v12, v13, v10}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const-string v3, "br"

    const/4 v4, 0x0

    .line 87
    invoke-static {v9, v4, v11, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_6

    .line 88
    invoke-virtual {v0, v3, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x5

    goto :goto_4

    :cond_6
    const-wide/16 v3, 0x3e8

    const-string/jumbo v1, "sgt"

    const/4 v15, 0x0

    .line 89
    invoke-static {v9, v15, v11, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v19

    div-long v19, v19, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v15

    const-string/jumbo v3, "sst"

    .line 91
    invoke-static {v9, v15, v11, v3, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v15

    :goto_5
    const/4 v3, 0x5

    if-ge v1, v3, :cond_7

    .line 92
    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    const-string/jumbo v1, "sgc"

    .line 93
    invoke-static {v9, v15, v11, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v14, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v14, :cond_8

    .line 94
    invoke-virtual {v0, v2, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v3

    const-wide/16 v15, 0x3e8

    div-long/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const-string v2, "dct"

    const/4 v3, 0x0

    .line 95
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_7
    if-ge v2, v14, :cond_9

    .line 96
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const-string v2, "dcc"

    .line 97
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v5, :cond_a

    .line 98
    invoke-virtual {v0, v2, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v15, 0x3e8

    div-long/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    const-string/jumbo v2, "wst"

    const/4 v3, 0x0

    .line 99
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_9
    if-ge v2, v5, :cond_b

    .line 100
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    const-string/jumbo v2, "wsc"

    .line 101
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v6, :cond_c

    .line 102
    invoke-virtual {v0, v2, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v15, 0x3e8

    div-long/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    const-string/jumbo v2, "wsst"

    const/4 v3, 0x0

    .line 103
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_b
    if-ge v2, v6, :cond_d

    .line 104
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_d
    const-string/jumbo v2, "wssc"

    .line 105
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_e

    .line 106
    invoke-virtual {v0, v3, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v15

    const-wide/16 v19, 0x3e8

    div-long v15, v15, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_e
    const-string/jumbo v3, "wsgt"

    const/4 v4, 0x0

    .line 107
    invoke-static {v9, v4, v11, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    :goto_d
    if-ge v3, v1, :cond_f

    .line 108
    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x5

    goto :goto_d

    :cond_f
    const-string/jumbo v1, "wsgc"

    .line 109
    invoke-static {v9, v4, v11, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    if-ne v10, v1, :cond_10

    new-array v2, v1, [Ljava/lang/Object;

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const-string/jumbo v3, "lv"

    .line 112
    invoke-static {v9, v4, v11, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    if-ne v10, v1, :cond_11

    new-array v1, v5, [Ljava/lang/Object;

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-wide/16 v2, 0x3e8

    div-long v41, v41, v2

    .line 116
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    div-long v43, v43, v2

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v1, v5

    div-long v45, v45, v2

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "dc"

    const/4 v3, 0x0

    .line 118
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_11
    new-array v1, v5, [Ljava/lang/Object;

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-wide/16 v2, 0x3e8

    div-long v41, v41, v2

    .line 122
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    div-long v43, v43, v2

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v1, v5

    div-long v45, v45, v2

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "dc"

    const/4 v3, 0x0

    .line 124
    invoke-static {v9, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    const-string v15, "\""

    move-object v6, v11

    move/from16 v11, p4

    if-gez v11, :cond_13

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 127
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    move-object/from16 v5, v49

    .line 128
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 129
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const/16 v20, 0x0

    const-string v21, ""

    move-object v1, v5

    move-wide v3, v12

    move-object/from16 v5, v20

    move-object v14, v6

    move/from16 v6, p3

    move-object v11, v7

    move-wide/from16 v68, v47

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-static {v2, v3, v15}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 133
    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "kwl"

    .line 134
    invoke-static {v9, v3, v14, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v11

    move-object v6, v14

    const/16 v14, 0x11

    move/from16 v11, p4

    goto :goto_f

    :cond_12
    move-object v14, v6

    move-object v11, v7

    move-wide/from16 v68, v47

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 137
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-static {v7, v2, v15}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-wide/16 v21, 0x1f4

    add-long v3, v3, v21

    const-wide/16 v21, 0x3e8

    .line 143
    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    const-string/jumbo v2, "wr"

    .line 144
    invoke-static {v9, v7, v14, v2, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_13
    move-object v14, v6

    move-object v11, v7

    move-wide/from16 v68, v47

    .line 145
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v1

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v2

    .line 147
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 148
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    move-object/from16 v7, v49

    .line 149
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 150
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 151
    invoke-virtual {v4, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v21, 0x1f4

    add-long v5, v5, v21

    const-wide/16 v23, 0x3e8

    div-long v5, v5, v23

    .line 152
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    move-object/from16 v16, v1

    .line 153
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Timer;

    if-eqz v1, :cond_15

    .line 154
    invoke-virtual {v1, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v25

    add-long v25, v25, v21

    div-long v25, v25, v23

    :cond_15
    if-eqz v1, :cond_16

    .line 155
    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    :cond_16
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v19, v2

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-static {v2, v3, v15}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 159
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string/jumbo v2, "rpm"

    .line 160
    invoke-static {v9, v3, v14, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v49, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    goto :goto_11

    :cond_17
    move-object/from16 v7, v49

    const/4 v1, 0x0

    .line 161
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 162
    invoke-virtual {v2, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v1, -0x1

    .line 163
    invoke-virtual {v2, v10, v1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 164
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 167
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 168
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 169
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const-string/jumbo v2, "pws"

    .line 170
    invoke-static {v9, v5, v14, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 171
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 173
    sget-object v4, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "???"

    goto :goto_14

    :pswitch_0
    const-string v4, "camera"

    goto :goto_14

    :pswitch_1
    const-string/jumbo v4, "over"

    goto :goto_14

    :pswitch_2
    const-string/jumbo v4, "unacc"

    goto :goto_14

    .line 174
    :pswitch_3
    iget v4, v3, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    const-string/jumbo v5, "user"

    goto :goto_13

    .line 175
    :pswitch_4
    iget-object v4, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const-string/jumbo v5, "uid"

    :goto_13
    const/4 v6, 0x5

    goto :goto_15

    :pswitch_5
    const-string v4, "flashlight"

    goto :goto_14

    :pswitch_6
    const-string/jumbo v4, "scrn"

    goto :goto_14

    :pswitch_7
    const-string v4, "blue"

    goto :goto_14

    :pswitch_8
    const-string/jumbo v4, "wifi"

    goto :goto_14

    :pswitch_9
    const-string/jumbo v4, "phone"

    goto :goto_14

    :pswitch_a
    const-string v4, "cell"

    goto :goto_14

    :pswitch_b
    const-string/jumbo v4, "idle"

    :goto_14
    const/4 v5, 0x0

    const/4 v6, 0x5

    move/from16 v73, v5

    move-object v5, v4

    move/from16 v4, v73

    :goto_15
    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v6, v16

    move-object/from16 p1, v1

    .line 176
    iget-wide v0, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 177
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    iget-boolean v0, v3, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    iget-wide v0, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 179
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v6, v1

    iget-wide v0, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 180
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v6, v1

    const-string/jumbo v0, "pwi"

    .line 181
    invoke-static {v9, v4, v14, v0, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_12

    .line 182
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v0

    const-string v6, ","

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 184
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_19

    const-string v3, ""

    goto :goto_17

    :cond_19
    move-object v3, v6

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v0, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1a
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "gcf"

    invoke-static {v9, v3, v14, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    const/4 v1, 0x0

    move v5, v1

    :goto_18
    if-ge v5, v8, :cond_57

    .line 187
    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object v3, v11

    move/from16 v11, p4

    if-ltz v11, :cond_1c

    if-eq v4, v11, :cond_1c

    move-object/from16 p1, v0

    move-object/from16 v16, v3

    move/from16 v20, v5

    move-object/from16 v70, v6

    move-object/from16 v71, v7

    move/from16 v21, v8

    move-wide/from16 v24, v12

    move-object v12, v15

    move-wide/from16 v7, v66

    const-wide/16 v17, 0x0

    const/16 v19, 0x11

    const-wide/16 v22, 0x1f4

    goto/16 :goto_49

    .line 188
    :cond_1c
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Uid;

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v21

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v23

    const/4 v1, 0x2

    .line 191
    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v25

    const/4 v1, 0x3

    .line 192
    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v27

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v29

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v32

    .line 195
    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v34

    .line 196
    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v1

    .line 197
    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v36

    move-object/from16 v16, v3

    const/4 v3, 0x2

    .line 198
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v38

    const/4 v3, 0x3

    .line 199
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v40

    .line 200
    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v42

    const/4 v3, 0x4

    .line 201
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v44

    const/4 v3, 0x5

    .line 202
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v46

    const/4 v3, 0x6

    .line 203
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v48

    const/4 v3, 0x7

    .line 204
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v50

    const/16 v3, 0x8

    .line 205
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v52

    const/16 v3, 0x9

    .line 206
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v54

    const/4 v3, 0x6

    .line 207
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v56

    const/4 v3, 0x7

    .line 208
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v58

    const/16 v3, 0x8

    .line 209
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v60

    const/16 v3, 0x9

    .line 210
    invoke-virtual {v2, v3, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v62

    const-wide/16 v17, 0x0

    cmp-long v3, v21, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v23, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v25, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v27, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v29, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v32, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v38, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v40, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v34, v17

    if-gtz v3, :cond_1e

    if-gtz v1, :cond_1e

    cmp-long v3, v44, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v46, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v36, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v42, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v48, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v50, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v52, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v54, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v56, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v58, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v60, v17

    if-gtz v3, :cond_1e

    cmp-long v3, v62, v17

    if-lez v3, :cond_1d

    goto :goto_19

    :cond_1d
    const/16 v19, 0x11

    goto/16 :goto_1a

    :cond_1e
    :goto_19
    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    .line 211
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x0

    aput-object v19, v3, v21

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x1

    aput-object v19, v3, v21

    .line 212
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x2

    aput-object v19, v3, v21

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x3

    aput-object v19, v3, v21

    .line 213
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x4

    aput-object v19, v3, v21

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x5

    aput-object v19, v3, v21

    .line 214
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x6

    aput-object v19, v3, v21

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x7

    aput-object v19, v3, v21

    .line 215
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v21, 0x8

    aput-object v19, v3, v21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v19, 0x9

    aput-object v1, v3, v19

    .line 216
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v19, 0xa

    aput-object v1, v3, v19

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v19, 0xb

    aput-object v1, v3, v19

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v19, 0xc

    aput-object v1, v3, v19

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v19, 0xd

    aput-object v1, v3, v19

    const/16 v1, 0xe

    .line 217
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v1

    const/16 v1, 0xf

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v1

    const/16 v1, 0x10

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v1

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v19, 0x11

    aput-object v1, v3, v19

    const/16 v1, 0x12

    .line 218
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v3, v1

    const/16 v1, 0x13

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v3, v1

    const/16 v1, 0x14

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v3, v1

    const/16 v1, 0x15

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v3, v1

    const-string/jumbo v1, "nt"

    .line 219
    invoke-static {v9, v4, v14, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1a
    const-string/jumbo v20, "mcd"

    .line 220
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v21

    const/16 v22, -0x1

    move-object/from16 v1, p2

    move-object v3, v2

    move v2, v4

    move-object v11, v3

    move-object v3, v14

    move-object/from16 p1, v0

    move v0, v4

    move-object/from16 v4, v20

    move/from16 v20, v5

    move-object/from16 v5, v21

    move-object/from16 v70, v6

    move/from16 v6, p3

    .line 221
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 222
    invoke-virtual {v11, v12, v13, v10}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v1

    .line 223
    invoke-virtual {v11, v12, v13, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v3

    .line 224
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v5

    .line 225
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v6

    .line 226
    invoke-virtual {v11, v12, v13}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v23

    const-wide/16 v25, 0x1f4

    add-long v23, v23, v25

    const-wide/16 v27, 0x3e8

    div-long v23, v23, v27

    .line 227
    invoke-virtual {v11, v12, v13}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v29

    add-long v29, v29, v25

    div-long v29, v29, v27

    .line 228
    invoke-virtual {v11, v12, v13, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v25

    const-wide/16 v17, 0x0

    cmp-long v21, v1, v17

    if-nez v21, :cond_20

    cmp-long v21, v3, v17

    if-nez v21, :cond_20

    if-nez v5, :cond_20

    if-nez v6, :cond_20

    cmp-long v21, v23, v17

    if-nez v21, :cond_20

    cmp-long v21, v29, v17

    if-nez v21, :cond_20

    cmp-long v21, v25, v17

    if-eqz v21, :cond_1f

    goto :goto_1b

    :cond_1f
    move/from16 v21, v8

    goto :goto_1c

    :cond_20
    :goto_1b
    move/from16 v21, v8

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v8, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v8, v3

    .line 230
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v8, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v8, v3

    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v8, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v8, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v8, v2

    .line 232
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v8, v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v8, v2

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v8, v2

    const-string/jumbo v1, "wfl"

    .line 233
    invoke-static {v9, v0, v14, v1, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    const-string/jumbo v4, "wfcd"

    .line 234
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v14

    move/from16 v6, p3

    .line 235
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 236
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 237
    invoke-virtual {v1, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_29

    .line 238
    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 239
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 240
    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    goto :goto_1d

    :cond_21
    const/4 v6, 0x0

    :goto_1d
    move-wide/from16 v23, v12

    move-wide/from16 v12, v68

    .line 241
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v25

    if-eqz v5, :cond_22

    .line 242
    invoke-virtual {v5, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v27

    goto :goto_1e

    :cond_22
    const-wide/16 v27, 0x0

    .line 243
    :goto_1e
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 244
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_1f

    :cond_23
    const/4 v1, 0x0

    .line 245
    :goto_1f
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 246
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v5

    goto :goto_20

    :cond_24
    const/4 v5, 0x0

    .line 247
    :goto_20
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    if-eqz v8, :cond_25

    .line 248
    invoke-virtual {v8, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v29

    goto :goto_21

    :cond_25
    const-wide/16 v29, 0x0

    :goto_21
    if-eqz v8, :cond_26

    .line 249
    invoke-virtual {v8, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v32

    goto :goto_22

    :cond_26
    const-wide/16 v32, 0x0

    .line 250
    :goto_22
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 251
    invoke-virtual {v8, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v34

    goto :goto_23

    :cond_27
    const-wide/16 v34, 0x0

    :goto_23
    if-eqz v8, :cond_28

    .line 252
    invoke-virtual {v8, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v36

    goto :goto_24

    :cond_28
    const-wide/16 v36, 0x0

    :goto_24
    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/Object;

    .line 253
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v8, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    .line 254
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v8, v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v8, v3

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v8, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v8, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v8, v2

    .line 255
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v8, v2

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v8, v2

    .line 256
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v8, v2

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v8, v2

    const-string v1, "blem"

    .line 257
    invoke-static {v9, v0, v14, v1, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    :cond_29
    move-wide/from16 v23, v12

    move-wide/from16 v12, v68

    :goto_25
    const-string v4, "ble"

    .line 258
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v14

    move/from16 v6, p3

    .line 259
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 260
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_26
    if-ge v3, v1, :cond_2b

    .line 261
    invoke-virtual {v11, v3, v10}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v1

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    move v4, v1

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    goto :goto_26

    :cond_2b
    if-eqz v4, :cond_2c

    const-string/jumbo v1, "ua"

    .line 263
    invoke-static {v9, v0, v14, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_2c
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 265
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    .line 267
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 268
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    goto :goto_27

    :cond_2d
    const-wide/16 v4, 0x0

    :goto_27
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 269
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "awl"

    invoke-static {v9, v0, v14, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28

    :cond_2e
    const/4 v3, 0x1

    .line 270
    :goto_28
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 271
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v3

    move v6, v1

    :goto_29
    if-ltz v6, :cond_34

    .line 272
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v25, ""

    const/4 v4, 0x0

    .line 273
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 274
    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v26, "f"

    move-object v1, v7

    move-object/from16 v27, v15

    move v15, v4

    move-wide/from16 v3, v23

    move-wide/from16 v68, v12

    move-object v12, v5

    move-object/from16 v5, v26

    move v13, v6

    move/from16 v6, p3

    move-object/from16 v26, v7

    move-object/from16 v7, v25

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-virtual {v12, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v15

    const-string/jumbo v5, "p"

    move-object/from16 v1, v26

    move-object v2, v15

    .line 276
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v15, :cond_2f

    .line 277
    invoke-virtual {v15}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_2a

    :cond_2f
    const/4 v1, 0x0

    :goto_2a
    move-object v2, v1

    const-string v5, "bp"

    move-object/from16 v1, v26

    move-wide/from16 v3, v23

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x2

    .line 278
    invoke-virtual {v12, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "w"

    move-object/from16 v1, v26

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 279
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 280
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2c

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_30

    const/16 v2, 0x2c

    const/16 v3, 0x5f

    .line 282
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_30
    const/16 v3, 0x5f

    :goto_2b
    const/16 v2, 0xa

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_31

    .line 284
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_31
    const/16 v2, 0xd

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_32

    .line 286
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_32
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 287
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string/jumbo v1, "wl"

    invoke-static {v9, v0, v14, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_33
    const/4 v1, 0x1

    move v3, v1

    :goto_2c
    add-int/lit8 v6, v13, -0x1

    move-object/from16 v7, v26

    move-object/from16 v15, v27

    move-wide/from16 v12, v68

    goto/16 :goto_29

    :cond_34
    move-object/from16 v26, v7

    move-wide/from16 v68, v12

    move-object/from16 v27, v15

    .line 288
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_2d
    if-ltz v2, :cond_38

    .line 290
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v12, v23

    .line 291
    invoke-virtual {v3, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 292
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    .line 293
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_35

    move-wide/from16 v7, v68

    .line 294
    invoke-virtual {v3, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v23

    goto :goto_2e

    :cond_35
    move-wide/from16 v7, v68

    const-wide/16 v23, -0x1

    :goto_2e
    if-eqz v3, :cond_36

    .line 295
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    goto :goto_2f

    :cond_36
    move/from16 v3, v22

    :goto_2f
    const-wide/16 v17, 0x0

    cmp-long v15, v4, v17

    if-eqz v15, :cond_37

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    move-wide/from16 v68, v7

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v27

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 p5, v1

    move-object/from16 v1, v25

    check-cast v1, Ljava/lang/String;

    .line 297
    invoke-static {v7, v1, v8}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v15, v7

    .line 298
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v15, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v15, v4

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v15, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v15, v3

    const-string/jumbo v1, "sy"

    .line 299
    invoke-static {v9, v0, v14, v1, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_37
    move-object/from16 p5, v1

    move-wide/from16 v68, v7

    move-object/from16 v8, v27

    :goto_30
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, p5

    move-object/from16 v27, v8

    move-wide/from16 v23, v12

    goto/16 :goto_2d

    :cond_38
    move-wide/from16 v12, v23

    move-object/from16 v8, v27

    .line 300
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_31
    if-ltz v2, :cond_3c

    .line 302
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 303
    invoke-virtual {v3, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 304
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    .line 305
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_39

    move-wide/from16 v23, v12

    move-wide/from16 v12, v68

    .line 306
    invoke-virtual {v3, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v27

    goto :goto_32

    :cond_39
    move-wide/from16 v23, v12

    move-wide/from16 v12, v68

    const-wide/16 v27, -0x1

    :goto_32
    if-eqz v3, :cond_3a

    .line 307
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    goto :goto_33

    :cond_3a
    move/from16 v3, v22

    :goto_33
    const-wide/16 v17, 0x0

    cmp-long v7, v4, v17

    if-eqz v7, :cond_3b

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 308
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 p5, v1

    move-object/from16 v1, v25

    check-cast v1, Ljava/lang/String;

    .line 309
    invoke-static {v15, v1, v8}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v7, v15

    .line 310
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v7, v4

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v7, v3

    const-string/jumbo v1, "jb"

    .line 311
    invoke-static {v9, v0, v14, v1, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    :cond_3b
    move-object/from16 p5, v1

    :goto_34
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, p5

    move-wide/from16 v68, v12

    move-wide/from16 v12, v23

    goto :goto_31

    :cond_3c
    move-wide/from16 v23, v12

    move-wide/from16 v12, v68

    .line 312
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_35
    if-ltz v2, :cond_3e

    .line 314
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    const/4 v4, 0x6

    if-eqz v3, :cond_3d

    new-array v4, v4, [Ljava/lang/Object;

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 317
    invoke-static {v5, v6, v8}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 318
    invoke-virtual {v3, v6, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 319
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 320
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    .line 321
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v4, v7

    .line 322
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v4, v5

    const-string/jumbo v3, "jbc"

    .line 323
    invoke-static {v9, v0, v14, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    :cond_3e
    const/4 v15, 0x6

    const-string v4, "fla"

    .line 324
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v14

    move-wide/from16 v6, v23

    move-object/from16 v72, v8

    move-object/from16 v71, v26

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "cam"

    .line 325
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v4, "vid"

    .line 326
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "aud"

    .line 327
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 328
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_43

    .line 330
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Sensor;

    .line 331
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 332
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_41

    move-wide/from16 v7, v23

    .line 333
    invoke-virtual {v6, v7, v8, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    const-wide/16 v24, 0x1f4

    add-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    const-wide/16 v17, 0x0

    cmp-long v24, v22, v17

    if-eqz v24, :cond_42

    .line 334
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v24

    .line 335
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 336
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v25

    goto :goto_37

    :cond_3f
    const/16 v25, 0x0

    .line 337
    :goto_37
    invoke-virtual {v6, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v26

    if-eqz v4, :cond_40

    .line 338
    invoke-virtual {v4, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    goto :goto_38

    :cond_40
    const-wide/16 v28, 0x0

    :goto_38
    new-array v4, v15, [Ljava/lang/Object;

    .line 339
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 340
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const-string/jumbo v5, "sr"

    .line 341
    invoke-static {v9, v0, v14, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_39

    :cond_41
    move-wide/from16 v7, v23

    :cond_42
    :goto_39
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v23, v7

    goto :goto_36

    :cond_43
    move-wide/from16 v7, v23

    const-string/jumbo v4, "vib"

    .line 342
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v14

    move-wide/from16 v6, v23

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "fg"

    .line 343
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v4, "fgs"

    .line 344
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    new-array v1, v15, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_3a
    if-ge v2, v15, :cond_44

    move-wide/from16 v5, v23

    .line 345
    invoke-virtual {v11, v2, v5, v6, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    add-long/2addr v3, v7

    const-wide/16 v22, 0x1f4

    add-long v7, v7, v22

    const-wide/16 v24, 0x3e8

    .line 346
    div-long v7, v7, v24

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v23, v5

    goto :goto_3a

    :cond_44
    move-wide/from16 v5, v23

    const-wide/16 v7, 0x0

    const-wide/16 v22, 0x1f4

    cmp-long v2, v3, v7

    if-lez v2, :cond_45

    const-string/jumbo v2, "st"

    .line 347
    invoke-static {v9, v0, v14, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_45
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v1

    .line 349
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v3

    cmp-long v15, v1, v7

    if-gtz v15, :cond_47

    cmp-long v15, v3, v7

    if-lez v15, :cond_46

    goto :goto_3b

    :cond_46
    const/4 v1, 0x0

    goto :goto_3c

    :cond_47
    :goto_3b
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v24, 0x3e8

    .line 350
    div-long v1, v1, v24

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    div-long v3, v3, v24

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v7, v3

    const-string v1, "cpu"

    .line 352
    invoke-static {v9, v0, v14, v1, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    :goto_3c
    if-eqz p1, :cond_4e

    .line 353
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 354
    array-length v3, v2

    move-object/from16 v4, p1

    array-length v7, v4

    if-ne v3, v7, :cond_4d

    move-object/from16 v3, v71

    .line 355
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    .line 356
    :goto_3d
    array-length v7, v2

    if-ge v1, v7, :cond_49

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_48

    const-string v8, ""

    goto :goto_3e

    :cond_48
    move-object/from16 v8, v70

    :goto_3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v4

    move-wide/from16 v24, v5

    aget-wide v4, v2, v1

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, p1

    move-wide/from16 v5, v24

    goto :goto_3d

    :cond_49
    move-object/from16 p1, v4

    move-wide/from16 v24, v5

    .line 358
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v1

    if-eqz v1, :cond_4b

    const/4 v4, 0x0

    .line 359
    :goto_3f
    array-length v5, v1

    if-ge v4, v5, :cond_4a

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v70

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v7, v1, v4

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_4a
    move-object/from16 v6, v70

    goto :goto_41

    :cond_4b
    move-object/from16 v6, v70

    const/4 v1, 0x0

    .line 361
    :goto_40
    array-length v4, v2

    if-ge v1, v4, :cond_4c

    const-string v4, ",0"

    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4c
    :goto_41
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "A"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 363
    array-length v2, v2

    .line 364
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "ctf"

    .line 365
    invoke-static {v9, v0, v14, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    :cond_4d
    move-object/from16 p1, v4

    :cond_4e
    move-wide/from16 v24, v5

    move-object/from16 v6, v70

    move-object/from16 v3, v71

    const/4 v4, 0x1

    .line 366
    :goto_42
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_43
    if-ltz v2, :cond_51

    .line 368
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 369
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v7

    .line 370
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v26

    .line 371
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v28

    .line 372
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v5

    .line 373
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v15

    .line 374
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v4

    const-wide/16 v17, 0x0

    cmp-long v30, v7, v17

    if-nez v30, :cond_50

    cmp-long v30, v26, v17

    if-nez v30, :cond_50

    cmp-long v30, v28, v17

    if-nez v30, :cond_50

    if-nez v5, :cond_50

    if-nez v4, :cond_50

    if-eqz v15, :cond_4f

    goto :goto_44

    :cond_4f
    move-object/from16 v71, v3

    move-object/from16 v70, v6

    move-wide/from16 v68, v12

    move-object/from16 v12, v72

    goto :goto_45

    :cond_50
    :goto_44
    move-object/from16 v71, v3

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v70, v6

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    move-wide/from16 v68, v12

    move-object/from16 v12, v72

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 376
    invoke-static {v6, v13, v12}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v3, v13

    .line 377
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "pr"

    .line 378
    invoke-static {v9, v0, v14, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_45
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v72, v12

    move-wide/from16 v12, v68

    move-object/from16 v6, v70

    move-object/from16 v3, v71

    goto/16 :goto_43

    :cond_51
    move-object/from16 v71, v3

    move-object/from16 v70, v6

    move-wide/from16 v68, v12

    move-object/from16 v12, v72

    .line 379
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_46
    if-ltz v2, :cond_56

    .line 381
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    .line 382
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 383
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v3, 0x0

    :goto_47
    if-ltz v6, :cond_52

    .line 384
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 385
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v11, 0x2c

    const/16 v13, 0x5f

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v11, v13

    .line 386
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v11, v8

    const-string/jumbo v7, "wua"

    invoke-static {v9, v0, v14, v7, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_47

    .line 387
    :cond_52
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 388
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_48
    if-ltz v5, :cond_55

    .line 389
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v7, v66

    .line 390
    invoke-virtual {v6, v7, v8, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v26

    .line 391
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v11

    .line 392
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v6

    const-wide/16 v17, 0x0

    cmp-long v13, v26, v17

    if-nez v13, :cond_53

    if-nez v11, :cond_53

    if-eqz v6, :cond_54

    :cond_53
    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    .line 393
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v28, 0x0

    aput-object v15, v13, v28

    .line 394
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    const/16 v28, 0x1

    aput-object v15, v13, v28

    .line 395
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    const/16 v28, 0x2

    aput-object v15, v13, v28

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    .line 396
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v26, 0x3

    aput-object v15, v13, v26

    .line 397
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v15, 0x4

    aput-object v11, v13, v15

    .line 398
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x5

    aput-object v6, v13, v11

    const-string v6, "apk"

    .line 399
    invoke-static {v9, v0, v14, v6, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_54
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v66, v7

    goto :goto_48

    :cond_55
    move-wide/from16 v7, v66

    const-wide/16 v17, 0x0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_46

    :cond_56
    move-wide/from16 v7, v66

    const-wide/16 v17, 0x0

    :goto_49
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v66, v7

    move-object v15, v12

    move-object/from16 v11, v16

    move/from16 v8, v21

    move-wide/from16 v12, v24

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    goto/16 :goto_18

    :cond_57
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    const-string v1, "\""

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "27"

    const/4 v9, 0x0

    aput-object v3, v2, v9

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x1

    aput-object v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x2

    aput-object v3, v2, v11

    const/4 v3, 0x3

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v12, "i"

    const-string/jumbo v3, "vers"

    .line 424
    invoke-static {v0, v9, v12, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    and-int/lit8 v2, p4, 0xe

    if-eqz v2, :cond_0

    move v13, v10

    goto :goto_0

    :cond_0
    move v13, v9

    :goto_0
    and-int/lit8 v2, p4, 0x10

    if-nez v2, :cond_1

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_3

    .line 426
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v9

    .line 427
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/16 v3, 0x9

    .line 428
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v4, "hsp"

    .line 429
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 430
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ","

    .line 431
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v7, v2}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ",\""

    .line 433
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v7, v2}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    .line 435
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\\""

    .line 436
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v4, p5

    .line 440
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_3
    :goto_2
    if-eqz v13, :cond_4

    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_4

    return-void

    :cond_4
    if-eqz v8, :cond_8

    .line 442
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move v2, v9

    .line 443
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 444
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 445
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 446
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 447
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_5

    .line 448
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/MutableBoolean;

    invoke-direct {v6, v9}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    :cond_5
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 451
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 452
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v4, v11, [Ljava/lang/String;

    move v5, v9

    :goto_4
    if-ge v5, v3, :cond_8

    .line 453
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 454
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    if-eqz v8, :cond_7

    .line 455
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v11

    check-cast v14, Landroid/util/MutableBoolean;

    iget-boolean v14, v14, Landroid/util/MutableBoolean;->value:Z

    if-nez v14, :cond_7

    .line 456
    check-cast v11, Landroid/util/MutableBoolean;

    iput-boolean v10, v11, Landroid/util/MutableBoolean;->value:Z

    move v11, v9

    .line 457
    :goto_5
    iget-object v14, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_7

    .line 458
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v9

    .line 459
    iget-object v14, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v4, v10

    const-string/jumbo v14, "uid"

    .line 460
    invoke-static {v0, v9, v12, v14, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    if-eqz v13, :cond_9

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_d

    :cond_9
    const-string v1, "dsd"

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v3, v1, v2, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    new-array v1, v10, [Ljava/lang/String;

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v13, 0x3e8

    mul-long/2addr v4, v13

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-ltz v2, :cond_a

    .line 463
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "dtr"

    .line 464
    invoke-static {v0, v9, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const-string v2, "csd"

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-static {v0, v3, v2, v4, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v13

    invoke-virtual {v7, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    cmp-long v4, v2, v15

    if-ltz v4, :cond_b

    .line 467
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "ctr"

    .line 468
    invoke-static {v0, v9, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const/4 v4, 0x0

    const/4 v5, -0x1

    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_c

    move v6, v10

    goto :goto_6

    :cond_c
    move v6, v9

    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 469
    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    :cond_d
    return-void
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v1, p3, 0xe

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    const-wide/16 v12, 0x0

    if-nez v1, :cond_1

    if-nez v11, :cond_6

    .line 1040
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v1

    int-to-long v1, v1

    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v3

    int-to-long v3, v3

    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    const-string v5, "Battery History ("

    .line 1043
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v3

    .line 1044
    div-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, "% used, "

    .line 1045
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    invoke-direct {v8, v0, v3, v4}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v3, " used of "

    .line 1047
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    invoke-direct {v8, v0, v1, v2}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, ", "

    .line 1049
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " strings using "

    .line 1051
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v8, v0, v1, v2}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, "):"

    .line 1053
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p5

    .line 1054
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    .line 1057
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1058
    :try_start_1
    new-instance v14, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v14}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-string v1, "Old battery History:"

    .line 1059
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v15, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v15}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v1, -0x1

    .line 1061
    :goto_2
    invoke-virtual {v8, v14}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v3

    if-eqz v3, :cond_5

    cmp-long v3, v1, v12

    if-gez v3, :cond_3

    .line 1062
    iget-wide v1, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    :cond_3
    move-wide/from16 v16, v1

    const/4 v6, 0x0

    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    move-object v1, v15

    move-object/from16 v2, p2

    move-object v3, v14

    move-wide/from16 v4, v16

    .line 1063
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-wide/from16 v1, v16

    goto :goto_2

    .line 1064
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1065
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    throw v0

    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-nez v11, :cond_c

    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 1067
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v5, v2, :cond_b

    .line 1069
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    .line 1070
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v7

    if-eqz v7, :cond_a

    const/4 v14, 0x0

    .line 1071
    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_a

    .line 1072
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v6, :cond_8

    const-string v6, "Per-PID Stats:"

    .line 1073
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 1074
    :cond_8
    iget-wide v12, v15, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v9, v15, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    move/from16 v18, v11

    if-lez v9, :cond_9

    iget-wide v10, v15, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v10, v3, v10

    goto :goto_7

    :cond_9
    const-wide/16 v10, 0x0

    :goto_7
    add-long/2addr v12, v10

    const-string v10, "  PID "

    .line 1075
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " wake time: "

    .line 1076
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v10, ""

    .line 1078
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v18

    const-wide/16 v12, 0x0

    goto :goto_6

    :cond_a
    move/from16 v18, v11

    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v18

    const-wide/16 v12, 0x0

    goto :goto_5

    :cond_b
    move/from16 v18, v11

    if-eqz v6, :cond_d

    .line 1079
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    :cond_c
    move/from16 v18, v11

    :cond_d
    :goto_8
    if-eqz v18, :cond_e

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_13

    :cond_e
    const-string v1, "Discharge step durations:"

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    const-string v7, "  "

    const/4 v3, 0x0

    .line 1081
    invoke-static {v0, v7, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    const-wide/16 v10, 0x3e8

    if-eqz v1, :cond_11

    .line 1082
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v1, v10

    .line 1083
    invoke-virtual {v8, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_f

    const-string v3, "  Estimated discharge time remaining: "

    .line 1084
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    div-long/2addr v1, v10

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1086
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1087
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    .line 1088
    :goto_9
    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v2, v1

    if-ge v13, v2, :cond_10

    const-string v2, "  Estimated "

    .line 1089
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, v13

    const-string v4, " time: "

    aget v1, v1, v13

    int-to-long v5, v1

    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v1, v1, v13

    int-to-long v14, v1

    const/16 v24, 0x0

    move-object/from16 v19, v12

    move-wide/from16 v20, v5

    move-wide/from16 v22, v14

    .line 1090
    invoke-virtual/range {v19 .. v24}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    move-object/from16 v1, p2

    .line 1091
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 1092
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_11
    const-string v1, "Charge step durations:"

    .line 1093
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    const/4 v3, 0x0

    .line 1094
    invoke-static {v0, v7, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v1, v10

    .line 1096
    invoke-virtual {v8, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_12

    const-string v3, "  Estimated charge time remaining: "

    .line 1097
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    div-long/2addr v1, v10

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1100
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_13
    const/16 v10, 0x40

    if-eqz v18, :cond_15

    and-int/lit8 v1, p3, 0x6

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_15
    :goto_a
    const-string v1, "Daily stats:"

    .line 1101
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Current start time: "

    .line 1102
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v1

    const-string/jumbo v11, "yyyy-MM-dd-HH-mm-ss"

    .line 1104
    invoke-static {v11, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1105
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Next min deadline: "

    .line 1107
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v1

    .line 1109
    invoke-static {v11, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1110
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Next max deadline: "

    .line 1112
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v1

    .line 1114
    invoke-static {v11, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1115
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v13, 0x1

    new-array v14, v13, [I

    .line 1118
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v5

    .line 1119
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v15

    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v7

    .line 1121
    iget v1, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v6, "    "

    if-gtz v1, :cond_17

    iget v1, v15, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_17

    if-eqz v7, :cond_16

    goto :goto_b

    :cond_16
    move-object v9, v6

    goto/16 :goto_e

    :cond_17
    :goto_b
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_19

    if-nez v18, :cond_18

    goto :goto_c

    :cond_18
    const-string v1, "  Current daily steps:"

    .line 1122
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    const-string v4, "Discharge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v7, v6

    move-object v6, v12

    move-object v9, v7

    move-object v7, v14

    .line 1123
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v3, "    "

    const-string v4, "Charge"

    move-object v5, v15

    .line 1124
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_e

    :cond_19
    :goto_c
    move-object v9, v6

    const-string v1, "  Current daily discharge step durations:"

    const/4 v2, 0x0

    .line 1125
    invoke-static {v0, v9, v1, v5, v2}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v3, "      "

    const-string v4, "Discharge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v12

    move-object v13, v7

    move-object v7, v14

    .line 1126
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_d

    :cond_1a
    move-object v13, v7

    :goto_d
    const-string v1, "  Current daily charge step durations:"

    const/4 v2, 0x0

    .line 1127
    invoke-static {v0, v9, v1, v15, v2}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v3, "      "

    const-string v4, "Charge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v15

    move-object v6, v12

    move-object v7, v14

    .line 1128
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 1129
    :cond_1b
    invoke-direct {v8, v0, v9, v13}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_e
    const/4 v1, 0x0

    .line 1130
    :goto_f
    invoke-virtual {v8, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v13

    if-eqz v13, :cond_21

    add-int/lit8 v15, v1, 0x1

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1c

    .line 1131
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1c
    const-string v2, "  Daily from "

    .line 1132
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    iget-wide v2, v13, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v11, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " to "

    .line 1134
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    iget-wide v2, v13, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v11, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    .line 1136
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v1, :cond_1e

    if-nez v18, :cond_1d

    goto :goto_10

    :cond_1d
    const-string v3, "    "

    const-string v4, "Discharge"

    .line 1137
    iget-object v5, v13, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v12

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v3, "    "

    const-string v4, "Charge"

    .line 1138
    iget-object v5, v13, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const/4 v10, 0x0

    goto :goto_13

    :cond_1e
    :goto_10
    const-string v1, "    Discharge step durations:"

    .line 1139
    iget-object v2, v13, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v7, "      "

    const/4 v3, 0x0

    invoke-static {v0, v7, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v3, "        "

    const-string v4, "Discharge"

    .line 1140
    iget-object v5, v13, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v12

    move-object v10, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_11

    :cond_1f
    move-object v10, v7

    :goto_11
    const-string v1, "    Charge step durations:"

    .line 1141
    iget-object v2, v13, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v7, 0x0

    invoke-static {v0, v10, v1, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v3, "        "

    const-string v4, "Charge"

    .line 1142
    iget-object v5, v13, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v12

    move v10, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_12

    :cond_20
    move v10, v7

    .line 1143
    :goto_12
    iget-object v1, v13, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v8, v0, v9, v1}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_13
    move v1, v15

    const/16 v10, 0x40

    goto/16 :goto_f

    :cond_21
    const/4 v10, 0x0

    .line 1144
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_14
    if-eqz v18, :cond_22

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_24

    :cond_22
    const-string v1, "Statistics since last charge:"

    .line 1145
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  System starts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currently on battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v1, 0x40

    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_23

    const/4 v7, 0x1

    goto :goto_15

    :cond_23
    move v7, v10

    :goto_15
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p4

    .line 1149
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 1150
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_24
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 108

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move/from16 v11, p5

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v16, 0x3e8

    mul-long v0, v0, v16

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long v9, v2, v16

    const-wide/16 v18, 0x1f4

    add-long v2, v9, v18

    .line 4
    div-long v5, v2, v16

    .line 5
    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v3

    move-wide/from16 v20, v3

    .line 6
    invoke-virtual {v7, v0, v1, v13}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    move-wide/from16 v22, v5

    .line 7
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v5

    .line 8
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v11

    .line 9
    invoke-virtual {v7, v0, v1, v13}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v24

    .line 10
    invoke-virtual {v7, v0, v1, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v0

    move-wide/from16 v26, v0

    .line 11
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v0

    .line 12
    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v28

    .line 13
    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v30

    move-wide/from16 v32, v0

    .line 14
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v0

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    move-wide/from16 v34, v9

    .line 17
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v10

    move-object/from16 v36, v4

    const-string v4, " mAh"

    move/from16 v37, v9

    const/4 v9, 0x0

    if-lez v10, :cond_0

    const-string v13, "  Estimated battery capacity: "

    .line 19
    invoke-static {v8, v9, v14, v13}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    int-to-double v9, v10

    .line 20
    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v10, 0x0

    .line 24
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 25
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Min learned battery capacity: "

    .line 26
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    div-int/lit16 v9, v9, 0x3e8

    int-to-double v9, v9

    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v10, 0x0

    .line 31
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 32
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Max learned battery capacity: "

    .line 33
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    div-int/lit16 v9, v9, 0x3e8

    int-to-double v9, v9

    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v9, 0x0

    .line 37
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 38
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Time on battery: "

    .line 39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    div-long v9, v5, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v13, "("

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v38, v9

    .line 41
    invoke-virtual {v7, v5, v6, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") realtime, "

    .line 42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    div-long v9, v2, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 44
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") uptime"

    .line 45
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 48
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Time on battery screen off: "

    .line 49
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    div-long v2, v32, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v32

    .line 51
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") realtime, "

    .line 52
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    div-long v2, v26, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 54
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v26

    .line 55
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") uptime"

    .line 56
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 59
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Time on battery screen doze: "

    .line 60
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    .line 63
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 66
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total run time: "

    .line 67
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    div-long v11, v11, v16

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "realtime, "

    .line 69
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    div-long v0, v24, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "uptime"

    .line 71
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v24, 0x0

    cmp-long v0, v28, v24

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    .line 73
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Battery time remaining: "

    .line 75
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    div-long v0, v28, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    cmp-long v0, v30, v24

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    .line 78
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Charge time remaining: "

    .line 80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    div-long v0, v30, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    move/from16 v11, p4

    .line 83
    invoke-virtual {v7, v11}, Landroid/os/BatteryStats;->getMahDischarge(I)J

    move-result-wide v0

    cmp-long v2, v0, v24

    if-ltz v2, :cond_5

    const/4 v2, 0x0

    const-string v3, "  Discharge: "

    .line 84
    invoke-static {v8, v2, v14, v3}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    long-to-double v2, v0

    const-wide v26, 0x408f400000000000L    # 1000.0

    div-double v2, v2, v26

    .line 85
    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    :cond_5
    invoke-virtual {v7, v11}, Landroid/os/BatteryStats;->getMahDischargeScreenOff(I)J

    move-result-wide v2

    cmp-long v9, v2, v24

    if-ltz v9, :cond_6

    const/4 v9, 0x0

    const-string v12, "  Screen off discharge: "

    .line 89
    invoke-static {v8, v9, v14, v12}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move-object v12, v10

    long-to-double v9, v2

    const-wide v26, 0x408f400000000000L    # 1000.0

    div-double v9, v9, v26

    .line 90
    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v12, v10

    .line 93
    :goto_0
    invoke-virtual {v7, v11}, Landroid/os/BatteryStats;->getMahDischargeScreenDoze(I)J

    move-result-wide v9

    cmp-long v26, v9, v24

    if-ltz v26, :cond_7

    move-object/from16 v26, v12

    const/4 v12, 0x0

    move-wide/from16 v27, v5

    const-string v5, "  Screen doze discharge: "

    .line 94
    invoke-static {v8, v12, v14, v5}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    long-to-double v5, v9

    const-wide v29, 0x408f400000000000L    # 1000.0

    div-double v5, v5, v29

    .line 95
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-wide/from16 v27, v5

    move-object/from16 v26, v12

    :goto_1
    sub-long/2addr v0, v2

    sub-long/2addr v0, v9

    cmp-long v2, v0, v24

    if-ltz v2, :cond_8

    const/4 v2, 0x0

    const-string v3, "  Screen on discharge: "

    .line 98
    invoke-static {v8, v2, v14, v3}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 99
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    const-string v0, "  Start clock time: "

    .line 102
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v9, v34

    .line 104
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    .line 105
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v2

    .line 106
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v4

    const/4 v6, 0x1

    move-wide/from16 v29, v4

    .line 107
    invoke-virtual {v7, v6, v9, v10, v11}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v4

    const/4 v12, 0x2

    move-wide/from16 v31, v4

    .line 108
    invoke-virtual {v7, v12, v9, v10, v11}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v4

    move-wide/from16 v33, v4

    .line 109
    invoke-virtual {v7, v6, v9, v10, v11}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v4

    move-wide/from16 v40, v4

    .line 110
    invoke-virtual {v7, v12, v9, v10, v11}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v4

    move-wide/from16 v42, v4

    .line 111
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v4

    .line 112
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    .line 113
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    const/4 v6, 0x0

    .line 114
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 115
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  Screen on: "

    .line 116
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v44, v4

    div-long v4, v0, v16

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 117
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v27

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") "

    .line 118
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x, Interactive: "

    .line 119
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v27, v0

    div-long v0, v2, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 120
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    .line 121
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Screen brightnesses:"

    .line 125
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    const-string v3, " "

    if-ge v0, v2, :cond_a

    move-wide/from16 v46, v5

    .line 126
    invoke-virtual {v7, v0, v9, v10, v11}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    cmp-long v2, v5, v24

    if-nez v2, :cond_9

    move v3, v1

    move-wide/from16 v1, v27

    goto :goto_3

    :cond_9
    const-string v1, "\n    "

    .line 127
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    sget-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    div-long v1, v5, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 132
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v27

    .line 133
    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v27, v1

    move v1, v3

    move-wide/from16 v5, v46

    goto :goto_2

    :cond_a
    move-wide/from16 v46, v5

    const-string v6, " (no activity)"

    if-nez v1, :cond_b

    .line 135
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v0, v29, v24

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 137
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Power save mode enabled: "

    .line 139
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    div-long v0, v29, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 141
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v6

    move-wide/from16 v5, v29

    move-wide/from16 v1, v46

    .line 142
    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object/from16 v26, v6

    move-wide/from16 v1, v46

    :goto_4
    cmp-long v0, v40, v24

    const-string/jumbo v6, "x"

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 145
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device light idling: "

    .line 147
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v3

    move-object v5, v4

    .line 148
    div-long v3, v40, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 149
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v40

    .line 150
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v11}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move-object/from16 v27, v3

    move-object v5, v4

    :goto_5
    cmp-long v0, v31, v24

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 154
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode light time: "

    .line 156
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    div-long v3, v31, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 158
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v31

    .line 159
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 161
    invoke-virtual {v7, v0, v11}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- longest "

    .line 163
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v3

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 165
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    cmp-long v0, v42, v24

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 166
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 167
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device full idling: "

    .line 168
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    div-long v3, v42, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 170
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v42

    .line 171
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v11}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    cmp-long v0, v33, v24

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 175
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 176
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode full time: "

    .line 177
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    div-long v3, v33, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 179
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v33

    .line 180
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 182
    invoke-virtual {v7, v0, v11}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- longest "

    .line 184
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v3

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    cmp-long v0, v44, v24

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 187
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 188
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Active phone call: "

    .line 189
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v44, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 190
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v44

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_11
    invoke-virtual {v7, v11}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 193
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Connectivity changes: "

    .line 194
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 195
    :cond_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move-wide/from16 v28, v24

    move-wide/from16 v30, v28

    :goto_6
    move/from16 v3, v37

    if-ge v0, v3, :cond_17

    move-object/from16 v32, v6

    move-object/from16 v6, v36

    .line 196
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/BatteryStats$Uid;

    move/from16 v37, v3

    .line 197
    invoke-virtual/range {v33 .. v33}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v6, v34

    :goto_7
    if-ltz v6, :cond_16

    .line 199
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v35, v12

    move-object/from16 v12, v34

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v34, v5

    const/4 v5, 0x1

    .line 200
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 201
    invoke-virtual {v5, v9, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v40

    add-long v40, v40, v28

    move-wide/from16 v28, v40

    :cond_13
    const/4 v5, 0x0

    .line 202
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 203
    invoke-virtual {v5, v9, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v46

    cmp-long v12, v46, v24

    if-lez v12, :cond_15

    if-gez p5, :cond_14

    .line 204
    new-instance v12, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v40

    check-cast v41, Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v42

    move-object/from16 v40, v12

    move-object/from16 v43, v5

    move-wide/from16 v44, v46

    invoke-direct/range {v40 .. v45}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-long v30, v30, v46

    :cond_15
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v5, v34

    move-object/from16 v12, v35

    goto :goto_7

    :cond_16
    move-object/from16 v34, v5

    move-object/from16 v35, v12

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v32

    goto :goto_6

    :cond_17
    move/from16 v37, v3

    move-object/from16 v34, v5

    move-object/from16 v32, v6

    move-object/from16 v35, v12

    const/4 v0, 0x0

    .line 205
    invoke-virtual {v7, v0, v11}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    const/4 v3, 0x1

    move-wide/from16 v46, v1

    .line 206
    invoke-virtual {v7, v3, v11}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const/4 v3, 0x2

    move-object v12, v4

    .line 207
    invoke-virtual {v7, v3, v11}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v2, 0x3

    move-wide/from16 v40, v3

    .line 208
    invoke-virtual {v7, v2, v11}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    move-wide/from16 v42, v3

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v7, v2, v11}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const/4 v4, 0x1

    move-wide/from16 v44, v2

    .line 210
    invoke-virtual {v7, v4, v11}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const/4 v4, 0x2

    move-wide/from16 v48, v2

    .line 211
    invoke-virtual {v7, v4, v11}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const/4 v4, 0x3

    move-wide/from16 v50, v2

    .line 212
    invoke-virtual {v7, v4, v11}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v3

    const/4 v2, 0x4

    move-wide/from16 v52, v3

    .line 213
    invoke-virtual {v7, v2, v11}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v2, 0x5

    move-wide/from16 v54, v3

    .line 214
    invoke-virtual {v7, v2, v11}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    cmp-long v2, v28, v24

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 216
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total full wakelock time: "

    .line 217
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v28, v28, v18

    move-wide/from16 v56, v3

    div-long v2, v28, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 218
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    move-wide/from16 v56, v3

    :goto_8
    cmp-long v2, v30, v24

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    .line 219
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 220
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total partial wakelock time: "

    .line 221
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v30, v30, v18

    div-long v2, v30, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 222
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19
    const-string v2, ""

    .line 223
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 225
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  CONNECTIVITY POWER SUMMARY START"

    .line 227
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Logging duration for connectivity statistics: "

    .line 230
    invoke-static {v8, v2, v14, v3}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v2, v38

    .line 231
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 232
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 233
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Cellular Statistics:"

    .line 235
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "     Cellular kernel active time: "

    .line 238
    invoke-static {v8, v2, v14, v3}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    move-wide/from16 v28, v9

    .line 240
    div-long v9, v3, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 241
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v46

    invoke-virtual {v7, v3, v4, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v34

    .line 242
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "     Cellular data received: "

    .line 244
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "     Cellular data sent: "

    .line 245
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular packets received: "

    .line 246
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v44

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Cellular packets sent: "

    .line 247
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v48

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    const-string v1, "     Cellular Radio Access Technology:"

    .line 248
    invoke-static {v8, v0, v14, v1}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_9
    const/16 v2, 0x11

    if-ge v0, v2, :cond_1b

    move-wide/from16 v5, v28

    move-wide/from16 v28, v3

    .line 249
    invoke-virtual {v7, v0, v5, v6, v11}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v2

    cmp-long v4, v2, v24

    if-nez v4, :cond_1a

    move-wide/from16 v30, v5

    move-object/from16 v6, v35

    goto :goto_a

    :cond_1a
    const-string v1, "\n       "

    .line 250
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    sget-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    .line 253
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v30, v5

    .line 254
    div-long v4, v2, v16

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 255
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v7, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v35

    .line 257
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v35, v6

    move-wide/from16 v3, v28

    move-wide/from16 v28, v30

    goto :goto_9

    :cond_1b
    move-wide/from16 v30, v28

    move-object/from16 v6, v35

    move-wide/from16 v28, v3

    move-object/from16 v5, v26

    if-nez v1, :cond_1c

    .line 258
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_1c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 260
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 261
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular Rx signal strength (RSRP):"

    .line 262
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "good (-108dBm to -98dBm): "

    const-string/jumbo v1, "great (greater than -98dBm): "

    const-string/jumbo v2, "very poor (less than -128dBm): "

    const-string/jumbo v3, "poor (-128dBm to -118dBm): "

    const-string/jumbo v4, "moderate (-118dBm to -108dBm): "

    .line 263
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 264
    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v1, :cond_1e

    move-object/from16 v26, v5

    move-wide/from16 v46, v9

    move-wide/from16 v4, v30

    .line 265
    invoke-virtual {v7, v2, v4, v5, v11}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v9

    cmp-long v30, v9, v24

    if-nez v30, :cond_1d

    move/from16 v30, v1

    move v9, v3

    move-object/from16 v3, v27

    move-object/from16 v27, v0

    move-wide/from16 v0, v46

    goto :goto_c

    :cond_1d
    const-string v3, "\n       "

    .line 266
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    aget-object v3, v0, v2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    .line 269
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move/from16 v30, v1

    .line 270
    div-long v0, v9, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 271
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v46

    .line 272
    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :goto_c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v106, v27

    move-object/from16 v27, v3

    move v3, v9

    move-wide v9, v0

    move-object/from16 v0, v106

    move/from16 v1, v30

    move-wide/from16 v30, v4

    move-object/from16 v5, v26

    goto :goto_b

    :cond_1e
    move-object/from16 v26, v5

    move-wide v0, v9

    move-object/from16 v9, v27

    move-wide/from16 v4, v30

    move-object/from16 v10, v26

    if-nez v3, :cond_1f

    .line 274
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v26, "Cellular"

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v27

    move-wide v1, v0

    move-object/from16 v0, p0

    move-wide/from16 v30, v1

    move-object/from16 v1, p2

    move-object v3, v9

    move-object/from16 v33, v34

    move-object/from16 v34, v10

    move-wide/from16 v9, v50

    move-object v2, v8

    move-wide/from16 v58, v20

    move-wide/from16 v66, v28

    move/from16 v20, v37

    move-wide/from16 v9, v42

    move-wide/from16 v60, v52

    move-wide/from16 v62, v54

    move-wide/from16 v64, v56

    move-object/from16 v29, v3

    move-object/from16 v21, v12

    move-object/from16 v28, v13

    move-wide/from16 v12, v40

    move-object/from16 v3, p3

    move-object/from16 v68, v33

    move-wide/from16 v106, v4

    move-object/from16 v5, v36

    move-wide/from16 v35, v106

    move-object/from16 v4, v26

    move-object/from16 v75, v5

    move-wide/from16 v71, v22

    move-wide/from16 v73, v30

    move-object/from16 v22, v34

    move-wide/from16 v69, v35

    move-object/from16 v5, v27

    move-object/from16 v76, v6

    move-object/from16 v77, v22

    move-object/from16 v78, v32

    move/from16 v6, p4

    .line 277
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 278
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 279
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 280
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wifi Statistics:"

    .line 281
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data received: "

    .line 283
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12, v13}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data sent: "

    .line 284
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi packets received: "

    .line 285
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v50

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Wifi packets sent: "

    .line 286
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v60

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    const-string v1, "     Wifi states:"

    .line 287
    invoke-static {v8, v0, v14, v1}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x8

    if-ge v0, v2, :cond_21

    move-wide/from16 v9, v69

    .line 288
    invoke-virtual {v7, v0, v9, v10, v11}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v2

    cmp-long v4, v2, v24

    if-nez v4, :cond_20

    move-object/from16 v13, v28

    move-object/from16 v12, v29

    move-wide/from16 v5, v73

    move-object/from16 v4, v76

    goto :goto_e

    :cond_20
    const-string v1, "\n       "

    .line 289
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    sget-object v1, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v29

    .line 291
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    div-long v4, v2, v16

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v13, v28

    .line 293
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v73

    .line 294
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v76

    .line 295
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v76, v4

    move-wide/from16 v73, v5

    move-wide/from16 v69, v9

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    goto :goto_d

    :cond_21
    move-object/from16 v13, v28

    move-object/from16 v12, v29

    move-wide/from16 v9, v69

    move-wide/from16 v5, v73

    move-object/from16 v4, v76

    move-object/from16 v0, v77

    if-nez v1, :cond_22

    .line 296
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Wifi supplicant states:"

    .line 300
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    const/16 v3, 0xd

    if-ge v1, v3, :cond_24

    .line 301
    invoke-virtual {v7, v1, v9, v10, v11}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v14

    cmp-long v3, v14, v24

    if-nez v3, :cond_23

    goto :goto_10

    :cond_23
    const-string v2, "\n       "

    .line 302
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    sget-object v2, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    div-long v2, v14, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 306
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v7, v14, v15, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_10
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    goto :goto_f

    :cond_24
    if-nez v2, :cond_25

    .line 309
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_25
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, p2

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v14, p3

    .line 312
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Wifi Rx signal strength (RSSI):"

    .line 313
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "good (-66.25dBm to -55dBm): "

    const-string/jumbo v2, "great (greater than -55dBm): "

    const-string/jumbo v3, "very poor (less than -88.75dBm): "

    move-object/from16 v29, v12

    const-string/jumbo v12, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v15, "moderate (-77.5dBm to -66.25dBm): "

    .line 314
    filled-new-array {v3, v12, v15, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 315
    invoke-static {v2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_11
    if-ge v3, v2, :cond_27

    move-object/from16 v35, v4

    move-wide/from16 v73, v5

    .line 316
    invoke-virtual {v7, v3, v9, v10, v11}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v4

    cmp-long v6, v4, v24

    if-nez v6, :cond_26

    move-object v6, v1

    move v15, v2

    move-object/from16 v4, v35

    move-wide/from16 v1, v73

    goto :goto_12

    :cond_26
    const-string v6, "\n    "

    .line 317
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "     "

    .line 319
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    aget-object v6, v1, v3

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v1

    move v15, v2

    .line 321
    div-long v1, v4, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 322
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v73

    .line 323
    invoke-virtual {v7, v4, v5, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v35

    .line 324
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    move v12, v5

    :goto_12
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v106, v1

    move-object v1, v6

    move-wide/from16 v5, v106

    move v2, v15

    goto :goto_11

    :cond_27
    move-wide v1, v5

    if-nez v12, :cond_28

    .line 325
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p2

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "WiFi"

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p3

    move-object v12, v4

    move-object v4, v5

    move-wide/from16 v79, v22

    move-object v5, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 328
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 329
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 330
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY END"

    .line 331
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 333
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Bluetooth total received: "

    .line 335
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v62

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", sent: "

    .line 336
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v64

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v7, v9, v10, v11}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v0

    div-long v0, v0, v16

    const/4 v2, 0x0

    .line 338
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 339
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Bluetooth scan time: "

    .line 340
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 341
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Bluetooth"

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x2

    if-ne v11, v0, :cond_2a

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 345
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device is currently unplugged"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Discharge cycle start level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 348
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Discharge cycle current level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_13

    .line 350
    :cond_29
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device is currently plugged into power"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Last discharge cycle start level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 353
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Last discharge cycle end level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 355
    :goto_13
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 357
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 359
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v6, v29

    .line 361
    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_2a
    move-object/from16 v6, v29

    .line 362
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device battery use since last full charge"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (lower bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 365
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (upper bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 367
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 369
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 371
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 374
    :goto_14
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p6

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 375
    invoke-virtual {v0, v7}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v1, -0x1

    .line 376
    invoke-virtual {v0, v11, v1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 377
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    const-string v5, " ("

    const-string v4, ": "

    if-eqz v1, :cond_3c

    .line 378
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3c

    .line 379
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Estimated power use (mAh):"

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Capacity: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v2, ", Computed drain: "

    .line 382
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v2, ", actual drain: "

    .line 383
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 384
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v22

    cmpl-double v2, v2, v22

    if-eqz v2, :cond_2b

    const-string v2, "-"

    .line 385
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 386
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x0

    .line 387
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 388
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 389
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    sget-object v22, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 p1, v1

    iget-object v1, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v22, v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "    ???: "

    .line 391
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_0
    const-string v1, "    Camera: "

    .line 392
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_1
    const-string v1, "    Over-counted: "

    .line 393
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_2
    const-string v1, "    Unaccounted: "

    .line 394
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_3
    const-string v1, "    User "

    .line 395
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v3, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 396
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_4
    const-string v1, "    Uid "

    .line 397
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    iget-object v1, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v15, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 399
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_5
    const-string v1, "    Flashlight: "

    .line 400
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_6
    const-string v1, "    Screen: "

    .line 401
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_7
    const-string v1, "    Bluetooth: "

    .line 402
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_8
    const-string v1, "    Wifi: "

    .line 403
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_9
    const-string v1, "    Phone calls: "

    .line 404
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_a
    const-string v1, "    Cell standby: "

    .line 405
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_b
    const-string v1, "    Idle: "

    .line 406
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_16
    move-wide/from16 v34, v9

    .line 407
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 408
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v76, v12

    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v1, v9, v11

    const-wide/16 v9, 0x0

    if-eqz v1, :cond_36

    .line 409
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_2c

    const-string v1, " usage="

    .line 411
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 413
    :cond_2c
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_2d

    const-string v1, " cpu="

    .line 414
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 416
    :cond_2d
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_2e

    const-string v1, " wake="

    .line 417
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 419
    :cond_2e
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_2f

    const-string v1, " radio="

    .line 420
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 422
    :cond_2f
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_30

    const-string v1, " wifi="

    .line 423
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 425
    :cond_30
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_31

    const-string v1, " bt="

    .line 426
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 428
    :cond_31
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_32

    const-string v1, " gps="

    .line 429
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 431
    :cond_32
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_33

    const-string v1, " sensor="

    .line 432
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 434
    :cond_33
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_34

    const-string v1, " camera="

    .line 435
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-direct {v7, v15, v11, v12}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 437
    :cond_34
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpl-double v1, v11, v9

    if-eqz v1, :cond_35

    const-string v1, " flash="

    .line 438
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_35
    const-string v1, " )"

    .line 440
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    :cond_36
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v1, v9, v11

    if-eqz v1, :cond_39

    const-string v1, " Including smearing: "

    .line 442
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 444
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    const-wide/16 v11, 0x0

    cmpl-double v1, v9, v11

    if-eqz v1, :cond_37

    const-string v1, " screen="

    .line 446
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 448
    :cond_37
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    cmpl-double v1, v9, v11

    if-eqz v1, :cond_38

    const-string v1, " proportional="

    .line 449
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_38
    const-string v1, " )"

    .line 451
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    :cond_39
    iget-boolean v1, v3, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v1, :cond_3a

    const-string v1, " Excluded from smearing"

    .line 453
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    move/from16 v11, p4

    move-wide/from16 v9, v34

    move-object/from16 v12, v76

    goto/16 :goto_15

    :cond_3b
    move-wide/from16 v34, v9

    move-object/from16 v76, v12

    .line 455
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_17

    :cond_3c
    move-wide/from16 v34, v9

    move-object/from16 v76, v12

    .line 456
    :goto_17
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 457
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 458
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Per-app mobile ms per packet:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-wide/from16 v2, v24

    .line 459
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_3d

    .line 460
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatterySipper;

    const/4 v10, 0x0

    const-string v11, "    Uid "

    .line 461
    invoke-static {v8, v10, v14, v11}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v10, v9, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-static {v8, v10}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 463
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 p6, v4

    move-object/from16 p1, v5

    iget-wide v4, v9, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " packets over "

    .line 465
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    move-object/from16 v11, v76

    .line 466
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v78

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-wide v4, v9, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, p1

    move-object/from16 v4, p6

    goto :goto_18

    :cond_3d
    move-object/from16 p6, v4

    move-object/from16 p1, v5

    move-object/from16 v11, v76

    move-object/from16 v12, v78

    const/4 v0, 0x0

    const-string v1, "    TOTAL TIME: "

    .line 469
    invoke-static {v8, v0, v14, v1}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 471
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v79

    invoke-virtual {v7, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v68

    .line 472
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_19

    :cond_3e
    move-object/from16 p6, v4

    move-object/from16 p1, v5

    move-object/from16 v5, v68

    move-object/from16 v11, v76

    move-object/from16 v12, v78

    move-wide/from16 v9, v79

    .line 475
    :goto_19
    new-instance v4, Landroid/os/BatteryStats$1;

    invoke-direct {v4, v7}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    const-string v2, " realtime"

    if-gez p5, :cond_4a

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    .line 477
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_44

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v73, v9

    move-object/from16 v76, v11

    move-wide/from16 v9, v34

    move/from16 v11, p4

    .line 481
    invoke-static {v0, v9, v10, v11}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v30

    cmp-long v22, v30, v24

    if-lez v22, :cond_3f

    move-object/from16 v22, v2

    .line 482
    new-instance v2, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v26, v2

    move-object/from16 v29, v0

    invoke-direct/range {v26 .. v31}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3f
    move-object/from16 v22, v2

    :goto_1b
    move-wide/from16 v34, v9

    move-object/from16 v2, v22

    move-object/from16 v0, v23

    move-wide/from16 v9, v73

    move-object/from16 v11, v76

    goto :goto_1a

    :cond_40
    move-object/from16 v22, v2

    move-wide/from16 v73, v9

    move-object/from16 v76, v11

    move-wide/from16 v9, v34

    move/from16 v11, p4

    .line 483
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 484
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 485
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    .line 486
    :goto_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_42

    .line 487
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$TimerEntry;

    const-string v23, ": "

    const/4 v1, 0x0

    move/from16 v26, v2

    const-string v2, "  Kernel Wake lock "

    .line 488
    invoke-static {v8, v1, v14, v2}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v27, 0x0

    move-object v0, v8

    move-object/from16 v7, v22

    move-object/from16 v22, v3

    move-wide v2, v9

    move-object/from16 v78, v12

    move-object/from16 v28, v13

    move-object/from16 v13, p6

    move-object v12, v4

    move-object/from16 v4, v27

    move-object/from16 v81, p1

    move-object/from16 v27, v5

    move/from16 v5, p4

    move-object v14, v6

    move-object/from16 v6, v23

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 492
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_41
    add-int/lit8 v2, v26, 0x1

    move-object v4, v12

    move-object/from16 p6, v13

    move-object v6, v14

    move-object/from16 v3, v22

    move-object/from16 v5, v27

    move-object/from16 v13, v28

    move-object/from16 v12, v78

    move-object/from16 p1, v81

    move-object/from16 v14, p3

    move-object/from16 v22, v7

    move-object/from16 v7, p0

    goto :goto_1c

    :cond_42
    move-object/from16 v81, p1

    move-object/from16 v27, v5

    move-object v14, v6

    move-object/from16 v78, v12

    move-object/from16 v28, v13

    move-object/from16 v7, v22

    move-object/from16 v13, p6

    move-object v12, v4

    const/4 v0, -0x1

    .line 494
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1e

    :cond_43
    move-object/from16 v81, p1

    move-object/from16 v27, v5

    move-object v14, v6

    move-object/from16 v78, v12

    move-object/from16 v28, v13

    move-object/from16 v7, v22

    goto :goto_1d

    :cond_44
    move-object/from16 v81, p1

    move-object v7, v2

    move-object/from16 v27, v5

    move-object v14, v6

    move-wide/from16 v73, v9

    move-object/from16 v76, v11

    move-object/from16 v78, v12

    move-object/from16 v28, v13

    move-wide/from16 v9, v34

    move/from16 v11, p4

    :goto_1d
    move-object/from16 v13, p6

    move-object v12, v4

    const/4 v0, -0x1

    :goto_1e
    move/from16 v22, v0

    .line 495
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    move-object/from16 v6, v21

    .line 496
    invoke-static {v6, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All partial wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v5, v0

    .line 498
    :goto_1f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_45

    .line 499
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$TimerEntry;

    const/4 v1, 0x0

    .line 500
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "  Wake lock "

    .line 501
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget v1, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v8, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 503
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    const-string v21, ": "

    move-object v0, v8

    move-wide v2, v9

    move/from16 v23, v5

    move/from16 v5, p4

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 506
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v23, 0x1

    move-object/from16 v6, v26

    goto :goto_1f

    :cond_45
    move-object/from16 v26, v6

    .line 508
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 509
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 510
    :cond_46
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_49

    .line 512
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  All wakeup reasons:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 515
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 516
    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Ljava/lang/String;

    const/16 v31, 0x0

    .line 517
    invoke-virtual {v2, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    int-to-long v4, v1

    move-object/from16 v29, v3

    move-object/from16 v32, v2

    move-wide/from16 v33, v4

    invoke-direct/range {v29 .. v34}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    .line 518
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 519
    :cond_47
    invoke-static {v6, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v12, v0

    .line 520
    :goto_21
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_48

    .line 521
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$TimerEntry;

    const/4 v1, 0x0

    const-string v2, "  Wakeup reason "

    move-object/from16 v21, v14

    move-object/from16 v14, p3

    .line 522
    invoke-static {v8, v1, v14, v2}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    const-string v23, ": "

    move-object v0, v8

    move-wide v2, v9

    move/from16 v5, p4

    move-object/from16 v26, v6

    move-object/from16 v6, v23

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 525
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, v21

    move-object/from16 v6, v26

    goto :goto_21

    :cond_48
    move-object/from16 v21, v14

    move-object/from16 v14, p3

    .line 527
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_22

    :cond_49
    move-object/from16 v21, v14

    move-object/from16 v14, p3

    goto :goto_22

    :cond_4a
    move-object/from16 v81, p1

    move-object v7, v2

    move-object/from16 v27, v5

    move-object/from16 v21, v6

    move-wide/from16 v73, v9

    move-object/from16 v76, v11

    move-object/from16 v78, v12

    move-object/from16 v28, v13

    move-wide/from16 v9, v34

    move/from16 v11, p4

    move-object/from16 v13, p6

    const/16 v22, -0x1

    .line 528
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_4c

    const-string v1, "  Memory Stats"

    .line 530
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 531
    :goto_23
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    const/4 v2, 0x0

    .line 532
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "  Bandwidth "

    .line 533
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Time "

    .line 535
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_4b
    const/4 v0, 0x0

    .line 538
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_24

    :cond_4c
    const/4 v0, 0x0

    .line 539
    :goto_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v1

    .line 540
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4e

    .line 541
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Resource Power Manager Stats"

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4d

    .line 543
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 544
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 545
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move-object v6, v8

    move-object/from16 v8, p2

    move-wide v4, v9

    move/from16 v12, v20

    move-wide/from16 v82, v73

    move-object v9, v6

    move-object/from16 v20, v7

    move-object/from16 v7, v27

    move-object v10, v2

    move/from16 v2, p5

    move-object/from16 p1, v1

    move-object/from16 v26, v7

    move v7, v12

    move-object/from16 v1, v21

    move-object/from16 v35, v76

    move-object/from16 v84, v78

    move-wide v11, v4

    move-wide/from16 v69, v4

    move-object/from16 v85, v13

    move-object/from16 v5, v28

    move/from16 v4, p4

    move/from16 v13, p4

    move-object v5, v14

    move-object/from16 v14, p3

    move-object v5, v15

    move-object v15, v3

    .line 546
    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move v11, v4

    move-object v15, v5

    move-object v8, v6

    move-object/from16 v27, v26

    move-wide/from16 v9, v69

    move-object/from16 v13, v85

    move-object/from16 v1, p1

    move-object/from16 v106, v20

    move/from16 v20, v7

    move-object/from16 v7, v106

    goto :goto_25

    :cond_4d
    move/from16 v2, p5

    move-object v6, v8

    move-wide/from16 v69, v9

    move v4, v11

    move-object/from16 v85, v13

    move-object v5, v15

    move-object/from16 v1, v21

    move-object/from16 v26, v27

    move-wide/from16 v82, v73

    move-object/from16 v35, v76

    move-object/from16 v84, v78

    move/from16 v106, v20

    move-object/from16 v20, v7

    move/from16 v7, v106

    .line 547
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_26

    :cond_4e
    move/from16 v2, p5

    move-object v6, v8

    move-wide/from16 v69, v9

    move v4, v11

    move-object/from16 v85, v13

    move-object v5, v15

    move-object/from16 v1, v21

    move-object/from16 v26, v27

    move-wide/from16 v82, v73

    move-object/from16 v35, v76

    move-object/from16 v84, v78

    move/from16 v106, v20

    move-object/from16 v20, v7

    move/from16 v7, v106

    .line 548
    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v3

    if-eqz v3, :cond_50

    .line 549
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "  CPU freqs:"

    .line 550
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    .line 551
    :goto_27
    array-length v9, v3

    if-ge v8, v9, :cond_4f

    .line 552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v10, v3, v8

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 553
    :cond_4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_50
    move v15, v0

    move-object v3, v5

    :goto_28
    if-ge v15, v7, :cond_bd

    move-object/from16 v14, v75

    .line 555
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ltz v2, :cond_51

    if-eq v8, v2, :cond_51

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_51

    move-object/from16 v29, v1

    move-object v2, v3

    move v10, v4

    move-object v4, v5

    move-object v3, v6

    move/from16 v23, v7

    move-object/from16 v30, v14

    move-object/from16 v86, v20

    move-object/from16 v68, v26

    move-object/from16 v89, v28

    move-wide/from16 v12, v58

    move-wide/from16 v43, v66

    move-object/from16 v11, v81

    move-wide/from16 v27, v82

    move-object/from16 v78, v84

    move-object/from16 v1, p3

    move/from16 v20, v15

    goto/16 :goto_6c

    .line 556
    :cond_51
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Landroid/os/BatteryStats$Uid;

    .line 557
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "  "

    .line 558
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    invoke-static {v3, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    .line 560
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v13, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    const/4 v0, 0x1

    .line 562
    invoke-virtual {v13, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    const/4 v0, 0x2

    move-object/from16 v36, v14

    move/from16 v21, v15

    .line 563
    invoke-virtual {v13, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    const/4 v0, 0x3

    move-wide/from16 v29, v14

    .line 564
    invoke-virtual {v13, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    const/4 v0, 0x4

    move-wide/from16 v31, v14

    .line 565
    invoke-virtual {v13, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    const/4 v0, 0x5

    move-wide/from16 v33, v14

    .line 566
    invoke-virtual {v13, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    const/4 v0, 0x0

    move-object/from16 v27, v1

    .line 567
    invoke-virtual {v13, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    const/4 v3, 0x1

    .line 568
    invoke-virtual {v13, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const/4 v12, 0x2

    move-wide/from16 v37, v14

    .line 569
    invoke-virtual {v13, v12, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    const/4 v12, 0x3

    move-wide/from16 v39, v14

    .line 570
    invoke-virtual {v13, v12, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    move-wide/from16 v41, v14

    .line 571
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v14

    .line 572
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v12

    move-object/from16 p1, v6

    move/from16 v23, v7

    move-wide/from16 v43, v14

    move-wide/from16 v6, v69

    .line 573
    invoke-virtual {v13, v6, v7, v4}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v14

    move-wide/from16 v45, v14

    .line 574
    invoke-virtual {v13, v6, v7, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v14

    move-wide/from16 v47, v14

    .line 575
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v14

    .line 576
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v15

    move/from16 p6, v14

    move/from16 v49, v15

    .line 577
    invoke-virtual {v13, v6, v7}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v14

    move-wide/from16 v50, v14

    .line 578
    invoke-virtual {v13, v6, v7}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v14

    move-wide/from16 v52, v14

    .line 579
    invoke-virtual {v13, v6, v7, v4}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v14

    .line 580
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v6

    move-wide/from16 v54, v14

    .line 581
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v14

    cmp-long v56, v8, v24

    if-gtz v56, :cond_53

    cmp-long v56, v10, v24

    if-gtz v56, :cond_53

    cmp-long v56, v0, v24

    if-gtz v56, :cond_53

    cmp-long v56, v2, v24

    if-lez v56, :cond_52

    goto :goto_29

    :cond_52
    move-object/from16 v4, p0

    move-object/from16 v86, v20

    goto :goto_2a

    .line 582
    :cond_53
    :goto_29
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    Mobile network: "

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p0

    move-object/from16 v86, v20

    .line 583
    invoke-virtual {v4, v8, v9}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " received, "

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v4, v10, v11}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " sent (packets "

    .line 585
    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " received, "

    .line 586
    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " sent)"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2a
    cmp-long v8, v43, v24

    if-gtz v8, :cond_55

    if-lez v12, :cond_54

    goto :goto_2b

    :cond_54
    move-object/from16 v9, p1

    move-object v11, v5

    move-wide/from16 v60, v6

    move-wide/from16 v56, v14

    move-object/from16 v7, v35

    move-wide/from16 v5, v66

    move-object/from16 v12, v84

    goto :goto_2c

    :cond_55
    :goto_2b
    const/4 v8, 0x0

    move-object/from16 v9, p1

    .line 587
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v11, v5

    move-object/from16 v5, p3

    .line 588
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Mobile radio active: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v56, v14

    .line 589
    div-long v14, v43, v16

    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v8, v28

    .line 590
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v60, v6

    move-wide/from16 v7, v43

    move-wide/from16 v5, v66

    .line 591
    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v35

    .line 592
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v84

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v0, v2

    cmp-long v2, v0, v24

    if-nez v2, :cond_56

    const-wide/16 v0, 0x1

    :cond_56
    const-string v2, " @ "

    .line 593
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v14

    long-to-double v0, v0

    div-double/2addr v2, v0

    .line 594
    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mspp"

    .line 595
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2c
    cmp-long v0, v60, v24

    const/4 v8, 0x0

    if-lez v0, :cond_57

    const-string v0, "    Mobile radio AP wakeups: "

    move-wide/from16 v43, v5

    move-object/from16 v5, p3

    .line 597
    invoke-static {v9, v8, v5, v0}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v60

    .line 598
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    :cond_57
    move-wide/from16 v43, v5

    move-object/from16 v5, p3

    :goto_2d
    const-string v0, "  "

    .line 600
    invoke-static {v5, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Modem"

    .line 601
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v15, v27

    move-object/from16 v1, p2

    move-object v2, v9

    move-object v14, v4

    move-wide/from16 v87, v69

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v89, v28

    move-object v5, v10

    move-object v10, v6

    move/from16 v6, p4

    .line 602
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v29, v24

    if-gtz v0, :cond_58

    cmp-long v0, v31, v24

    if-gtz v0, :cond_58

    cmp-long v0, v39, v24

    if-gtz v0, :cond_58

    cmp-long v0, v41, v24

    if-lez v0, :cond_59

    .line 603
    :cond_58
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Wi-Fi network: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v29

    .line 604
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v31

    .line 605
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent (packets "

    .line 606
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v39

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " received, "

    .line 607
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v41

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_59
    cmp-long v0, v45, v24

    if-nez v0, :cond_5b

    cmp-long v0, v47, v24

    if-nez v0, :cond_5b

    if-nez p6, :cond_5b

    if-nez v49, :cond_5b

    cmp-long v0, v50, v24

    if-nez v0, :cond_5b

    cmp-long v0, v52, v24

    if-nez v0, :cond_5b

    cmp-long v0, v54, v24

    if-eqz v0, :cond_5a

    goto :goto_2e

    :cond_5a
    move-wide/from16 v73, v82

    move-wide/from16 v2, v87

    move-object/from16 v6, v89

    move-object/from16 v106, v12

    move-object v12, v11

    move-object/from16 v11, v106

    goto/16 :goto_2f

    .line 608
    :cond_5b
    :goto_2e
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 609
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Running: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    div-long v0, v54, v16

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v6, v89

    .line 611
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v54

    move-wide/from16 v4, v82

    invoke-virtual {v14, v0, v1, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    .line 612
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Full Wifi Lock: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    div-long v0, v45, v16

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 615
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v45

    invoke-virtual {v14, v0, v1, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    .line 616
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Scan (blamed): "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    div-long v0, v47, v16

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 619
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v47

    invoke-virtual {v14, v0, v1, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p6

    .line 621
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x\n"

    .line 622
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (actual): "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    div-long v1, v50, v16

    invoke-static {v9, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 625
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v73, v4

    move-wide/from16 v2, v87

    .line 626
    invoke-virtual {v14, v2, v3, v8}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    move-object/from16 v78, v12

    move-wide/from16 v11, v50

    .line 627
    invoke-virtual {v14, v11, v12, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x\n"

    .line 630
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Background Wifi Scan: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    div-long v0, v52, v16

    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 633
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v14, v2, v3, v8}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    move-wide/from16 v4, v52

    .line 635
    invoke-virtual {v14, v4, v5, v0, v1}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v49

    .line 637
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v78

    .line 638
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2f
    cmp-long v0, v56, v24

    if-lez v0, :cond_5c

    const-string v0, "    WiFi AP wakeups: "

    .line 640
    invoke-static {v9, v8, v10, v0}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v56

    .line 641
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5c
    const-string v0, "  "

    .line 643
    invoke-static {v10, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WiFi"

    .line 644
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v78, v11

    move-wide v10, v2

    move-object v2, v9

    move-object v3, v4

    move-wide/from16 v27, v73

    move-object v4, v5

    move-object v5, v8

    move-object v8, v6

    move/from16 v6, p4

    .line 645
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v33, v24

    if-gtz v0, :cond_5d

    cmp-long v0, v37, v24

    if-lez v0, :cond_5e

    .line 646
    :cond_5d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v33

    .line 647
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v37

    .line 648
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent"

    .line 649
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    :cond_5e
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-string v6, "\n"

    const-string v5, " times)"

    if-eqz v0, :cond_71

    move/from16 v4, p4

    .line 651
    invoke-virtual {v0, v10, v11, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v18

    div-long v1, v1, v16

    cmp-long v3, v1, v24

    if-eqz v3, :cond_71

    .line 652
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    move-object/from16 v35, v7

    .line 653
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_5f

    .line 654
    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v20

    goto :goto_30

    :cond_5f
    const/16 v20, 0x0

    :goto_30
    move-wide/from16 v69, v10

    move-object/from16 v29, v15

    move/from16 v10, v20

    move-wide/from16 v14, v71

    .line 655
    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v11

    if-eqz v7, :cond_60

    .line 656
    invoke-virtual {v7, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v30

    move-object/from16 p1, v7

    move-object/from16 v89, v8

    move-wide/from16 v7, v30

    goto :goto_31

    :cond_60
    move-object/from16 p1, v7

    move-object/from16 v89, v8

    move-wide/from16 v7, v24

    .line 657
    :goto_31
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v20

    if-eqz v20, :cond_61

    move/from16 p6, v10

    .line 658
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    goto :goto_32

    :cond_61
    move/from16 p6, v10

    const/4 v10, 0x0

    .line 659
    :goto_32
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v20

    if-eqz v20, :cond_62

    move/from16 v20, v10

    .line 660
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    goto :goto_33

    :cond_62
    move/from16 v20, v10

    const/4 v10, 0x0

    .line 661
    :goto_33
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_63

    .line 662
    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v30

    move-wide/from16 v90, v30

    goto :goto_34

    :cond_63
    move-wide/from16 v90, v24

    :goto_34
    if-eqz v4, :cond_64

    .line 663
    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v30

    move-wide/from16 v92, v30

    move-object/from16 v30, v4

    goto :goto_35

    :cond_64
    move-object/from16 v30, v4

    move-wide/from16 v92, v24

    .line 664
    :goto_35
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 665
    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v31

    move-wide/from16 v94, v31

    goto :goto_36

    :cond_65
    move-wide/from16 v94, v24

    :goto_36
    if-eqz v4, :cond_66

    .line 666
    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v31

    move-wide/from16 v71, v14

    move-wide/from16 v14, v31

    move-object/from16 v31, v13

    goto :goto_37

    :cond_66
    move-object/from16 v31, v13

    move-wide/from16 v71, v14

    move-wide/from16 v14, v24

    :goto_37
    const/4 v13, 0x0

    .line 667
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long v13, v11, v1

    if-eqz v13, :cond_68

    move-object/from16 v13, p3

    .line 668
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v32, v14

    const-string v14, "    Bluetooth Scan (total blamed realtime): "

    .line 669
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {v9, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v15, v81

    .line 671
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, " (currently running)"

    .line 675
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_67
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_68
    move-object/from16 v13, p3

    move-wide/from16 v32, v14

    move-object/from16 v15, v81

    .line 677
    :goto_38
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Bluetooth Scan (total actual realtime): "

    .line 678
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {v9, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 680
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, " (currently running)"

    .line 684
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_69
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, v7, v24

    if-gtz v0, :cond_6a

    if-lez p6, :cond_6c

    .line 686
    :cond_6a
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Bluetooth Scan (background realtime): "

    .line 687
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 689
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p6

    .line 690
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6b

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, " (currently running in background)"

    .line 693
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_6b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_6c
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Bluetooth Scan Results: "

    .line 696
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v20

    .line 697
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in background)"

    .line 700
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v90

    cmp-long v2, v0, v24

    if-gtz v2, :cond_6e

    move-wide/from16 v2, v94

    cmp-long v7, v2, v24

    if-lez v7, :cond_6d

    goto :goto_39

    :cond_6d
    move-object/from16 v7, v26

    goto :goto_3a

    :cond_6e
    move-wide/from16 v2, v94

    .line 701
    :goto_39
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    Unoptimized Bluetooth Scan (realtime): "

    .line 703
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    .line 705
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v92

    .line 706
    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v7, v26

    .line 707
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v30, :cond_6f

    .line 708
    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, " (currently running unoptimized)"

    .line 709
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    if-eqz v4, :cond_70

    cmp-long v0, v2, v24

    if-lez v0, :cond_70

    .line 710
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Unoptimized Bluetooth Scan (background realtime): "

    .line 712
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-static {v9, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    .line 714
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v32

    .line 715
    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 716
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, " (currently running unoptimized in background)"

    .line 718
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_70
    :goto_3a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p2

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_3b

    :cond_71
    move-object/from16 v35, v7

    move-object/from16 v89, v8

    move-wide/from16 v69, v10

    move-object v11, v12

    move-object/from16 v31, v13

    move-object/from16 v29, v15

    move-object/from16 v7, v26

    move-object/from16 v15, v81

    move-object/from16 v13, p3

    const/4 v0, 0x0

    .line 720
    :goto_3b
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    const-string v14, ", "

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3c
    const/4 v3, 0x4

    if-ge v1, v3, :cond_74

    move/from16 v4, p4

    move-object/from16 v12, v31

    .line 721
    invoke-virtual {v12, v1, v4}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v3

    if-eqz v3, :cond_73

    if-nez v2, :cond_72

    const/4 v2, 0x0

    .line 722
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "    User activity: "

    .line 723
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_3d

    .line 724
    :cond_72
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :goto_3d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v29

    .line 726
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    sget-object v3, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_73
    move-object/from16 v10, v29

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v29, v10

    move-object/from16 v31, v12

    goto :goto_3c

    :cond_74
    move/from16 v4, p4

    move-object/from16 v10, v29

    move-object/from16 v12, v31

    if-eqz v2, :cond_76

    .line 728
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3f

    :cond_75
    move/from16 v4, p4

    move-object/from16 v10, v29

    move-object/from16 v12, v31

    .line 729
    :cond_76
    :goto_3f
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 730
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move-object/from16 p1, v14

    move-object/from16 v81, v15

    move-wide/from16 v14, v24

    move-wide/from16 v96, v14

    move-wide/from16 v98, v96

    move-wide/from16 v100, v98

    move/from16 v106, v2

    move v2, v1

    move/from16 v1, v106

    :goto_40
    if-ltz v2, :cond_78

    .line 731
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v20, ": "

    const/4 v0, 0x0

    move/from16 p6, v3

    const-string v3, "    Wake lock "

    .line 732
    invoke-static {v9, v0, v13, v3}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 734
    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v26

    const-string v29, "full"

    move-object v0, v9

    move-object/from16 v68, v7

    move-object v7, v1

    move-object/from16 v1, v26

    move/from16 v26, v2

    move-object/from16 v30, v10

    move v10, v3

    move-object/from16 v106, v8

    move/from16 v8, p6

    move-object/from16 p6, v106

    move-wide/from16 v2, v69

    move-object/from16 v4, v29

    move-object/from16 v102, v5

    move/from16 v5, p4

    move-object/from16 v103, v6

    move-object/from16 v6, v20

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    .line 735
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v20

    const-string/jumbo v4, "partial"

    move-object v0, v9

    move-object/from16 v1, v20

    .line 736
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v20, :cond_77

    .line 737
    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    goto :goto_41

    :cond_77
    const/4 v0, 0x0

    :goto_41
    move-object v1, v0

    const-string v4, "background partial"

    move-object v0, v9

    move-wide/from16 v2, v69

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    .line 738
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    move-object v0, v9

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x12

    .line 739
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    move-object v0, v9

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object/from16 v2, v86

    .line 740
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v8, 0x1

    .line 742
    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move/from16 v4, p4

    move-wide/from16 v5, v69

    invoke-static {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    add-long/2addr v14, v0

    const/4 v0, 0x0

    .line 743
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    move-wide/from16 v10, v100

    add-long v100, v10, v0

    const/4 v0, 0x2

    .line 744
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    move-wide/from16 v10, v96

    add-long v96, v10, v0

    const/16 v0, 0x12

    .line 745
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    move-wide/from16 v7, v98

    add-long v98, v7, v0

    add-int/lit8 v0, v26, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x1

    move-object/from16 v11, p2

    move-object/from16 v8, p6

    move-object/from16 v10, v30

    move-object/from16 v5, v102

    move-object/from16 v6, v103

    move v2, v0

    move v0, v7

    move-object/from16 v7, v68

    goto/16 :goto_40

    :cond_78
    move v8, v3

    move-object/from16 v102, v5

    move-object/from16 v103, v6

    move-object/from16 v68, v7

    move-object/from16 v30, v10

    move-object/from16 v2, v86

    move-wide/from16 v3, v96

    move-wide/from16 v5, v98

    move-wide/from16 v10, v100

    if-le v8, v1, :cond_88

    .line 746
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 747
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    move-wide/from16 v7, v71

    .line 748
    invoke-virtual {v1, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v31

    .line 749
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 750
    invoke-virtual {v1, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v33

    goto :goto_42

    :cond_79
    move-wide/from16 v33, v24

    :goto_42
    move/from16 p6, v0

    move-wide/from16 v71, v7

    move-wide/from16 v0, v31

    move-wide/from16 v7, v33

    goto :goto_43

    :cond_7a
    move/from16 p6, v0

    move-wide/from16 v0, v24

    move-wide v7, v0

    :goto_43
    cmp-long v20, v0, v24

    if-nez v20, :cond_7c

    cmp-long v26, v7, v24

    if-nez v26, :cond_7c

    cmp-long v26, v14, v24

    if-nez v26, :cond_7c

    cmp-long v26, v10, v24

    if-nez v26, :cond_7c

    cmp-long v26, v3, v24

    if-eqz v26, :cond_7b

    goto :goto_44

    :cond_7b
    const/4 v1, 0x1

    move-object/from16 v14, p1

    goto/16 :goto_47

    :cond_7c
    :goto_44
    move-object/from16 v31, v12

    const/4 v12, 0x0

    const/16 v26, 0x1

    move-object/from16 v86, v2

    const-string v2, "    TOTAL wake: "

    .line 751
    invoke-static {v9, v12, v13, v2}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v14, v24

    if-eqz v2, :cond_7d

    .line 752
    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "full"

    .line 753
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    goto :goto_45

    :cond_7d
    const/4 v2, 0x0

    :goto_45
    cmp-long v12, v10, v24

    if-eqz v12, :cond_7f

    move-object/from16 v14, p1

    if-eqz v2, :cond_7e

    .line 754
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_7e
    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "blamed partial"

    .line 756
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    goto :goto_46

    :cond_7f
    move-object/from16 v14, p1

    :goto_46
    if-eqz v20, :cond_81

    if-eqz v2, :cond_80

    .line 757
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_80
    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "actual partial"

    .line 759
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    :cond_81
    cmp-long v0, v7, v24

    if-eqz v0, :cond_83

    if-eqz v2, :cond_82

    .line 760
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_82
    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "actual background partial"

    .line 762
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    :cond_83
    cmp-long v0, v3, v24

    if-eqz v0, :cond_85

    if-eqz v2, :cond_84

    .line 763
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_84
    invoke-static {v9, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "window"

    .line 765
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    :cond_85
    cmp-long v0, v5, v24

    if-eqz v0, :cond_87

    if-eqz v2, :cond_86

    const-string v0, ","

    .line 766
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_86
    invoke-static {v9, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "draw"

    .line 768
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    move-object/from16 v0, v86

    .line 769
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v1, v26

    goto :goto_48

    :cond_88
    move-object/from16 v14, p1

    move/from16 p6, v0

    :goto_47
    move-object v0, v2

    move-object/from16 v31, v12

    move-object/from16 v2, p2

    .line 771
    :goto_48
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 772
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move/from16 v4, p6

    :goto_49
    if-ltz v5, :cond_8d

    .line 773
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v6, p4

    move-wide/from16 v11, v69

    .line 774
    invoke-virtual {v4, v11, v12, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long v7, v7, v18

    div-long v7, v7, v16

    .line 775
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v10

    .line 776
    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_89

    move-object/from16 v86, v0

    move/from16 p1, v1

    move-wide/from16 v0, v71

    .line 777
    invoke-virtual {v4, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v32

    goto :goto_4a

    :cond_89
    move-object/from16 v86, v0

    move/from16 p1, v1

    move-wide/from16 v0, v71

    const-wide/16 v32, -0x1

    :goto_4a
    move-wide/from16 v0, v32

    if-eqz v4, :cond_8a

    .line 778
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    goto :goto_4b

    :cond_8a
    move/from16 v4, v22

    :goto_4b
    const/4 v15, 0x0

    const-string v6, "    Sync "

    .line 779
    invoke-static {v9, v15, v13, v6}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v85

    .line 781
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v15, v7, v24

    if-eqz v15, :cond_8b

    .line 782
    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "realtime ("

    .line 783
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v102

    .line 785
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v8, v0, v24

    if-lez v8, :cond_8c

    .line 786
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "background ("

    .line 788
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_8b
    move-object/from16 v7, v102

    const-string v0, "(not used)"

    .line 791
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_8c
    :goto_4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    move/from16 v1, p1

    move v4, v1

    move-object/from16 v85, v6

    move-object/from16 v102, v7

    move-wide/from16 v69, v11

    move-object/from16 v0, v86

    goto/16 :goto_49

    :cond_8d
    move-object/from16 v86, v0

    move/from16 p1, v1

    move-wide/from16 v11, v69

    move-object/from16 v6, v85

    move-object/from16 v7, v102

    .line 793
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4d
    if-ltz v1, :cond_92

    .line 795
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    move/from16 v5, p4

    .line 796
    invoke-virtual {v3, v11, v12, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v32

    add-long v32, v32, v18

    move-wide/from16 v69, v11

    div-long v10, v32, v16

    .line 797
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 798
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_8e

    move-object/from16 v20, v14

    move-wide/from16 v14, v71

    .line 799
    invoke-virtual {v3, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v32

    goto :goto_4e

    :cond_8e
    move-object/from16 v20, v14

    move-wide/from16 v14, v71

    const-wide/16 v32, -0x1

    :goto_4e
    move-wide/from16 v14, v32

    if-eqz v3, :cond_8f

    .line 800
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    goto :goto_4f

    :cond_8f
    move/from16 v3, v22

    :goto_4f
    const/4 v8, 0x0

    const-string v12, "    Job "

    .line 801
    invoke-static {v9, v8, v13, v12}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v24

    if-eqz v8, :cond_90

    .line 804
    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "realtime ("

    .line 805
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v14, v24

    move-object/from16 v11, v20

    if-lez v4, :cond_91

    .line 808
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "background ("

    .line 810
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_90
    move-object/from16 v11, v20

    const-string v3, "(not used)"

    .line 813
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_91
    :goto_50
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    move/from16 v4, p1

    move-object v14, v11

    move-wide/from16 v11, v69

    goto/16 :goto_4d

    :cond_92
    move/from16 v5, p4

    move-wide/from16 v69, v11

    move-object v11, v14

    .line 815
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_51
    if-ltz v1, :cond_95

    .line 817
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_94

    .line 818
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    Job Completions "

    .line 819
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ":"

    .line 821
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 822
    :goto_52
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_93

    move-object/from16 v10, v30

    .line 823
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v12, v89

    .line 825
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v14, "x)"

    .line 827
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_93
    move-object/from16 v10, v30

    move-object/from16 v12, v89

    .line 828
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_53

    :cond_94
    move-object/from16 v10, v30

    move-object/from16 v12, v89

    :goto_53
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v30, v10

    move-object/from16 v89, v12

    goto :goto_51

    :cond_95
    move-object/from16 v10, v30

    move-object/from16 v12, v89

    .line 829
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-string v15, "Flashlight"

    move-object v3, v12

    move-wide/from16 v29, v71

    move-object/from16 v8, p2

    move-object v14, v9

    move-object/from16 v20, v10

    move-object v10, v0

    move-object v0, v2

    move-object/from16 v26, v31

    move-object/from16 v2, v78

    move-object/from16 v31, v11

    move-wide/from16 v11, v69

    move-object v1, v13

    move/from16 v13, p4

    move-object/from16 v89, v3

    move-wide/from16 v2, v29

    move-object/from16 v0, v31

    move-object/from16 v30, v36

    move-object/from16 v29, v14

    move-object/from16 v14, p3

    move-object/from16 v104, v20

    move/from16 v20, v21

    move-object/from16 v105, v81

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 830
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Camera"

    move-object/from16 v8, p2

    move-object/from16 v9, v29

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 831
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Video"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 832
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Audio"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 833
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v8

    .line 834
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    move/from16 v21, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_54
    if-ge v4, v9, :cond_9e

    .line 835
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Sensor;

    .line 836
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-object/from16 v15, v29

    .line 837
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 838
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Sensor "

    .line 839
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v10

    const/16 v12, -0x2710

    if-ne v10, v12, :cond_96

    const-string v10, "GPS"

    .line 841
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 842
    :cond_96
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    :goto_55
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_9c

    move-wide/from16 v13, v69

    .line 845
    invoke-virtual {v10, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v31

    add-long v31, v31, v18

    move-object/from16 p6, v8

    move v12, v9

    div-long v8, v31, v16

    move/from16 v29, v12

    .line 846
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v12

    .line 847
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_97

    .line 848
    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v21

    goto :goto_56

    :cond_97
    const/16 v21, 0x0

    :goto_56
    move-object/from16 v85, v6

    move-wide/from16 v69, v13

    move/from16 v6, v21

    .line 849
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    if-eqz v11, :cond_98

    .line 850
    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    goto :goto_57

    :cond_98
    move-wide/from16 v10, v24

    :goto_57
    cmp-long v21, v8, v24

    if-eqz v21, :cond_9b

    cmp-long v21, v13, v8

    if-eqz v21, :cond_99

    .line 851
    invoke-static {v15, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v8, "blamed realtime, "

    .line 852
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_99
    invoke-static {v15, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "realtime ("

    .line 854
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v24

    if-nez v8, :cond_9a

    if-lez v6, :cond_9d

    .line 857
    :cond_9a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-static {v15, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v8, "background ("

    .line 859
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_9b
    const-string v6, "(not used)"

    .line 862
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_9c
    move-object/from16 v85, v6

    move-object/from16 p6, v8

    move/from16 v29, v9

    const-string v6, "(not used)"

    .line 863
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_9d
    :goto_58
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x0

    move/from16 v21, p1

    move-object/from16 v8, p6

    move-object v0, v14

    move/from16 v9, v29

    move-object/from16 v6, v85

    move-object/from16 v29, v15

    goto/16 :goto_54

    :cond_9e
    move-object v14, v0

    move-object/from16 v85, v6

    move-object/from16 v15, v29

    move-object/from16 v0, p2

    .line 865
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v4, "Vibrator"

    move-object/from16 v8, p2

    move-object v9, v15

    move-wide/from16 v11, v69

    move-wide/from16 v6, v69

    move/from16 v13, p4

    move-wide/from16 v71, v2

    move-object v2, v14

    move-object/from16 v14, p3

    move-object v3, v15

    move-object v15, v4

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v4, v21, v4

    .line 866
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground activities"

    move-object v9, v3

    move-wide v11, v6

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 867
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground services"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    const/4 v8, 0x0

    move-wide/from16 v9, v24

    :goto_59
    const/4 v11, 0x6

    if-ge v8, v11, :cond_a0

    move-object/from16 v11, v26

    .line 868
    invoke-virtual {v11, v8, v6, v7, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v12

    cmp-long v14, v12, v24

    if-lez v14, :cond_9f

    add-long/2addr v9, v12

    const/4 v4, 0x0

    .line 869
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 870
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    sget-object v4, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for: "

    .line 873
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v12, v12, v18

    .line 874
    div-long v12, v12, v16

    invoke-static {v3, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 875
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, p1

    :cond_9f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v26, v11

    goto :goto_59

    :cond_a0
    move-object/from16 v11, v26

    cmp-long v8, v9, v24

    if-lez v8, :cond_a1

    const/4 v8, 0x0

    .line 876
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 877
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Total running: "

    .line 878
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v9, v9, v18

    .line 879
    div-long v9, v9, v16

    invoke-static {v3, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 880
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    :cond_a1
    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v8

    .line 882
    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v12

    cmp-long v10, v8, v24

    if-gtz v10, :cond_a2

    cmp-long v10, v12, v24

    if-lez v10, :cond_a3

    :cond_a2
    const/4 v10, 0x0

    .line 883
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 884
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Total cpu time: u="

    .line 885
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    div-long v8, v8, v16

    invoke-static {v3, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "s="

    .line 887
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    div-long v12, v12, v16

    invoke-static {v3, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 889
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    :cond_a3
    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v8

    if-eqz v8, :cond_a5

    const/4 v9, 0x0

    .line 891
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v9, "    Total cpu time per freq:"

    .line 892
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    .line 893
    :goto_5a
    array-length v10, v8

    if-ge v9, v10, :cond_a4

    .line 894
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v12, v104

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v13, v8, v9

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    :cond_a4
    move-object/from16 v12, v104

    .line 895
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5b

    :cond_a5
    move-object/from16 v12, v104

    .line 896
    :goto_5b
    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v8

    if-eqz v8, :cond_a7

    const/4 v9, 0x0

    .line 897
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v9, "    Total screen-off cpu time per freq:"

    .line 898
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    .line 899
    :goto_5c
    array-length v10, v8

    if-ge v9, v10, :cond_a6

    .line 900
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v13, v8, v9

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    .line 901
    :cond_a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    :cond_a7
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 903
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_5d
    if-ltz v9, :cond_b5

    .line 904
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid$Proc;

    .line 905
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v13

    move-wide/from16 v69, v6

    .line 906
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v6

    move-object/from16 v26, v11

    move-object/from16 v29, v12

    .line 907
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v11

    .line 908
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v15

    move/from16 p6, v4

    .line 909
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v4

    .line 910
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v0

    if-nez v5, :cond_a8

    .line 911
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v21

    goto :goto_5e

    :cond_a8
    const/16 v21, 0x0

    :goto_5e
    move/from16 v5, v21

    cmp-long v21, v13, v24

    if-nez v21, :cond_aa

    cmp-long v21, v6, v24

    if-nez v21, :cond_aa

    cmp-long v21, v11, v24

    if-nez v21, :cond_aa

    if-nez v15, :cond_aa

    if-nez v5, :cond_aa

    if-nez v4, :cond_aa

    if-eqz v0, :cond_a9

    goto :goto_5f

    :cond_a9
    move-object/from16 v4, p2

    move/from16 v0, p6

    move-object/from16 v5, v103

    move-object/from16 v11, v105

    goto/16 :goto_66

    :cond_aa
    :goto_5f
    move-object/from16 v21, v10

    const/4 v10, 0x0

    move/from16 v31, v5

    const-string v5, "    Proc "

    .line 912
    invoke-static {v3, v10, v1, v5}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      CPU: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-static {v3, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "usr + "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-static {v3, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "krn ; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-static {v3, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "fg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_ac

    if-nez v4, :cond_ac

    if-eqz v0, :cond_ab

    goto :goto_60

    :cond_ab
    move-object/from16 v5, v103

    goto :goto_62

    :cond_ac
    :goto_60
    move-object/from16 v5, v103

    .line 918
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_ad

    .line 919
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " starts"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    goto :goto_61

    :cond_ad
    const/4 v6, 0x0

    :goto_61
    if-eqz v4, :cond_af

    if-eqz v6, :cond_ae

    .line 920
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    :cond_ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " crashes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    :cond_af
    if-eqz v0, :cond_b1

    if-eqz v6, :cond_b0

    .line 922
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    :cond_b0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " anrs"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    :cond_b1
    :goto_62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move/from16 v6, v31

    :goto_63
    if-ge v0, v6, :cond_b4

    move-object/from16 v10, v21

    .line 925
    invoke-virtual {v10, v0}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v7

    if-eqz v7, :cond_b3

    .line 926
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "      * Killed for "

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    iget v11, v7, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b2

    const-string v11, "cpu"

    .line 928
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    :cond_b2
    const-string/jumbo v11, "unknown"

    .line 929
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_64
    const-string v11, " use: "

    .line 930
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    iget-wide v11, v7, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v11, v12, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v11, " over "

    .line 932
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    iget-wide v11, v7, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v11, v12, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 934
    iget-wide v11, v7, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v11, v11, v24

    if-eqz v11, :cond_b3

    move-object/from16 v11, v105

    .line 935
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    iget-wide v12, v7, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v14, 0x64

    mul-long/2addr v12, v14

    iget-wide v14, v7, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v12, v14

    invoke-virtual {v4, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, "%)"

    .line 937
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    :cond_b3
    move-object/from16 v11, v105

    :goto_65
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v21, v10

    move-object/from16 v105, v11

    goto :goto_63

    :cond_b4
    move-object/from16 v11, v105

    move/from16 v0, p1

    :goto_66
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v103, v5

    move-object/from16 v105, v11

    move-object/from16 v11, v26

    move-object/from16 v12, v29

    move-wide/from16 v6, v69

    move/from16 v5, p4

    move-object/from16 v106, v4

    move v4, v0

    move-object/from16 v0, v106

    goto/16 :goto_5d

    :cond_b5
    move/from16 p6, v4

    move-wide/from16 v69, v6

    move-object/from16 v26, v11

    move-object/from16 v29, v12

    move-object/from16 v11, v105

    move-object v4, v0

    .line 938
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v5, p6

    :goto_67
    if-ltz v2, :cond_bb

    .line 940
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Apk "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    .line 941
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg;

    .line 943
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 944
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    :goto_68
    if-ltz v7, :cond_b6

    .line 945
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "      Wakeup alarm "

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, v85

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Counter;

    move/from16 v10, p4

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " times"

    .line 948
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x1

    move/from16 v8, p1

    goto :goto_68

    :cond_b6
    move/from16 v10, p4

    move-object/from16 v9, v85

    .line 949
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 950
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_69
    if-ltz v6, :cond_b9

    .line 951
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v12, v58

    .line 952
    invoke-virtual {v7, v12, v13, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v14

    move-object/from16 p6, v0

    .line 953
    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v0

    .line 954
    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v7

    cmp-long v21, v14, v24

    if-nez v21, :cond_b8

    if-nez v0, :cond_b8

    if-eqz v7, :cond_b7

    goto :goto_6a

    :cond_b7
    move-object/from16 v85, v9

    goto :goto_6b

    :cond_b8
    :goto_6a
    const/4 v8, 0x0

    move-object/from16 v85, v9

    const-string v9, "      Service "

    .line 955
    invoke-static {v3, v8, v1, v9}, Landroid/app/m;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "        Created for: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    div-long v14, v14, v16

    invoke-static {v3, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "uptime\n"

    .line 959
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "        Starts: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", launches: "

    .line 962
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v8, p1

    :goto_6b
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p6

    move-wide/from16 v58, v12

    move-object/from16 v9, v85

    goto :goto_69

    :cond_b9
    move-object/from16 p6, v0

    move-object/from16 v85, v9

    move-wide/from16 v12, v58

    if-nez v8, :cond_ba

    .line 964
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "      (nothing executed)"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ba
    add-int/lit8 v2, v2, -0x1

    move/from16 v5, p1

    move-object/from16 v0, p6

    move-wide/from16 v58, v12

    goto/16 :goto_67

    :cond_bb
    move/from16 v10, p4

    move-wide/from16 v12, v58

    const/4 v0, 0x0

    if-nez v5, :cond_bc

    .line 965
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    (nothing executed)"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bc
    move-object v2, v4

    :goto_6c
    add-int/lit8 v15, v20, 0x1

    move-object v6, v3

    move-object v5, v4

    move v4, v10

    move-object/from16 v81, v11

    move-wide/from16 v58, v12

    move/from16 v7, v23

    move-wide/from16 v82, v27

    move-object/from16 v1, v29

    move-object/from16 v75, v30

    move-wide/from16 v66, v43

    move-object/from16 v26, v68

    move-object/from16 v84, v78

    move-object/from16 v20, v86

    move-object/from16 v28, v89

    move-object v3, v2

    move/from16 v2, p5

    goto/16 :goto_28

    :cond_bd
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method public final formatBytesLocked(J)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v2, 0x400

    .line 8
    .line 9
    cmp-long v0, p1, v2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "B"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    const-wide/32 v2, 0x100000

    .line 32
    .line 33
    .line 34
    cmp-long v0, p1, v2

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-gez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 40
    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    long-to-double p1, p1

    .line 44
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 45
    .line 46
    div-double/2addr p1, v3

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    aput-object p1, v2, v1

    .line 52
    .line 53
    const-string p1, "%.2fKB"

    .line 54
    .line 55
    invoke-virtual {v0, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_1
    const-wide/32 v3, 0x40000000

    .line 66
    .line 67
    .line 68
    cmp-long v0, p1, v3

    .line 69
    .line 70
    if-gez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 73
    .line 74
    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    .line 76
    long-to-double p1, p1

    .line 77
    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    .line 78
    .line 79
    div-double/2addr p1, v3

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    aput-object p1, v2, v1

    .line 85
    .line 86
    const-string p1, "%.2fMB"

    .line 87
    .line 88
    invoke-virtual {v0, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 99
    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    long-to-double p1, p1

    .line 103
    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    .line 104
    .line 105
    div-double/2addr p1, v3

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    aput-object p1, v2, v1

    .line 111
    .line 112
    const-string p1, "%.2fGB"

    .line 113
    .line 114
    invoke-virtual {v0, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "--%"

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    long-to-float p1, p1

    .line 11
    long-to-float p2, p3

    .line 12
    div-float/2addr p1, p2

    .line 13
    const/high16 p2, 0x42c80000    # 100.0f

    .line 14
    .line 15
    mul-float/2addr p1, p2

    .line 16
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 23
    .line 24
    const/4 p4, 0x1

    .line 25
    new-array p4, p4, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aput-object p1, p4, p3

    .line 32
    .line 33
    const-string p1, "%.1f%%"

    .line 34
    .line 35
    invoke-virtual {p2, p1, p4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuFreqs()[J
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenDoze()I
.end method

.method public abstract getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMahDischarge(I)J
.end method

.method public abstract getMahDischargeScreenDoze(I)J
.end method

.method public abstract getMahDischargeScreenOff(I)J
.end method

.method public abstract getMaxLearnedBatteryCapacity()I
.end method

.method public abstract getMinLearnedBatteryCapacity()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenDozeCount(I)I
.end method

.method public abstract getScreenDozeTime(JI)J
.end method

.method public abstract getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
