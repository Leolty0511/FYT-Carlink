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
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$Counter;
    }
.end annotation


# static fields
.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field public static final AUDIO_TURNED_ON:I = 0x7

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x7

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

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

.field public static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x10

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_DATA:Ljava/lang/String; = "fg"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_RX_BYTES:I = 0x0

.field public static final NETWORK_MOBILE_TX_BYTES:I = 0x1

.field public static final NETWORK_WIFI_RX_BYTES:I = 0x2

.field public static final NETWORK_WIFI_TX_BYTES:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0x4

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field public static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field public static final STATS_CURRENT:I = 0x2

.field public static final STATS_LAST:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x3

.field private static final STAT_NAMES:[Ljava/lang/String;

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string/jumbo v0, "t"

    const-string v1, "l"

    const-string v2, "c"

    const-string/jumbo v3, "u"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const-string v0, "dark"

    const-string v1, "dim"

    const-string v2, "medium"

    const-string v3, "light"

    const-string v4, "bright"

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const-string v1, "none"

    const-string v2, "gprs"

    const-string v3, "edge"

    const-string/jumbo v4, "umts"

    const-string v5, "cdma"

    const-string v6, "evdo_0"

    const-string v7, "evdo_A"

    const-string v8, "1xrtt"

    const-string v9, "hsdpa"

    const-string v10, "hsupa"

    const-string v11, "hspa"

    const-string v12, "iden"

    const-string v13, "evdo_b"

    const-string v14, "lte"

    const-string v15, "ehrpd"

    const-string v16, "hspap"

    const-string v17, "other"

    .line 3
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v2, 0x13

    new-array v2, v2, [Landroid/os/BatteryStats$BitDescription;

    .line 4
    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x80000

    const-string v5, "plugged"

    invoke-direct {v3, v4, v5}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v5, 0x100000

    const-string/jumbo v6, "screen"

    invoke-direct {v3, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v5, 0x10000000

    const-string v6, "gps"

    invoke-direct {v3, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v5, 0x40000

    const-string v6, "phone_in_call"

    invoke-direct {v3, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v5, 0x8000000

    const-string v6, "phone_scanning"

    invoke-direct {v3, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x4

    aput-object v3, v2, v5

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v6, 0x20000

    const-string/jumbo v7, "wifi"

    invoke-direct {v3, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x5

    aput-object v3, v2, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v6, 0x4000000

    const-string/jumbo v7, "wifi_running"

    invoke-direct {v3, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x6

    aput-object v3, v2, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v6, 0x2000000

    const-string/jumbo v7, "wifi_full_lock"

    invoke-direct {v3, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x7

    aput-object v3, v2, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v6, 0x1000000

    const-string/jumbo v7, "wifi_scan"

    invoke-direct {v3, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x8

    aput-object v3, v2, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x800000

    const-string/jumbo v8, "wifi_multicast"

    invoke-direct {v3, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x9

    aput-object v3, v2, v7

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x10000

    const-string v8, "bluetooth"

    invoke-direct {v3, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/16 v7, 0xa

    aput-object v3, v2, v7

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x400000

    const-string v8, "audio"

    invoke-direct {v3, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/16 v7, 0xb

    aput-object v3, v2, v7

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x200000

    const-string/jumbo v8, "video"

    invoke-direct {v3, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/16 v7, 0xc

    aput-object v3, v2, v7

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, 0x40000000    # 2.0f

    const-string/jumbo v9, "wake_lock"

    invoke-direct {v3, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xd

    aput-object v3, v2, v8

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, 0x20000000

    const-string/jumbo v9, "sensor"

    invoke-direct {v3, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xe

    aput-object v3, v2, v8

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const/16 v8, 0xf

    const-string v9, "brightness"

    invoke-direct {v3, v8, v4, v9, v0}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v2, v8

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    sget-object v3, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    const/16 v4, 0xf0

    const-string/jumbo v8, "signal_strength"

    invoke-direct {v0, v4, v5, v8, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-object v0, v2, v3

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string v3, "in"

    const-string v4, "out"

    const-string v5, "emergency"

    const-string v8, "off"

    filled-new-array {v3, v4, v5, v8}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf00

    const-string v5, "phone_state"

    invoke-direct {v0, v4, v6, v5, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-object v0, v2, v3

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const v3, 0xf000

    const-string v4, "data_conn"

    invoke-direct {v0, v3, v7, v4, v1}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x12

    aput-object v0, v2, v1

    sput-object v2, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    .line 2
    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    .line 6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 7
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private final formatBytesLocked(J)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v2, 0x400

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%.2fKB"

    invoke-virtual {v0, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/32 v3, 0x40000000

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    .line 5
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%.2fMB"

    invoke-virtual {v0, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 6
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%.2fGB"

    invoke-virtual {v0, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 8
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-string p1, "---%"

    return-object p1

    :cond_0
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 1
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "%.1f%%"

    invoke-virtual {p2, p1, p4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final formatTime(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x64

    .line 1
    div-long v2, p1, v0

    .line 2
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    const-wide/16 v0, 0xa

    mul-long/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms "

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 1
    div-long v2, p1, v0

    .line 2
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms "

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 10

    const-wide/32 v0, 0x15180

    .line 1
    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "d "

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v6, 0x18

    mul-long/2addr v0, v6

    sub-long v6, p1, v0

    const-wide/16 v8, 0xe10

    .line 4
    div-long/2addr v6, v8

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    cmp-long v8, v0, v2

    if-eqz v8, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "h "

    .line 6
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    sub-long v6, p1, v0

    .line 7
    div-long/2addr v6, v4

    cmp-long v8, v6, v2

    if-nez v8, :cond_3

    cmp-long v8, v0, v2

    if-eqz v8, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "m "

    .line 9
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    :cond_5
    sub-long/2addr p1, v0

    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s "

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method public static printBitDescriptions(Ljava/io/PrintWriter;II[Landroid/os/BatteryStats$BitDescription;)V
    .locals 4

    xor-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_5

    .line 2
    aget-object v1, p3, v0

    .line 3
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int v3, p1, v2

    if-eqz v3, :cond_4

    .line 4
    iget v3, v1, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v3, :cond_2

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    const-string v2, " +"

    goto :goto_1

    :cond_1
    const-string v2, " -"

    .line 5
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-object v1, v1, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v2, " "

    .line 7
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-object v2, v1, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    .line 9
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v2, p2

    iget v3, v1, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v2, v3

    .line 11
    iget-object v1, v1, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-ltz v2, :cond_3

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 12
    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide p2

    .line 2
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p1

    const-wide/16 v0, 0x0

    cmp-long p5, p2, v0

    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0, p2, p3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p2, 0x28

    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " times)"

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    return-object p0

    :cond_1
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p2

    .line 2
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p5, 0x1f4

    add-long/2addr p2, p5

    const-wide/16 p5, 0x3e8

    .line 4
    div-long/2addr p2, p5

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, ","

    if-eqz p4, :cond_1

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p2
.end method


# virtual methods
.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Ljava/io/PrintWriter;II)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v11, 0x3e8

    mul-long/2addr v2, v11

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v4, v11

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v13

    .line 4
    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v7

    .line 5
    invoke-virtual {v0, v2, v3, v9}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v15

    .line 6
    invoke-virtual {v0, v4, v5, v9}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v17

    .line 7
    invoke-virtual {v0, v4, v5, v9}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v2, v3, v9}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v19

    .line 10
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v21

    .line 11
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v23

    .line 12
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v25

    .line 13
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v27

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v11

    .line 16
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 17
    sget-object v31, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    move-wide/from16 v32, v13

    aget-object v13, v31, v9

    const/4 v14, 0x5

    move-object/from16 v31, v6

    new-array v6, v14, [Ljava/lang/Object;

    if-nez v9, :cond_0

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    goto :goto_0

    :cond_0
    const-string v34, "N/A"

    :goto_0
    const/4 v14, 0x0

    aput-object v34, v6, v14

    const-wide/16 v29, 0x3e8

    div-long v17, v17, v29

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/4 v14, 0x1

    aput-object v17, v6, v14

    div-long v15, v15, v29

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/4 v14, 0x2

    aput-object v15, v6, v14

    div-long v4, v4, v29

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v15, 0x3

    aput-object v4, v6, v15

    div-long v2, v2, v29

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v6, v4

    const-string v2, "bt"

    const/4 v3, 0x0

    invoke-static {v1, v3, v13, v2, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v35, 0x0

    move v2, v3

    move-wide/from16 v5, v35

    move-wide/from16 v37, v5

    move-wide/from16 v39, v37

    move-wide/from16 v41, v39

    move-wide/from16 v43, v41

    move-wide/from16 v45, v43

    :goto_1
    if-ge v2, v12, :cond_4

    .line 19
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Landroid/os/BatteryStats$Uid;

    .line 20
    invoke-virtual {v4, v3, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v47

    add-long v5, v5, v47

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v4, v3, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v47

    add-long v37, v37, v47

    .line 22
    invoke-virtual {v4, v14, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v47

    add-long v39, v39, v47

    .line 23
    invoke-virtual {v4, v15, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v47

    add-long v41, v41, v47

    .line 24
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 26
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v15, 0x1

    .line 28
    invoke-virtual {v4, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 29
    invoke-virtual {v14, v7, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    add-long v43, v43, v14

    :cond_1
    const/4 v14, 0x0

    .line 30
    invoke-virtual {v4, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 31
    invoke-virtual {v4, v7, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    add-long v45, v45, v14

    :cond_2
    const/4 v14, 0x2

    const/4 v15, 0x3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto :goto_1

    :cond_4
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    .line 32
    div-long v19, v19, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v2, v15

    div-long v21, v21, v3

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v2, v15

    div-long v23, v23, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v2, v15

    div-long v25, v25, v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v2, v15

    div-long v27, v27, v3

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v14, 0x6

    aput-object v3, v2, v14

    const/4 v3, 0x7

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getInputEventCount(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "m"

    const/4 v4, 0x0

    invoke-static {v1, v4, v13, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_5

    .line 33
    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    const-wide/16 v19, 0x3e8

    div-long v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-string v4, "br"

    const/4 v5, 0x0

    .line 34
    invoke-static {v1, v5, v13, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_6

    .line 35
    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v19, 0x3e8

    div-long v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x5

    goto :goto_4

    :cond_6
    const-wide/16 v19, 0x3e8

    const-string/jumbo v2, "sgt"

    const/4 v4, 0x0

    .line 36
    invoke-static {v1, v4, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v21

    div-long v21, v21, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v4

    const-string/jumbo v2, "sst"

    invoke-static {v1, v4, v13, v2, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    :goto_5
    const/4 v5, 0x5

    if-ge v2, v5, :cond_7

    .line 38
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const-string/jumbo v2, "sgc"

    .line 39
    invoke-static {v1, v4, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x11

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_8

    .line 40
    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v5

    const-wide/16 v19, 0x3e8

    div-long v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const-string v4, "dct"

    const/4 v5, 0x0

    .line 41
    invoke-static {v1, v5, v13, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    :goto_7
    if-ge v4, v2, :cond_9

    .line 42
    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    const-string v2, "dcc"

    .line 43
    invoke-static {v1, v5, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x3

    if-ne v9, v2, :cond_a

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "lv"

    invoke-static {v1, v5, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const-string v2, "dc"

    const/4 v3, 0x3

    if-ne v9, v3, :cond_b

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const/4 v3, 0x0

    invoke-static {v1, v3, v13, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x4

    goto :goto_8

    :cond_b
    move v3, v5

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v5, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x2

    aput-object v6, v5, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x3

    aput-object v6, v5, v15

    invoke-static {v1, v3, v13, v2, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    if-gez v10, :cond_c

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 49
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/util/Map$Entry;

    move-object/from16 v6, v31

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/BatteryStats$Timer;

    const/16 v20, 0x0

    const-string v21, ""

    move-object v2, v6

    move v14, v4

    move-wide v4, v7

    move-object/from16 v6, v20

    move-object/from16 v20, v15

    move-wide v14, v7

    move/from16 v7, p2

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 52
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const-string v2, "kwl"

    invoke-static {v1, v4, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v7, v14

    move-object/from16 v15, v20

    const/4 v4, 0x4

    const/4 v14, 0x6

    goto :goto_9

    :cond_c
    move-wide v14, v7

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v12, :cond_23

    .line 53
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-ltz v10, :cond_e

    if-eq v7, v10, :cond_e

    move/from16 v21, v8

    move-object/from16 v24, v31

    :cond_d
    move-wide/from16 v7, v32

    const/4 v0, 0x6

    const/4 v6, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v26, 0x2

    const-wide/16 v27, 0x3e8

    goto/16 :goto_13

    .line 54
    :cond_e
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/BatteryStats$Uid;

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v6, v2, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v3

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v6, v2, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v19

    const/4 v2, 0x2

    .line 57
    invoke-virtual {v6, v2, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v23

    const/4 v2, 0x3

    .line 58
    invoke-virtual {v6, v2, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v25

    .line 59
    invoke-virtual {v6, v14, v15, v9}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v27

    .line 60
    invoke-virtual {v6, v14, v15, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v37

    .line 61
    invoke-virtual {v6, v14, v15, v9}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v39

    cmp-long v2, v3, v35

    if-gtz v2, :cond_f

    cmp-long v2, v19, v35

    if-gtz v2, :cond_f

    cmp-long v2, v23, v35

    if-gtz v2, :cond_f

    cmp-long v2, v25, v35

    if-lez v2, :cond_10

    :cond_f
    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v5, v3

    const-string v2, "nt"

    invoke-static {v1, v7, v13, v2, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    cmp-long v2, v27, v35

    if-nez v2, :cond_11

    cmp-long v2, v37, v35

    if-nez v2, :cond_11

    cmp-long v2, v39, v35

    if-eqz v2, :cond_12

    :cond_11
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 63
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string/jumbo v2, "wfl"

    invoke-static {v1, v7, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_12
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v4, v2, :cond_14

    .line 65
    invoke-virtual {v6, v4, v9}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v4

    if-eqz v2, :cond_13

    const/4 v5, 0x1

    :cond_13
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x3

    goto :goto_b

    :cond_14
    if-eqz v5, :cond_15

    const-string/jumbo v2, "ua"

    const/4 v4, 0x0

    .line 67
    invoke-static {v1, v4, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_15
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 70
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Ljava/util/Map$Entry;

    .line 71
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v5, v31

    const/4 v3, 0x0

    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v18

    const-string v21, "f"

    const-string v23, ""

    move-object v2, v5

    move v0, v3

    move-object/from16 v3, v18

    move-object v0, v4

    move-object/from16 v24, v5

    move-wide v4, v14

    move-object/from16 v25, v6

    move-object/from16 v6, v21

    move v10, v7

    move/from16 v7, p2

    move/from16 v21, v8

    move-object/from16 v8, v23

    invoke-static/range {v2 .. v8}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-string v6, "p"

    move-object/from16 v2, v24

    invoke-static/range {v2 .. v8}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    .line 75
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-string/jumbo v6, "w"

    move-object/from16 v2, v24

    invoke-static/range {v2 .. v8}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 76
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 77
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x2c

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_16

    const/16 v3, 0x5f

    .line 79
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    .line 80
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string/jumbo v0, "wl"

    invoke-static {v1, v10, v13, v0, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v0, p0

    move v7, v10

    move/from16 v8, v21

    move-object/from16 v31, v24

    move-object/from16 v6, v25

    move/from16 v10, p3

    goto/16 :goto_c

    :cond_18
    move-object/from16 v25, v6

    move v10, v7

    move/from16 v21, v8

    move-object/from16 v24, v31

    .line 81
    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const-wide/16 v3, 0x1f4

    if-lez v2, :cond_1a

    .line 83
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Sensor;

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 87
    invoke-virtual {v5, v14, v15, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long/2addr v6, v3

    const-wide/16 v19, 0x3e8

    div-long v6, v6, v19

    .line 88
    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    cmp-long v8, v6, v35

    if-eqz v8, :cond_19

    const/4 v8, 0x3

    new-array v3, v8, [Ljava/lang/Object;

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string/jumbo v2, "sr"

    invoke-static {v1, v10, v13, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    const-wide/16 v3, 0x1f4

    goto :goto_d

    .line 90
    :cond_1a
    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 91
    invoke-virtual {v0, v14, v15, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 92
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    cmp-long v4, v2, v35

    if-eqz v4, :cond_1b

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const-string/jumbo v0, "vib"

    invoke-static {v1, v10, v13, v0, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1b
    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 95
    invoke-virtual {v0, v14, v15, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 96
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    cmp-long v4, v2, v35

    if-eqz v4, :cond_1c

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const-string v0, "fg"

    invoke-static {v1, v10, v13, v0, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_1c
    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 100
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    .line 102
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    .line 103
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v19

    mul-long v19, v19, v6

    .line 104
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v26

    mul-long v26, v26, v6

    .line 105
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v35

    if-nez v3, :cond_1e

    cmp-long v3, v19, v35

    if-nez v3, :cond_1e

    cmp-long v3, v26, v35

    if-nez v3, :cond_1e

    cmp-long v3, v6, v35

    if-eqz v3, :cond_1d

    :cond_1e
    const/4 v3, 0x5

    new-array v8, v3, [Ljava/lang/Object;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v8, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v8, v3

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v8, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v8, v3

    const-string v2, "pr"

    invoke-static {v1, v10, v13, v2, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 107
    :cond_1f
    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 111
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v4

    .line 112
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Ljava/util/Map;

    move-result-object v3

    .line 113
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v7, v32

    .line 115
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v19

    .line 116
    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v23

    .line 117
    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v6

    cmp-long v25, v19, v35

    if-nez v25, :cond_21

    if-nez v23, :cond_21

    if-eqz v6, :cond_20

    goto :goto_11

    :cond_20
    move-object/from16 v25, v0

    move-object/from16 v22, v3

    const/4 v0, 0x6

    const/4 v6, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v26, 0x2

    const-wide/16 v27, 0x3e8

    goto :goto_12

    :cond_21
    :goto_11
    move-object/from16 v25, v0

    move-object/from16 v22, v3

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v18, 0x0

    aput-object v26, v3, v18

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    const/16 v16, 0x1

    aput-object v26, v3, v16

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const/16 v26, 0x2

    aput-object v5, v3, v26

    const-wide/16 v27, 0x3e8

    div-long v19, v19, v27

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v17, 0x3

    aput-object v5, v3, v17

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v19, 0x4

    aput-object v5, v3, v19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v3, v6

    const-string v5, "apk"

    invoke-static {v1, v10, v13, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    move-wide/from16 v32, v7

    move-object/from16 v3, v22

    move-object/from16 v0, v25

    goto/16 :goto_10

    :cond_22
    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    goto/16 :goto_f

    :goto_13
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v10, p3

    move-wide/from16 v32, v7

    move-object/from16 v31, v24

    move v8, v2

    goto/16 :goto_a

    :cond_23
    return-void
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/util/List;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 120
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 121
    new-instance p4, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p4}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 124
    :goto_0
    invoke-virtual {p0, p4}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    .line 125
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 126
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const-string v5, "h"

    .line 127
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 128
    invoke-virtual {v3, p1, p4, v0, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItemCheckin(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    .line 129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    :cond_1
    if-eqz p2, :cond_5

    .line 131
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    move v0, v2

    .line 132
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 133
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 134
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p4, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    :cond_2
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object p2

    .line 139
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_5

    .line 140
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 141
    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    move v6, v2

    .line 142
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 144
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v1, v8

    const-string v7, "i"

    const-string/jumbo v8, "uid"

    .line 145
    invoke-static {p1, v2, v7, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x3

    const/4 p4, -0x1

    if-eqz p3, :cond_6

    .line 146
    invoke-virtual {p0, p1, p2, p4}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    goto :goto_4

    .line 147
    :cond_6
    invoke-virtual {p0, p1, v2, p4}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 148
    invoke-virtual {p0, p1, p2, p4}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    :goto_4
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 70

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v12, 0x3e8

    mul-long/2addr v3, v12

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v12

    .line 3
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v14

    .line 4
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v8

    .line 5
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v12

    move-wide/from16 v18, v8

    .line 6
    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 7
    invoke-virtual {v0, v5, v6, v10}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v5

    .line 8
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v3

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    move-wide/from16 v20, v14

    const/16 v14, 0x80

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v14

    .line 11
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    move-object/from16 v22, v14

    const/4 v14, 0x0

    .line 12
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 13
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  Time on battery: "

    .line 14
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v23, v15

    const-wide/16 v16, 0x3e8

    .line 15
    div-long v14, v7, v16

    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v14, "("

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0, v7, v8, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") realtime, "

    .line 17
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v24, v7

    .line 18
    div-long v7, v12, v16

    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 19
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12, v13, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") uptime"

    .line 20
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 22
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 23
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Total run time: "

    .line 24
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    .line 25
    div-long/2addr v5, v7

    invoke-static {v9, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "realtime, "

    .line 26
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    div-long/2addr v3, v7

    invoke-static {v9, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v3, "uptime, "

    .line 28
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v12, v18

    .line 30
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v3

    .line 31
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v5

    .line 32
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v7

    move-wide/from16 v18, v7

    .line 33
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v7

    move-wide/from16 v26, v7

    .line 34
    invoke-virtual {v0, v12, v13, v10}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v7

    const/4 v15, 0x0

    .line 35
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 36
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  Screen on: "

    .line 37
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v28, v7

    const-wide/16 v15, 0x3e8

    div-long v7, v3, v15

    invoke-static {v9, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 38
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v24

    invoke-direct {v0, v3, v4, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "), Input events: "

    .line 39
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getInputEventCount(I)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", Active phone call: "

    .line 40
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v24, v3

    const-wide/16 v15, 0x3e8

    div-long v3, v5, v15

    invoke-static {v9, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 41
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    .line 42
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Screen brightnesses: "

    .line 46
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    const-string v6, ", "

    move-wide/from16 v30, v7

    const-string v7, " "

    const-wide/16 v32, 0x0

    if-ge v3, v5, :cond_2

    move-object/from16 v34, v9

    .line 47
    invoke-virtual {v0, v3, v12, v13, v10}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v8

    cmp-long v5, v8, v32

    if-nez v5, :cond_0

    move/from16 v35, v4

    move-wide/from16 v36, v12

    move-wide/from16 v12, v24

    move-object/from16 v4, v34

    goto :goto_2

    :cond_0
    if-eqz v4, :cond_1

    move-object/from16 v4, v34

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move-object/from16 v4, v34

    .line 49
    :goto_1
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v36, v12

    const-wide/16 v5, 0x3e8

    .line 51
    div-long v12, v8, v5

    invoke-static {v4, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 52
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v24

    .line 53
    invoke-direct {v0, v8, v9, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v35, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v9, v4

    move-wide/from16 v24, v12

    move-wide/from16 v7, v30

    move/from16 v4, v35

    move-wide/from16 v12, v36

    goto :goto_0

    :cond_2
    move-wide/from16 v36, v12

    const-string v12, "No activity"

    if-nez v4, :cond_3

    .line 55
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance v13, Landroid/os/BatteryStats$1;

    invoke-direct {v13, v0}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    const-string v8, ": "

    const-string v4, " realtime"

    if-gez v11, :cond_8

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 59
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v24

    if-lez v24, :cond_8

    move-object/from16 v24, v7

    .line 60
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 62
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v5, v34

    check-cast v5, Landroid/os/BatteryStats$Timer;

    move-object/from16 v34, v14

    move-object/from16 v44, v15

    move-wide/from16 v14, v36

    .line 63
    invoke-static {v5, v14, v15, v10}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v42

    cmp-long v36, v42, v32

    if-lez v36, :cond_4

    move-object/from16 v36, v3

    .line 64
    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v39, v25

    check-cast v39, Ljava/lang/String;

    const/16 v40, 0x0

    move-object/from16 v38, v3

    move-object/from16 v41, v5

    invoke-direct/range {v38 .. v43}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object/from16 v36, v3

    :goto_4
    move-object/from16 v3, v36

    const/4 v5, 0x5

    move-wide/from16 v36, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v44

    goto :goto_3

    :cond_5
    move-object/from16 v34, v14

    move-object/from16 v44, v15

    move-wide/from16 v14, v36

    .line 65
    invoke-static {v7, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    .line 66
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_7

    .line 67
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    move-object/from16 v25, v4

    const/4 v4, 0x0

    .line 68
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Kernel Wake lock "

    .line 70
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v4, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v4, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v36, 0x0

    const-string v37, ": "

    move-object v3, v9

    move-object/from16 v45, v25

    move/from16 v25, v5

    move-object/from16 v46, v6

    move-object/from16 v38, v13

    const/4 v13, 0x5

    move-wide v5, v14

    move-wide/from16 v49, v18

    move-object/from16 v55, v24

    move-wide/from16 v51, v26

    move-wide/from16 v53, v28

    move-wide/from16 v47, v30

    move-object/from16 v18, v7

    move-object/from16 v7, v36

    move-wide/from16 v56, v14

    const/4 v14, 0x1

    move-object v15, v8

    move/from16 v8, p3

    move-object v13, v9

    move-object/from16 v9, v37

    invoke-static/range {v3 .. v9}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v9, v45

    if-nez v3, :cond_6

    .line 74
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v5, v25, 0x1

    move-object v4, v9

    move-object v9, v13

    move-object v8, v15

    move-object/from16 v7, v18

    move-object/from16 v13, v38

    move-object/from16 v6, v46

    move-wide/from16 v30, v47

    move-wide/from16 v18, v49

    move-wide/from16 v26, v51

    move-wide/from16 v28, v53

    move-object/from16 v24, v55

    move-wide/from16 v14, v56

    goto :goto_5

    :cond_7
    move-object/from16 v46, v6

    move-object/from16 v38, v13

    move-wide/from16 v56, v14

    move-wide/from16 v49, v18

    move-object/from16 v55, v24

    move-wide/from16 v51, v26

    move-wide/from16 v53, v28

    move-wide/from16 v47, v30

    goto :goto_6

    :cond_8
    move-object/from16 v46, v6

    move-object/from16 v55, v7

    move-object/from16 v38, v13

    move-object/from16 v34, v14

    move-object/from16 v44, v15

    move-wide/from16 v49, v18

    move-wide/from16 v51, v26

    move-wide/from16 v53, v28

    move-wide/from16 v47, v30

    move-wide/from16 v56, v36

    :goto_6
    const/4 v14, 0x1

    move-object v15, v8

    move-object v13, v9

    move-object v9, v4

    .line 76
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v4, v32

    move-wide v6, v4

    move-wide/from16 v18, v6

    move-wide/from16 v24, v18

    move-wide/from16 v58, v24

    move-wide/from16 v60, v58

    const/4 v3, 0x0

    :goto_7
    move/from16 v14, v23

    if-ge v3, v14, :cond_d

    move-object/from16 v23, v15

    move-object/from16 v15, v22

    .line 77
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v45, v9

    move-object/from16 v9, v22

    check-cast v9, Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v15

    const/4 v15, 0x0

    .line 78
    invoke-virtual {v9, v15, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v28

    add-long v4, v4, v28

    const/4 v15, 0x1

    .line 79
    invoke-virtual {v9, v15, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v28

    add-long v6, v6, v28

    const/4 v15, 0x2

    .line 80
    invoke-virtual {v9, v15, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v27

    move/from16 v29, v14

    move-wide/from16 v14, v58

    add-long v58, v14, v27

    const/4 v14, 0x3

    .line 81
    invoke-virtual {v9, v14, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v14

    move-object/from16 v28, v12

    move-object/from16 v30, v13

    move-wide/from16 v12, v60

    add-long v60, v12, v14

    .line 82
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v12

    .line 83
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 84
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Wakelock;

    move-wide/from16 v26, v4

    const/4 v15, 0x1

    .line 86
    invoke-virtual {v14, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    move-wide/from16 v36, v6

    move-wide/from16 v6, v56

    if-eqz v4, :cond_9

    .line 87
    invoke-virtual {v4, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v18, v18, v4

    :cond_9
    const/4 v4, 0x0

    .line 88
    invoke-virtual {v14, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 89
    invoke-virtual {v5, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    cmp-long v4, v14, v32

    if-lez v4, :cond_b

    if-gez v11, :cond_a

    .line 90
    new-instance v4, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v63, v13

    check-cast v63, Ljava/lang/String;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v64

    move-object/from16 v62, v4

    move-object/from16 v65, v5

    move-wide/from16 v66, v14

    invoke-direct/range {v62 .. v67}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-long v24, v24, v14

    :cond_b
    move-wide/from16 v56, v6

    move-wide/from16 v4, v26

    move-wide/from16 v6, v36

    goto :goto_8

    :cond_c
    move-wide/from16 v26, v4

    move-wide/from16 v36, v6

    move-wide/from16 v6, v56

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v56, v6

    move-object/from16 v15, v23

    move-wide/from16 v4, v26

    move-object/from16 v12, v28

    move/from16 v23, v29

    move-object/from16 v13, v30

    move-wide/from16 v6, v36

    move-object/from16 v9, v45

    goto/16 :goto_7

    :cond_d
    move-object/from16 v31, v8

    move-object/from16 v45, v9

    move-object/from16 v28, v12

    move-object/from16 v30, v13

    move/from16 v29, v14

    move-object/from16 v23, v15

    move-wide/from16 v14, v58

    move-wide/from16 v12, v60

    move-wide v8, v6

    move-wide/from16 v6, v56

    .line 91
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Mobile total received: "

    .line 92
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v0, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ", Total sent: "

    .line 93
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v0, v8, v9}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Wi-Fi total received: "

    .line 95
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v0, v14, v15}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v0, v12, v13}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v12, v30

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 98
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Total full wakelock time: "

    .line 99
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x1f4

    add-long v18, v18, v13

    const-wide/16 v3, 0x3e8

    div-long v8, v18, v3

    invoke-static {v12, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, ", Total partial wakelock time: "

    .line 100
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v24, v24, v13

    div-long v8, v24, v3

    invoke-static {v12, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 101
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 103
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Signal levels: "

    .line 104
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    const-string/jumbo v5, "x"

    const-string v8, ") "

    const/4 v9, 0x5

    if-ge v3, v9, :cond_10

    .line 105
    invoke-virtual {v0, v3, v6, v7, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v13

    cmp-long v15, v13, v32

    if-nez v15, :cond_e

    move v5, v4

    move v13, v10

    move-object/from16 v15, v46

    move-wide/from16 v9, v47

    move-object/from16 v4, v55

    goto :goto_a

    :cond_e
    move-object/from16 v15, v46

    if-eqz v4, :cond_f

    .line 106
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_f
    sget-object v4, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v55

    .line 108
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x3e8

    .line 109
    div-long v9, v13, v16

    invoke-static {v12, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v10, v34

    .line 110
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v47

    .line 111
    invoke-direct {v0, v13, v14, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    .line 113
    invoke-virtual {v0, v3, v13}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v55, v4

    move v4, v5

    move-wide/from16 v47, v9

    move v10, v13

    move-object/from16 v46, v15

    const-wide/16 v13, 0x1f4

    goto :goto_9

    :cond_10
    move v13, v10

    move-object/from16 v15, v46

    move-wide/from16 v9, v47

    move-object/from16 v14, v55

    move-object/from16 v3, v28

    if-nez v4, :cond_11

    .line 115
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_11
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 117
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Signal scanning time: "

    .line 119
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v6, v7, v13}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v24

    move-object/from16 v28, v3

    const-wide/16 v16, 0x3e8

    div-long v3, v24, v16

    invoke-static {v12, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 121
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 123
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Radio types: "

    .line 124
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    const/16 v11, 0x11

    if-ge v3, v11, :cond_14

    .line 125
    invoke-virtual {v0, v3, v6, v7, v13}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v1

    cmp-long v11, v1, v32

    if-nez v11, :cond_12

    move-wide/from16 v56, v6

    move-object/from16 v11, v34

    goto :goto_c

    :cond_12
    if-eqz v4, :cond_13

    .line 126
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_13
    sget-object v4, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v56, v6

    const-wide/16 v16, 0x3e8

    .line 129
    div-long v6, v1, v16

    invoke-static {v12, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v11, v34

    .line 130
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v0, v1, v2, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, v3, v13}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v34, v11

    move-wide/from16 v6, v56

    goto :goto_b

    :cond_14
    move-wide/from16 v56, v6

    move-object/from16 v11, v34

    if-nez v4, :cond_15

    move-object/from16 v1, v28

    .line 135
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_15
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v8, p2

    .line 138
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Radio data uptime when unplugged: "

    .line 139
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRadioDataUptime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    .line 141
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 144
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Wifi on: "

    .line 145
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v51

    div-long v7, v3, v5

    invoke-static {v12, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 146
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3, v4, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Wifi running: "

    .line 147
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v49

    div-long v7, v3, v5

    invoke-static {v12, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 148
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3, v4, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Bluetooth on: "

    .line 149
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v53

    div-long v7, v3, v5

    invoke-static {v12, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 150
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3, v4, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v44

    .line 151
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Amount discharged while screen off: "

    const-string v4, "    Amount discharged while screen on: "

    const/4 v5, 0x3

    if-ne v13, v5, :cond_17

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 155
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Device is currently unplugged"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Discharge cycle start level: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 158
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Discharge cycle current level: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_d

    .line 160
    :cond_16
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Device is currently plugged into power"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Last discharge cycle start level: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 163
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Last discharge cycle end level: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 165
    :goto_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 167
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 169
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 170
    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Device battery use since last full charge"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged (lower bound): "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 173
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged (upper bound): "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 175
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 177
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 180
    :goto_e
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_19

    move-object/from16 v8, v31

    move-object/from16 v3, v38

    .line 181
    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  All partial wake locks:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 183
    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v7, v3, :cond_18

    .line 184
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    const/4 v4, 0x0

    .line 185
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "  Wake lock "

    .line 186
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v4, v3, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v12, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 188
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v4, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v4, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v24, 0x0

    const-string v25, ": "

    move-object v3, v12

    move-wide/from16 v36, v56

    move-wide/from16 v5, v36

    move/from16 v28, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move/from16 v8, p3

    move-wide/from16 v68, v9

    move-object/from16 v10, v45

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v9}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 191
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v28, 0x1

    move-object/from16 v8, v24

    move-wide/from16 v9, v68

    goto :goto_f

    :cond_18
    move-object/from16 v24, v8

    move-wide/from16 v68, v9

    move-object/from16 v10, v45

    move-wide/from16 v36, v56

    .line 193
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_10

    :cond_19
    move-wide/from16 v68, v9

    move-object/from16 v10, v45

    move-wide/from16 v36, v56

    :goto_10
    move/from16 v8, v29

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v8, :cond_49

    move-object/from16 v7, v22

    .line 195
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move/from16 v5, p4

    if-ltz v5, :cond_1a

    if-eq v3, v5, :cond_1a

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1a

    move-object/from16 v44, v1

    move-object/from16 v22, v7

    move/from16 v29, v8

    move/from16 v24, v9

    move-object/from16 v45, v10

    move-object/from16 v34, v11

    move-object v3, v12

    move-object v12, v15

    move-wide/from16 v10, v20

    move-wide/from16 v56, v36

    move-wide/from16 v47, v68

    const/4 v5, 0x0

    const/4 v9, 0x2

    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x1f4

    move-object/from16 v7, p2

    move-object/from16 v36, v14

    goto/16 :goto_2d

    .line 196
    :cond_1a
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/os/BatteryStats$Uid;

    .line 197
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  "

    .line 198
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    invoke-static {v2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ":"

    .line 200
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v6, v3, v13}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v4

    move-object/from16 v22, v7

    move/from16 v29, v8

    const/4 v3, 0x1

    .line 202
    invoke-virtual {v6, v3, v13}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v7

    move/from16 v24, v9

    move-object/from16 v45, v10

    const/4 v3, 0x2

    .line 203
    invoke-virtual {v6, v3, v13}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v9

    move-object/from16 v55, v14

    move-object/from16 v46, v15

    const/4 v3, 0x3

    .line 204
    invoke-virtual {v6, v3, v13}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v14

    move-object/from16 v25, v11

    move-object/from16 v34, v12

    move-wide/from16 v30, v14

    move-wide/from16 v11, v36

    .line 205
    invoke-virtual {v6, v11, v12, v13}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v14

    move-wide/from16 v36, v14

    .line 206
    invoke-virtual {v6, v11, v12, v13}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v14

    move-wide/from16 v38, v14

    .line 207
    invoke-virtual {v6, v11, v12, v13}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v14

    cmp-long v3, v4, v32

    if-gtz v3, :cond_1b

    cmp-long v3, v7, v32

    if-lez v3, :cond_1c

    .line 208
    :cond_1b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Mobile network: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    invoke-direct {v0, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " received, "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    invoke-direct {v0, v7, v8}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " sent"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c
    cmp-long v3, v9, v32

    if-gtz v3, :cond_1d

    cmp-long v3, v30, v32

    if-lez v3, :cond_1e

    .line 211
    :cond_1d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Wi-Fi network: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    invoke-direct {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " received, "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v30

    .line 213
    invoke-direct {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " sent"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    :cond_1e
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x3

    :goto_12
    if-ge v3, v10, :cond_21

    .line 215
    invoke-virtual {v6, v3, v13}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v5

    if-eqz v5, :cond_20

    if-nez v4, :cond_1f

    move-object/from16 v9, v34

    const/4 v7, 0x0

    .line 216
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "    User activity: "

    .line 217
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v46

    const/4 v4, 0x1

    goto :goto_13

    :cond_1f
    move-object/from16 v9, v34

    move-object/from16 v8, v46

    .line 218
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_13
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v55

    .line 220
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    sget-object v5, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_20
    move-object/from16 v9, v34

    move-object/from16 v8, v46

    move-object/from16 v7, v55

    :goto_14
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v55, v7

    move-object/from16 v46, v8

    move-object/from16 v34, v9

    goto :goto_12

    :cond_21
    move-object/from16 v9, v34

    move-object/from16 v8, v46

    move-object/from16 v7, v55

    if-eqz v4, :cond_23

    .line 222
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    :cond_22
    move-object/from16 v9, v34

    move-object/from16 v8, v46

    move-object/from16 v7, v55

    const/4 v10, 0x3

    :cond_23
    :goto_15
    cmp-long v3, v36, v32

    if-nez v3, :cond_25

    cmp-long v3, v38, v32

    if-nez v3, :cond_25

    cmp-long v3, v14, v32

    if-eqz v3, :cond_24

    goto :goto_16

    :cond_24
    move-object/from16 v5, p2

    move-wide/from16 v56, v11

    move-object/from16 v10, v25

    move-wide/from16 v11, v68

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v3, 0x0

    .line 223
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v5, p2

    .line 224
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Wifi Running: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v56, v11

    const-wide/16 v3, 0x3e8

    .line 225
    div-long v10, v14, v3

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v10, v25

    .line 226
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v68

    invoke-direct {v0, v14, v15, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")\n"

    .line 227
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    Full Wifi Lock: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    div-long v14, v36, v3

    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 230
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v36

    invoke-direct {v0, v14, v15, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")\n"

    .line 231
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    Wifi Scan: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    div-long v14, v38, v3

    invoke-static {v9, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v38

    invoke-direct {v0, v3, v4, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    :goto_17
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 238
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2f

    .line 239
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object/from16 v44, v1

    move-object/from16 v34, v10

    move-wide/from16 v47, v11

    move-wide/from16 v0, v32

    move-wide v3, v0

    move-wide v10, v3

    const/4 v15, 0x0

    const/16 v25, 0x0

    :goto_18
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v30, v14

    move-object/from16 v14, v28

    check-cast v14, Landroid/os/BatteryStats$Uid$Wakelock;

    move-wide/from16 v36, v3

    const/4 v3, 0x0

    .line 241
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 242
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Wake lock "

    .line 243
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 245
    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const-string v12, "full"

    const-string v28, ": "

    move-wide/from16 v38, v10

    move-wide/from16 v10, v36

    move-object v3, v9

    move-object/from16 v31, v6

    move-wide/from16 v5, v56

    move-object/from16 v36, v7

    move-object v7, v12

    move-object v12, v8

    move/from16 v8, p3

    move-object/from16 v37, v9

    move-object/from16 v9, v28

    invoke-static/range {v3 .. v9}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    .line 246
    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const-string v7, "partial"

    move-object/from16 v3, v37

    invoke-static/range {v3 .. v9}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x2

    .line 247
    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const-string/jumbo v7, "window"

    move-object/from16 v3, v37

    invoke-static/range {v3 .. v9}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v23

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v3, v37

    move-object/from16 v5, v45

    .line 249
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    const/16 v25, 0x1

    goto :goto_19

    :cond_26
    move-object/from16 v3, v37

    move-object/from16 v5, v45

    const/4 v6, 0x1

    .line 251
    :goto_19
    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    move-wide/from16 v8, v56

    invoke-static {v7, v8, v9, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v40

    add-long v10, v10, v40

    const/4 v7, 0x0

    .line 252
    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    invoke-static {v6, v8, v9, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long/2addr v0, v6

    const/4 v6, 0x2

    .line 253
    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    invoke-static {v7, v8, v9, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v6, v38, v6

    move-object/from16 v23, v4

    move-object/from16 v45, v5

    move-object v8, v12

    move-object/from16 v14, v30

    move-object/from16 v5, p2

    move-object v9, v3

    move-wide v3, v10

    move-wide v10, v6

    move-object/from16 v6, v31

    move-object/from16 v7, v36

    goto/16 :goto_18

    :cond_27
    move-object/from16 v31, v6

    move-object/from16 v36, v7

    move-object v12, v8

    move-wide/from16 v38, v10

    move-object/from16 v5, v45

    const/4 v6, 0x1

    move-wide v10, v3

    move-object v3, v9

    move-object/from16 v4, v23

    move-wide/from16 v8, v56

    if-le v15, v6, :cond_2e

    cmp-long v6, v10, v32

    if-nez v6, :cond_28

    cmp-long v7, v0, v32

    if-nez v7, :cond_28

    cmp-long v7, v38, v32

    if-eqz v7, :cond_2e

    :cond_28
    const/4 v7, 0x0

    .line 254
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v7, p2

    .line 255
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    TOTAL wake: "

    .line 256
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_29

    .line 257
    invoke-static {v3, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "full"

    .line 258
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_1a

    :cond_29
    const/4 v6, 0x0

    :goto_1a
    cmp-long v10, v0, v32

    if-eqz v10, :cond_2b

    if-eqz v6, :cond_2a

    .line 259
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_2a
    invoke-static {v3, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "partial"

    .line 261
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    :cond_2b
    cmp-long v0, v38, v32

    if-eqz v0, :cond_2d

    if-eqz v6, :cond_2c

    .line 262
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    move-wide/from16 v0, v38

    .line 263
    invoke-static {v3, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "window"

    .line 264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    :cond_2e
    move-object/from16 v7, p2

    goto :goto_1b

    :cond_2f
    move-object/from16 v44, v1

    move-object/from16 v31, v6

    move-object/from16 v36, v7

    move-object v3, v9

    move-object/from16 v34, v10

    move-wide/from16 v47, v11

    move-object/from16 v4, v23

    move-object v7, v5

    move-object v12, v8

    move-object/from16 v5, v45

    move-wide/from16 v8, v56

    const/16 v25, 0x0

    .line 267
    :goto_1b
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const-string v6, " times)"

    const-string v10, "realtime ("

    if-lez v1, :cond_33

    .line 269
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 270
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Sensor;

    .line 271
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 273
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Sensor "

    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v1

    const/16 v14, -0x2710

    if-ne v1, v14, :cond_30

    const-string v1, "GPS"

    .line 276
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 277
    :cond_30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    :goto_1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 280
    invoke-virtual {v1, v8, v9, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    const-wide/16 v18, 0x1f4

    add-long v14, v14, v18

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    .line 281
    invoke-virtual {v1, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    cmp-long v11, v14, v32

    if-eqz v11, :cond_31

    .line 282
    invoke-static {v3, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 283
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_31
    const-string v1, "(not used)"

    .line 286
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_32
    const-string v1, "(not used)"

    .line 287
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :goto_1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, 0x1

    goto :goto_1c

    .line 289
    :cond_33
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 290
    invoke-virtual {v0, v8, v9, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    const-wide/16 v18, 0x1f4

    add-long v14, v14, v18

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    .line 291
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    cmp-long v1, v14, v32

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 293
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Vibrator: "

    .line 294
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-static {v3, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 296
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, 0x1

    .line 300
    :cond_34
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 301
    invoke-virtual {v0, v8, v9, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    const-wide/16 v18, 0x1f4

    add-long v14, v14, v18

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    .line 302
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    cmp-long v1, v14, v32

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 304
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Foreground activities: "

    .line 305
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {v3, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 307
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, 0x1

    goto :goto_1f

    :cond_35
    const-wide/16 v18, 0x1f4

    .line 311
    :cond_36
    :goto_1f
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_40

    .line 313
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Proc;

    .line 315
    invoke-virtual {v6, v13}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v10

    .line 316
    invoke-virtual {v6, v13}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v14

    move-object/from16 v23, v4

    move-object/from16 v45, v5

    .line 317
    invoke-virtual {v6, v13}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v4

    move-object/from16 v28, v0

    .line 318
    invoke-virtual {v6, v13}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v0

    if-nez v13, :cond_37

    .line 319
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v30

    move-wide/from16 v56, v8

    move/from16 v8, v30

    goto :goto_21

    :cond_37
    move-wide/from16 v56, v8

    const/4 v8, 0x0

    :goto_21
    cmp-long v9, v10, v32

    if-nez v9, :cond_39

    cmp-long v9, v14, v32

    if-nez v9, :cond_39

    cmp-long v9, v4, v32

    if-nez v9, :cond_39

    if-nez v0, :cond_39

    if-eqz v8, :cond_38

    goto :goto_22

    :cond_38
    const/4 v5, 0x1

    const/4 v9, 0x2

    goto/16 :goto_26

    :cond_39
    :goto_22
    const/4 v9, 0x0

    .line 320
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 321
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    Proc "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      CPU: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {v3, v10, v11}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v1, "usr + "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {v3, v14, v15}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string v1, "krn ; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {v3, v4, v5}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string v1, "fg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3a

    const-string v1, "\n"

    .line 327
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " proc starts"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v8, :cond_3f

    .line 330
    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 331
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      * Killed for "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3b

    const-string/jumbo v4, "wake lock"

    .line 333
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v9, 0x2

    goto :goto_24

    :cond_3b
    const/4 v9, 0x2

    if-ne v4, v9, :cond_3c

    const-string v4, "cpu"

    .line 334
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_24

    :cond_3c
    const-string/jumbo v4, "unknown"

    .line 335
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_24
    const-string v4, " use: "

    .line 336
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    iget-wide v10, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " over "

    .line 338
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-wide v10, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 340
    iget-wide v10, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v4, v10, v32

    if-eqz v4, :cond_3e

    const-string v4, " ("

    .line 341
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-wide v10, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v14, 0x64

    mul-long/2addr v10, v14

    iget-wide v14, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v10, v14

    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, "%)"

    .line 343
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    :cond_3d
    const/4 v5, 0x1

    const/4 v9, 0x2

    :cond_3e
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3f
    const/4 v5, 0x1

    const/4 v9, 0x2

    move/from16 v25, v5

    :goto_26
    move-object/from16 v4, v23

    move-object/from16 v0, v28

    move-object/from16 v5, v45

    move-wide/from16 v8, v56

    goto/16 :goto_20

    :cond_40
    move-object/from16 v23, v4

    move-object/from16 v45, v5

    move-wide/from16 v56, v8

    const/4 v5, 0x1

    const/4 v9, 0x2

    move/from16 v8, v25

    .line 344
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v0

    .line 345
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 346
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 347
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    Apk "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pkg;

    .line 349
    invoke-virtual {v1, v13}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v4

    if-eqz v4, :cond_41

    .line 350
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "      "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " wakeup alarms"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v5

    goto :goto_28

    :cond_41
    const/4 v4, 0x0

    .line 352
    :goto_28
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Ljava/util/Map;

    move-result-object v1

    .line 353
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_45

    .line 354
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v4

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v10, v20

    .line 356
    invoke-virtual {v6, v10, v11, v13}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v14

    .line 357
    invoke-virtual {v6, v13}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v5

    .line 358
    invoke-virtual {v6, v13}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v6

    cmp-long v20, v14, v32

    if-nez v20, :cond_43

    if-nez v5, :cond_43

    if-eqz v6, :cond_42

    goto :goto_2a

    :cond_42
    const-wide/16 v16, 0x3e8

    goto :goto_2b

    :cond_43
    :goto_2a
    const/4 v8, 0x0

    .line 359
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 360
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      Service "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        Created for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x3e8

    .line 363
    div-long v14, v14, v16

    invoke-static {v3, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v4, "uptime\n"

    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        Starts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", launches: "

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    :goto_2b
    move-wide/from16 v20, v10

    const/4 v5, 0x1

    goto :goto_29

    :cond_44
    move-wide/from16 v10, v20

    const/4 v5, 0x0

    const-wide/16 v16, 0x3e8

    move v4, v8

    goto :goto_2c

    :cond_45
    move-wide/from16 v10, v20

    const/4 v5, 0x0

    const-wide/16 v16, 0x3e8

    :goto_2c
    if-nez v4, :cond_46

    .line 369
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      (nothing executed)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_46
    move-wide/from16 v20, v10

    const/4 v5, 0x1

    const/4 v8, 0x1

    goto/16 :goto_27

    :cond_47
    move-wide/from16 v10, v20

    const/4 v5, 0x0

    const-wide/16 v16, 0x3e8

    if-nez v8, :cond_48

    .line 370
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    (nothing executed)"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_48
    :goto_2d
    add-int/lit8 v0, v24, 0x1

    move v9, v0

    move-wide/from16 v20, v10

    move-object v15, v12

    move/from16 v8, v29

    move-object/from16 v11, v34

    move-object/from16 v14, v36

    move-object/from16 v1, v44

    move-object/from16 v10, v45

    move-wide/from16 v68, v47

    move-wide/from16 v36, v56

    move-object/from16 v0, p0

    move-object v12, v3

    goto/16 :goto_11

    :cond_49
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;ZI)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 373
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_1

    const-string v6, "Battery History:"

    .line 375
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    new-instance v6, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 377
    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 378
    invoke-virtual {v6, v1, v5, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 380
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Old battery History:"

    .line 382
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v6, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 384
    :goto_1
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 385
    invoke-virtual {v6, v1, v5, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    goto :goto_1

    .line 386
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    .line 387
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v4, :cond_7

    .line 391
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 392
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v11

    if-eqz v11, :cond_6

    const/4 v12, 0x0

    .line 393
    :goto_3
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 394
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v10, :cond_4

    const-string v10, "Per-PID Stats:"

    .line 395
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 396
    :cond_4
    iget-wide v14, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    move/from16 v16, v9

    iget-wide v8, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    const-wide/16 v17, 0x0

    cmp-long v13, v8, v17

    if-eqz v13, :cond_5

    sub-long v17, v5, v8

    :cond_5
    add-long v14, v14, v17

    const-string v8, "  PID "

    .line 397
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " wake time: "

    .line 398
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 400
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v16

    goto :goto_3

    :cond_6
    move/from16 v16, v9

    add-int/lit8 v9, v16, 0x1

    goto :goto_2

    :cond_7
    if-eqz v10, :cond_8

    .line 401
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    if-nez p2, :cond_9

    const-string v3, "Statistics since last charge:"

    .line 402
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  System starts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", currently on battery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 404
    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 405
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const-string v3, "Statistics since last unplugged:"

    .line 406
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 407
    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    return-void
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothOnTime(JI)J
.end method

.method public abstract getCpuSpeedSteps()I
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

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getInputEventCount(I)I
.end method

.method public abstract getIsOnBattery()Z
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

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getNetworkActivityCount(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getRadioDataUptime()J
.end method

.method public getRadioDataUptimeMs()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartCount()I
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

.method public abstract getWifiOnTime(JI)J
.end method

.method public prepareForDumpLocked()V
    .locals 0

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method
