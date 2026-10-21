.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldChargeMAh:I

.field oldHealth:I

.field oldLevel:I

.field oldPlug:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 6
    .line 7
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 11
    .line 12
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 13
    .line 14
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 15
    .line 16
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 17
    .line 18
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 19
    .line 20
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 21
    .line 22
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 23
    .line 24
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 27
    .line 28
    return-void
.end method

.method private printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V
    .locals 1

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 7
    .line 8
    .line 9
    const-string p2, ":"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private printStepCpuUidDetails(Ljava/io/PrintWriter;III)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2
    .line 3
    .line 4
    const-string p2, "="

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo p2, "u+"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo p2, "s"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, " ("

    const/16 v10, 0x9

    const-string/jumbo v11, "h"

    const/16 v12, 0x2c

    if-nez p5, :cond_0

    const-string v1, "  "

    .line 1
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    iget-wide v1, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v1, v1, p3

    const/16 v3, 0x13

    invoke-static {v1, v2, v7, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 3
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ") "

    .line 5
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 7
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 8
    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 9
    iget-wide v1, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v1, v1, p3

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v3, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v3, v1

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 11
    :goto_0
    iget-wide v1, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 12
    :goto_1
    iget-byte v1, v8, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x4

    const-string v13, ":"

    if-ne v1, v2, :cond_3

    if-eqz p5, :cond_2

    .line 13
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v1, "START"

    .line 14
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_26

    :cond_3
    const/4 v3, 0x7

    const/4 v4, 0x5

    const-string v14, " "

    if-eq v1, v4, :cond_4e

    if-ne v1, v3, :cond_4

    goto/16 :goto_25

    :cond_4
    const/16 v3, 0x8

    if-ne v1, v3, :cond_6

    if-eqz p5, :cond_5

    .line 16
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const-string v1, "SHUTDOWN"

    .line 17
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_6
    const/4 v3, 0x6

    if-ne v1, v3, :cond_8

    if-eqz p5, :cond_7

    .line 18
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const-string v1, "*OVERFLOW*"

    .line 19
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_8
    const/16 v15, 0xa

    if-nez p5, :cond_13

    .line 20
    iget-byte v1, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const-string v3, "0"

    const-string v5, "00"

    if-ge v1, v15, :cond_9

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/16 v6, 0x64

    if-ge v1, v6, :cond_a

    .line 21
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    :cond_a
    :goto_2
    iget-byte v1, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    if-eqz p6, :cond_14

    .line 23
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v1, :cond_b

    goto :goto_3

    :cond_b
    const/16 v6, 0x10

    if-ge v1, v6, :cond_c

    const-string v1, "0000000"

    .line 25
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const/16 v6, 0x100

    if-ge v1, v6, :cond_d

    const-string v1, "000000"

    .line 26
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/16 v6, 0x1000

    if-ge v1, v6, :cond_e

    const-string v1, "00000"

    .line 27
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const/high16 v6, 0x10000

    if-ge v1, v6, :cond_f

    const-string v1, "0000"

    .line 28
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const/high16 v6, 0x100000

    if-ge v1, v6, :cond_10

    const-string v1, "000"

    .line 29
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    const/high16 v6, 0x1000000

    if-ge v1, v6, :cond_11

    .line 30
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    const/high16 v5, 0x10000000

    if-ge v1, v5, :cond_12

    .line 31
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    :cond_12
    :goto_3
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :cond_13
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v3, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v1, v3, :cond_14

    .line 34
    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string v1, ",Bl="

    .line 35
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-byte v1, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 36
    :cond_14
    :goto_4
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v3, v8, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const-string v5, "f"

    const-string/jumbo v6, "n"

    const-string v16, "d"

    const-string v17, "c"

    const-string v18, "?"

    const-string/jumbo v19, "unknown"

    const/4 v12, 0x2

    const/4 v10, 0x1

    if-eq v1, v3, :cond_20

    .line 37
    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p5, :cond_15

    const-string v1, ",Bs="

    goto :goto_5

    :cond_15
    const-string v1, " status="

    .line 38
    :goto_5
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eq v1, v10, :cond_1e

    if-eq v1, v12, :cond_1c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1a

    if-eq v1, v2, :cond_18

    if-eq v1, v4, :cond_16

    .line 40
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_b

    :cond_16
    if-eqz p5, :cond_17

    move-object v1, v5

    goto :goto_6

    :cond_17
    const-string v1, "full"

    .line 41
    :goto_6
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    if-eqz p5, :cond_19

    move-object v1, v6

    goto :goto_7

    :cond_19
    const-string/jumbo v1, "not-charging"

    .line 42
    :goto_7
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    if-eqz p5, :cond_1b

    move-object/from16 v1, v16

    goto :goto_8

    :cond_1b
    const-string v1, "discharging"

    .line 43
    :goto_8
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    :cond_1c
    if-eqz p5, :cond_1d

    move-object/from16 v1, v17

    goto :goto_9

    :cond_1d
    const-string v1, "charging"

    .line 44
    :goto_9
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    :cond_1e
    if-eqz p5, :cond_1f

    move-object/from16 v1, v18

    goto :goto_a

    :cond_1f
    move-object/from16 v1, v19

    .line 45
    :goto_a
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    :cond_20
    :goto_b
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v3, v8, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v1, v3, :cond_29

    .line 47
    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p5, :cond_21

    const-string v1, ",Bh="

    goto :goto_c

    :cond_21
    const-string v1, " health="

    .line 48
    :goto_c
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v1, :pswitch_data_0

    .line 50
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_14

    :pswitch_0
    if-eqz p5, :cond_22

    goto :goto_d

    :cond_22
    const-string v17, "cold"

    :goto_d
    move-object/from16 v1, v17

    .line 51
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_1
    if-eqz p5, :cond_23

    goto :goto_e

    :cond_23
    const-string v5, "failure"

    .line 52
    :goto_e
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_2
    if-eqz p5, :cond_24

    const-string/jumbo v1, "v"

    goto :goto_f

    :cond_24
    const-string/jumbo v1, "over-voltage"

    .line 53
    :goto_f
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_3
    if-eqz p5, :cond_25

    goto :goto_10

    :cond_25
    const-string v16, "dead"

    :goto_10
    move-object/from16 v1, v16

    .line 54
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_4
    if-eqz p5, :cond_26

    move-object v1, v11

    goto :goto_11

    :cond_26
    const-string/jumbo v1, "overheat"

    .line 55
    :goto_11
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_5
    if-eqz p5, :cond_27

    const-string v1, "g"

    goto :goto_12

    :cond_27
    const-string/jumbo v1, "good"

    .line 56
    :goto_12
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_6
    if-eqz p5, :cond_28

    move-object/from16 v1, v18

    goto :goto_13

    :cond_28
    move-object/from16 v1, v19

    .line 57
    :goto_13
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    :cond_29
    :goto_14
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v3, v8, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v1, v3, :cond_33

    .line 59
    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p5, :cond_2a

    const-string v1, ",Bp="

    goto :goto_15

    :cond_2a
    const-string v1, " plug="

    .line 60
    :goto_15
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz v1, :cond_31

    if-eq v1, v10, :cond_2f

    if-eq v1, v12, :cond_2d

    if-eq v1, v2, :cond_2b

    .line 62
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_1a

    :cond_2b
    if-eqz p5, :cond_2c

    const-string/jumbo v1, "w"

    goto :goto_16

    :cond_2c
    const-string/jumbo v1, "wireless"

    .line 63
    :goto_16
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1a

    :cond_2d
    if-eqz p5, :cond_2e

    const-string/jumbo v1, "u"

    goto :goto_17

    :cond_2e
    const-string/jumbo v1, "usb"

    .line 64
    :goto_17
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1a

    :cond_2f
    if-eqz p5, :cond_30

    const-string v1, "a"

    goto :goto_18

    :cond_30
    const-string v1, "ac"

    .line 65
    :goto_18
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1a

    :cond_31
    if-eqz p5, :cond_32

    goto :goto_19

    :cond_32
    const-string/jumbo v6, "none"

    .line 66
    :goto_19
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    :cond_33
    :goto_1a
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v1, v2, :cond_35

    .line 68
    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p5, :cond_34

    const-string v1, ",Bt="

    goto :goto_1b

    :cond_34
    const-string v1, " temp="

    .line 69
    :goto_1b
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 71
    :cond_35
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v1, v2, :cond_37

    .line 72
    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p5, :cond_36

    const-string v1, ",Bv="

    goto :goto_1c

    :cond_36
    const-string v1, " volt="

    .line 73
    :goto_1c
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 75
    :cond_37
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 v1, v1, 0x3e8

    .line 76
    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v2, v1, :cond_39

    .line 77
    iput v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p5, :cond_38

    const-string v1, ",Bcc="

    goto :goto_1d

    :cond_38
    const-string v1, " charge="

    .line 78
    :goto_1d
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 80
    :cond_39
    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v3, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v4, v8, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v5, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v6, p5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 81
    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v3, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v4, 0x0

    sget-object v5, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v6, p5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 82
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const-string v2, "\""

    const-string v3, ":\""

    if-eqz v1, :cond_3b

    if-eqz p5, :cond_3a

    const-string v1, ",wr="

    .line 83
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_1e

    :cond_3a
    const-string v1, " wake_reason="

    .line 85
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 87
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    :cond_3b
    :goto_1e
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_43

    if-eqz p5, :cond_3c

    const-string v14, ","

    .line 91
    :cond_3c
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_3d

    const-string v1, "+"

    .line 93
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1f

    :cond_3d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_3e

    const-string v1, "-"

    .line 94
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3e
    :goto_1f
    if-eqz p5, :cond_3f

    .line 95
    sget-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_20

    :cond_3f
    sget-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 96
    :goto_20
    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v5, -0xc001

    and-int/2addr v4, v5

    if-ltz v4, :cond_40

    .line 97
    array-length v5, v1

    if-ge v4, v5, :cond_40

    .line 98
    aget-object v1, v1, v4

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_22

    :cond_40
    if-eqz p5, :cond_41

    const-string v1, "Ev"

    goto :goto_21

    :cond_41
    const-string v1, "event"

    .line 99
    :goto_21
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(I)V

    :goto_22
    const-string v1, "="

    .line 101
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_42

    .line 102
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_23

    .line 103
    :cond_42
    sget-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v1, v1, v4

    iget-object v4, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v4, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 104
    invoke-interface {v1, v4}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 106
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    :cond_43
    :goto_23
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 110
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v1, :cond_4d

    if-nez p5, :cond_48

    const-string v1, "                 Details: cpu="

    .line 111
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "u+"

    .line 113
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "s"

    .line 115
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v1, :cond_46

    .line 117
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v7, v2, v3, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 119
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v1, :cond_44

    const-string v1, ", "

    .line 120
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v7, v2, v3, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 122
    :cond_44
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v1, :cond_45

    const-string v1, ", "

    .line 123
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v7, v2, v3, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    :cond_45
    const/16 v1, 0x29

    .line 125
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 126
    :cond_46
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "                          /proc/stat="

    .line 127
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " usr, "

    .line 129
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " sys, "

    .line 131
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " io, "

    .line 133
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " irq, "

    .line 135
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " sirq, "

    .line 137
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " idle"

    .line 139
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v2, v3

    .line 141
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v1, v2

    if-lez v1, :cond_47

    .line 142
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 143
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "%.1f%%"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " of "

    .line 144
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/2addr v1, v15

    int-to-long v3, v1

    .line 146
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 147
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ")"

    .line 148
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_47
    const-string v1, ", PlatformIdleStat "

    .line 149
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, ", SubsystemPowerState "

    .line 152
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_24

    :cond_48
    const/16 v1, 0x9

    .line 155
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 156
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ",0,Dcpu="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 158
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 160
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v2, :cond_4a

    .line 161
    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v7, v2, v3, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 162
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v2, :cond_49

    .line 163
    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v7, v2, v3, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 164
    :cond_49
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v2, :cond_4a

    .line 165
    iget v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v7, v2, v3, v1}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 166
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const/16 v1, 0x9

    .line 167
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 168
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ",0,Dpst="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 170
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 171
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 172
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 173
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 174
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 175
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 176
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 177
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 178
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 179
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 180
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 181
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    if-eqz v2, :cond_4b

    .line 182
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v2, :cond_4b

    .line 184
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 185
    :cond_4b
    iget-object v1, v8, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v1, :cond_4c

    .line 186
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 188
    :cond_4d
    :goto_24
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 189
    iget v1, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto :goto_26

    :cond_4e
    :goto_25
    if-eqz p5, :cond_4f

    .line 190
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    :cond_4f
    iget-byte v1, v8, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v1, v3, :cond_50

    const-string v1, "RESET:"

    .line 192
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_50
    const-string v1, "TIME:"

    .line 194
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_51

    .line 195
    iget-wide v1, v8, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_26

    .line 196
    :cond_51
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    .line 197
    iget-wide v2, v8, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 3
    .line 4
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 8
    .line 9
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 10
    .line 11
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 12
    .line 13
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 14
    .line 15
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 16
    .line 17
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 18
    .line 19
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 20
    .line 21
    return-void
.end method
