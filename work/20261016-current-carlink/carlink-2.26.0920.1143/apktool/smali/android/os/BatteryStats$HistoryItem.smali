.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_CURRENT_TIME:B = 0x5t

.field public static final CMD_NULL:B = -0x1t

.field public static final CMD_OVERFLOW:B = 0x6t

.field public static final CMD_RESET:B = 0x7t

.field public static final CMD_SHUTDOWN:B = 0x8t

.field public static final CMD_START:B = 0x4t

.field public static final CMD_UPDATE:B = 0x0t

.field public static final EVENT_ACTIVE:I = 0xa

.field public static final EVENT_ALARM:I = 0xd

.field public static final EVENT_ALARM_FINISH:I = 0x400d

.field public static final EVENT_ALARM_START:I = 0x800d

.field public static final EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final EVENT_COUNT:I = 0x16

.field public static final EVENT_FLAG_FINISH:I = 0x4000

.field public static final EVENT_FLAG_START:I = 0x8000

.field public static final EVENT_FOREGROUND:I = 0x2

.field public static final EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final EVENT_FOREGROUND_START:I = 0x8002

.field public static final EVENT_JOB:I = 0x6

.field public static final EVENT_JOB_FINISH:I = 0x4006

.field public static final EVENT_JOB_START:I = 0x8006

.field public static final EVENT_LONG_WAKE_LOCK:I = 0x14

.field public static final EVENT_LONG_WAKE_LOCK_FINISH:I = 0x4014

.field public static final EVENT_LONG_WAKE_LOCK_START:I = 0x8014

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final EVENT_PROC:I = 0x1

.field public static final EVENT_PROC_FINISH:I = 0x4001

.field public static final EVENT_PROC_START:I = 0x8001

.field public static final EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final EVENT_SYNC:I = 0x4

.field public static final EVENT_SYNC_FINISH:I = 0x4004

.field public static final EVENT_SYNC_START:I = 0x8004

.field public static final EVENT_TEMP_WHITELIST:I = 0x11

.field public static final EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final EVENT_TOP:I = 0x3

.field public static final EVENT_TOP_FINISH:I = 0x4003

.field public static final EVENT_TOP_START:I = 0x8003

.field public static final EVENT_TYPE_MASK:I = -0xc001

.field public static final EVENT_USER_FOREGROUND:I = 0x8

.field public static final EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final EVENT_USER_RUNNING:I = 0x7

.field public static final EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final EVENT_USER_RUNNING_START:I = 0x8007

.field public static final EVENT_WAKEUP_AP:I = 0x13

.field public static final EVENT_WAKE_LOCK:I = 0x5

.field public static final EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final MOST_INTERESTING_STATES:I = 0x1c0000

.field public static final MOST_INTERESTING_STATES2:I = -0x68400000

.field public static final SETTLE_TO_ZERO_STATES:I = -0x1d0000

.field public static final SETTLE_TO_ZERO_STATES2:I = 0x683f0000

.field public static final STATE2_BLUETOOTH_ON_FLAG:I = 0x400000

.field public static final STATE2_BLUETOOTH_SCAN_FLAG:I = 0x100000

.field public static final STATE2_CAMERA_FLAG:I = 0x200000

.field public static final STATE2_CHARGING_FLAG:I = 0x1000000

.field public static final STATE2_DEVICE_IDLE_MASK:I = 0x6000000

.field public static final STATE2_DEVICE_IDLE_SHIFT:I = 0x19

.field public static final STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final STATE2_PHONE_IN_CALL_FLAG:I = 0x800000

.field public static final STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x6

.field private static final STATE_RESERVED_0:I = 0x1000000

.field public static final STATE_SCREEN_DOZE_FLAG:I = 0x40000

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public batteryChargeUAh:I

.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batteryStatus:B

.field public batteryTemperature:S

.field public batteryVoltage:C

.field public cmd:B

.field public currentTime:J

.field public eventCode:I

.field public eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public numReadInts:I

.field public states:I

.field public states2:I

.field public stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public time:J

.field public wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public wakelockTag:Landroid/os/BatteryStats$HistoryTag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 3
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 4
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 5
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 9
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 10
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 11
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 13
    invoke-virtual {p0, p3}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 3

    .line 1
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2
    .line 3
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 4
    .line 5
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 6
    .line 7
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8
    .line 9
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 10
    .line 11
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 12
    .line 13
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 14
    .line 15
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 16
    .line 17
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 18
    .line 19
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 20
    .line 21
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 22
    .line 23
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 24
    .line 25
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 26
    .line 27
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 28
    .line 29
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 30
    .line 31
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 32
    .line 33
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 34
    .line 35
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 36
    .line 37
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 43
    .line 44
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 45
    .line 46
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 53
    .line 54
    :goto_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 59
    .line 60
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 61
    .line 62
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 69
    .line 70
    :goto_1
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 71
    .line 72
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 73
    .line 74
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 79
    .line 80
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 81
    .line 82
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 89
    .line 90
    :goto_2
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 91
    .line 92
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 10
    .line 11
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 12
    .line 13
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 14
    .line 15
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 16
    .line 17
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 18
    .line 19
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 20
    .line 21
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 22
    .line 23
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 24
    .line 25
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 29
    .line 30
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 31
    .line 32
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 33
    .line 34
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 35
    .line 36
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeltaData()Z
    .locals 1

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/lit16 v2, v1, 0xff

    .line 10
    .line 11
    int-to-byte v2, v2

    .line 12
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 13
    .line 14
    shr-int/lit8 v2, v1, 0x8

    .line 15
    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 17
    .line 18
    int-to-byte v2, v2

    .line 19
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 20
    .line 21
    shr-int/lit8 v2, v1, 0x10

    .line 22
    .line 23
    and-int/lit8 v2, v2, 0xf

    .line 24
    .line 25
    int-to-byte v2, v2

    .line 26
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 27
    .line 28
    shr-int/lit8 v2, v1, 0x14

    .line 29
    .line 30
    and-int/lit8 v2, v2, 0xf

    .line 31
    .line 32
    int-to-byte v2, v2

    .line 33
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 34
    .line 35
    shr-int/lit8 v2, v1, 0x18

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0xf

    .line 38
    .line 39
    int-to-byte v2, v2

    .line 40
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const v3, 0xffff

    .line 47
    .line 48
    .line 49
    and-int v4, v2, v3

    .line 50
    .line 51
    int-to-short v4, v4

    .line 52
    iput-short v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 53
    .line 54
    shr-int/lit8 v2, v2, 0x10

    .line 55
    .line 56
    and-int/2addr v2, v3

    .line 57
    int-to-char v2, v2

    .line 58
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 77
    .line 78
    const/high16 v2, 0x10000000

    .line 79
    .line 80
    and-int/2addr v2, v1

    .line 81
    const/4 v3, 0x0

    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    iget-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 85
    .line 86
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 93
    .line 94
    :goto_0
    const/high16 v2, 0x20000000

    .line 95
    .line 96
    and-int/2addr v2, v1

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    iget-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 100
    .line 101
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 102
    .line 103
    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 108
    .line 109
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    .line 110
    .line 111
    and-int/2addr v1, v2

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 119
    .line 120
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 121
    .line 122
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 129
    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 130
    .line 131
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 132
    .line 133
    :goto_2
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 134
    .line 135
    const/4 v2, 0x5

    .line 136
    if-eq v1, v2, :cond_4

    .line 137
    .line 138
    const/4 v2, 0x7

    .line 139
    if-ne v1, v2, :cond_3

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    const-wide/16 v1, 0x0

    .line 143
    .line 144
    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 152
    .line 153
    :goto_4
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    sub-int/2addr p1, v0

    .line 160
    div-int/lit8 p1, p1, 0x4

    .line 161
    .line 162
    add-int/2addr p1, v1

    .line 163
    iput p1, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 164
    .line 165
    return-void
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 9
    .line 10
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 16
    .line 17
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 18
    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    :cond_2
    :goto_0
    return v1

    .line 33
    :cond_3
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 34
    .line 35
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 36
    .line 37
    if-eq v0, v2, :cond_6

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_6

    .line 49
    .line 50
    :cond_5
    :goto_1
    return v1

    .line 51
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 52
    .line 53
    iget-object p1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 54
    .line 55
    if-eq v0, p1, :cond_9

    .line 56
    .line 57
    if-eqz v0, :cond_8

    .line 58
    .line 59
    if-nez p1, :cond_7

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_7
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_9

    .line 67
    .line 68
    :cond_8
    :goto_2
    return v1

    .line 69
    :cond_9
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_a
    :goto_3
    return v1
.end method

.method public sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 0

    .line 4
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 5
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 6
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 3
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 11
    .line 12
    shl-int/lit8 v1, v1, 0x8

    .line 13
    .line 14
    const v2, 0xff00

    .line 15
    .line 16
    .line 17
    and-int/2addr v1, v2

    .line 18
    or-int/2addr v0, v1

    .line 19
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 20
    .line 21
    shl-int/lit8 v1, v1, 0x10

    .line 22
    .line 23
    const/high16 v2, 0xf0000

    .line 24
    .line 25
    and-int/2addr v1, v2

    .line 26
    or-int/2addr v0, v1

    .line 27
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 28
    .line 29
    shl-int/lit8 v1, v1, 0x14

    .line 30
    .line 31
    const/high16 v2, 0xf00000

    .line 32
    .line 33
    and-int/2addr v1, v2

    .line 34
    or-int/2addr v0, v1

    .line 35
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 36
    .line 37
    shl-int/lit8 v1, v1, 0x18

    .line 38
    .line 39
    const/high16 v2, 0xf000000

    .line 40
    .line 41
    and-int/2addr v1, v2

    .line 42
    or-int/2addr v0, v1

    .line 43
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const/high16 v1, 0x10000000

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v1, v2

    .line 52
    :goto_0
    or-int/2addr v0, v1

    .line 53
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    const/high16 v1, 0x20000000

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v1, v2

    .line 61
    :goto_1
    or-int/2addr v0, v1

    .line 62
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    const/high16 v2, 0x40000000    # 2.0f

    .line 67
    .line 68
    :cond_2
    or-int/2addr v0, v2

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 73
    .line 74
    const v1, 0xffff

    .line 75
    .line 76
    .line 77
    and-int/2addr v0, v1

    .line 78
    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 79
    .line 80
    shl-int/lit8 v1, v1, 0x10

    .line 81
    .line 82
    const/high16 v2, -0x10000

    .line 83
    .line 84
    and-int/2addr v1, v2

    .line 85
    or-int/2addr v0, v1

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 126
    .line 127
    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-byte p2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 131
    .line 132
    const/4 v0, 0x5

    .line 133
    if-eq p2, v0, :cond_6

    .line 134
    .line 135
    const/4 v0, 0x7

    .line 136
    if-ne p2, v0, :cond_7

    .line 137
    .line 138
    :cond_6
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 139
    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    .line 142
    .line 143
    :cond_7
    return-void
.end method
