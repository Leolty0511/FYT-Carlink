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
.field public oldHealth:I

.field public oldPlug:I

.field public oldState:I

.field public oldStatus:I

.field public oldTemp:I

.field public oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 5
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 6
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V
    .locals 5

    const-string v0, "  "

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v0, p3

    const/16 p3, 0x13

    invoke-static {v0, v1, p1, p3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string p3, " "

    .line 3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    const-string p3, " START"

    .line 5
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    const-string p3, " *OVERFLOW*"

    .line 6
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 7
    :cond_1
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v2, 0xa

    const-string v3, "0"

    const-string v4, "00"

    if-ge p4, v2, :cond_2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x64

    if-ge p4, v2, :cond_3

    .line 8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    :cond_3
    :goto_0
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 10
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget p3, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 p4, 0x10

    if-ge p3, p4, :cond_4

    const-string p3, "0000000"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 p4, 0x100

    if-ge p3, p4, :cond_5

    const-string p3, "000000"

    .line 12
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 p4, 0x1000

    if-ge p3, p4, :cond_6

    const-string p3, "00000"

    .line 13
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/high16 p4, 0x10000

    if-ge p3, p4, :cond_7

    const-string p3, "0000"

    .line 14
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/high16 p4, 0x100000

    if-ge p3, p4, :cond_8

    const-string p3, "000"

    .line 15
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const/high16 p4, 0x1000000

    if-ge p3, p4, :cond_9

    .line 16
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const/high16 p4, 0x10000000

    if-ge p3, p4, :cond_a

    .line 17
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    :cond_a
    :goto_1
    iget p3, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const-string/jumbo v2, "unknown"

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p3, p4, :cond_10

    .line 20
    iput p4, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    const-string p3, " status="

    .line 21
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eq p3, v4, :cond_f

    if-eq p3, v0, :cond_e

    if-eq p3, v1, :cond_d

    if-eq p3, v3, :cond_c

    const/4 p4, 0x5

    if-eq p3, p4, :cond_b

    .line 23
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_2

    :cond_b
    const-string p3, "full"

    .line 24
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string p3, "not-charging"

    .line 25
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string p3, "discharging"

    .line 26
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    const-string p3, "charging"

    .line 27
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    :cond_10
    :goto_2
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq p3, p4, :cond_11

    .line 30
    iput p4, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    const-string p3, " health="

    .line 31
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch p3, :pswitch_data_0

    .line 33
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_3

    :pswitch_0
    const-string p3, "failure"

    .line 34
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string p3, "over-voltage"

    .line 35
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const-string p3, "dead"

    .line 36
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    const-string p3, "overheat"

    .line 37
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    const-string p3, "good"

    .line 38
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :pswitch_5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    :cond_11
    :goto_3
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq p3, p4, :cond_16

    .line 41
    iput p4, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    const-string p3, " plug="

    .line 42
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p3, :cond_15

    if-eq p3, v4, :cond_14

    if-eq p3, v0, :cond_13

    if-eq p3, v3, :cond_12

    .line 44
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4

    :cond_12
    const-string/jumbo p3, "wireless"

    .line 45
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    const-string/jumbo p3, "usb"

    .line 46
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    const-string p3, "ac"

    .line 47
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    const-string p3, "none"

    .line 48
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    :cond_16
    :goto_4
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-char p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    if-eq p3, p4, :cond_17

    .line 50
    iput p4, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    const-string p3, " temp="

    .line 51
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 53
    :cond_17
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq p3, p4, :cond_18

    .line 54
    iput p4, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    const-string p3, " volt="

    .line 55
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 57
    :cond_18
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget p4, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    sget-object v0, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-static {p1, p3, p4, v0}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;II[Landroid/os/BatteryStats$BitDescription;)V

    .line 58
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 59
    :goto_5
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput p1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printNextItemCheckin(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V
    .locals 2

    .line 1
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p3, ","

    .line 2
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    const-string/jumbo p2, "start"

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    const-string p2, "overflow"

    .line 5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 7
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget p4, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 9
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 11
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 13
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-byte p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 15
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget-char p4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 17
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    iget-char p2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    :goto_0
    return-void
.end method
