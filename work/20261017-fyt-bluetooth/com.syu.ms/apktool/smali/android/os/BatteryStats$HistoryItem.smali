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
.field public static final CMD_NULL:B = 0x0t

.field public static final CMD_OVERFLOW:B = 0x3t

.field public static final CMD_START:B = 0x2t

.field public static final CMD_UPDATE:B = 0x1t

.field public static final DEBUG:Z = false

.field public static final DELTA_BATTERY_LEVEL_FLAG:I = 0x100000

.field public static final DELTA_CMD_MASK:I = 0x3

.field public static final DELTA_CMD_SHIFT:I = 0x12

.field public static final DELTA_STATE_FLAG:I = 0x200000

.field public static final DELTA_STATE_MASK:I = -0x400000

.field public static final DELTA_TIME_ABS:I = 0x3fffd

.field public static final DELTA_TIME_INT:I = 0x3fffe

.field public static final DELTA_TIME_LONG:I = 0x3ffff

.field public static final DELTA_TIME_MASK:I = 0x3ffff

.field public static final MOST_INTERESTING_STATES:I = 0x101c0000

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BLUETOOTH_ON_FLAG:I = 0x10000

.field public static final STATE_BRIGHTNESS_MASK:I = 0xf

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_DATA_CONNECTION_MASK:I = 0xf000

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0xc

.field public static final STATE_GPS_ON_FLAG:I = 0x10000000

.field public static final STATE_PHONE_IN_CALL_FLAG:I = 0x40000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x8000000

.field public static final STATE_PHONE_STATE_MASK:I = 0xf00

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x8

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x20000000

.field public static final STATE_SIGNAL_STRENGTH_MASK:I = 0xf0

.field public static final STATE_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE_VIDEO_ON_FLAG:I = 0x200000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x2000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x800000

.field public static final STATE_WIFI_ON_FLAG:I = 0x20000

.field public static final STATE_WIFI_RUNNING_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x1000000

.field public static final TAG:Ljava/lang/String; = "HistoryItem"


# instance fields
.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batteryStatus:B

.field public batteryTemperature:C

.field public batteryVoltage:C

.field public cmd:B

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public states:I

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 5
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 6
    invoke-direct {p0, p3}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private buildBatteryLevelInt()I
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    shl-int/lit8 v1, v1, 0xe

    const v2, 0xffc000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    and-int/lit16 v1, v1, 0x3fff

    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt()I
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v0, v0, 0x1c

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v1, v1, 0x16

    const/high16 v2, 0xc00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, 0x3fffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    .line 2
    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 3
    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shr-int/lit8 v1, v0, 0x10

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 4
    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shr-int/lit8 v1, v0, 0x14

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 5
    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    int-to-char v2, v2

    .line 8
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    int-to-char v0, v0

    .line 9
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 3
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 4
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 5
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 6
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 7
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 8
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 9
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readDelta(Landroid/os/Parcel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0x3ffff

    and-int/2addr v1, v0

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    .line 2
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const v2, 0x3fffd

    if-ge v1, v2, :cond_0

    .line 3
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 5
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void

    :cond_1
    const v2, 0x3fffe

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 7
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 9
    iget-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    :goto_0
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 11
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shr-int/lit8 v2, v1, 0xe

    and-int/lit16 v2, v2, 0x3ff

    int-to-char v2, v2

    .line 12
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    and-int/lit16 v1, v1, 0x3fff

    int-to-char v1, v1

    .line 13
    iput-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    const v2, 0x3fffff

    const/high16 v3, -0x400000

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    and-int/2addr v0, v3

    and-int v1, p1, v2

    or-int/2addr v0, v1

    .line 15
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    shr-int/lit8 v0, p1, 0x1c

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    .line 16
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shr-int/lit8 v0, p1, 0x18

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    .line 17
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shr-int/lit8 p1, p1, 0x16

    and-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    .line 18
    iput-byte p1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_1

    :cond_4
    and-int p1, v0, v3

    .line 19
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_1
    return-void
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2

    .line 1
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

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 0

    .line 10
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 11
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 12
    iget-byte p1, p4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte p1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 13
    iget-byte p1, p4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte p1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 14
    iget-byte p1, p4, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte p1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 15
    iget-byte p1, p4, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte p1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 16
    iget-char p1, p4, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char p1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 17
    iget-char p1, p4, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char p1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 18
    iget p1, p4, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput p1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

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
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 4
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 5
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 6
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 7
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 8
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 9
    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput p1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    return-void
.end method

.method public writeDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 1
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v3, v5

    .line 3
    invoke-direct {p2}, Landroid/os/BatteryStats$HistoryItem;->buildBatteryLevelInt()I

    move-result v1

    .line 4
    invoke-direct {p2}, Landroid/os/BatteryStats$HistoryItem;->buildStateInt()I

    move-result p2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const v6, 0x3fffe

    if-ltz v5, :cond_3

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v3, v7

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x3fffd

    cmp-long v5, v3, v7

    if-ltz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    long-to-int v5, v3

    goto :goto_1

    :cond_3
    :goto_0
    const v5, 0x3ffff

    .line 5
    :goto_1
    iget-byte v7, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    shl-int/lit8 v7, v7, 0x12

    or-int/2addr v7, v5

    iget v8, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v9, -0x400000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 6
    invoke-direct {p0}, Landroid/os/BatteryStats$HistoryItem;->buildBatteryLevelInt()I

    move-result v8

    if-eq v8, v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    const/high16 v9, 0x100000

    or-int/2addr v7, v9

    .line 7
    :cond_5
    invoke-direct {p0}, Landroid/os/BatteryStats$HistoryItem;->buildStateInt()I

    move-result v9

    if-eq v9, p2, :cond_6

    move v0, v2

    :cond_6
    if-eqz v0, :cond_7

    const/high16 p2, 0x200000

    or-int/2addr v7, p2

    .line 8
    :cond_7
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-lt v5, v6, :cond_9

    if-ne v5, v6, :cond_8

    long-to-int p2, v3

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 10
    :cond_8
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    .line 11
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_a
    if-eqz v0, :cond_b

    .line 12
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    :cond_b
    return-void

    :cond_c
    :goto_4
    const p2, 0x3fffd

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-byte p2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 p2, p2, 0xff

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v0, v0, 0x14

    const/high16 v1, 0xf00000

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xf000000

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-char p2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    const v0, 0xffff

    and-int/2addr p2, v0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
