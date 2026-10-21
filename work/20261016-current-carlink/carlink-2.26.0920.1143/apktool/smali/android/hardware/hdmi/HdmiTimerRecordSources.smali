.class public Landroid/hardware/hdmi/HdmiTimerRecordSources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
    }
.end annotation


# static fields
.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PLUG:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_FRIDAY:I = 0x20

.field private static final RECORDING_SEQUENCE_REPEAT_MASK:I = 0x7f

.field public static final RECORDING_SEQUENCE_REPEAT_MONDAY:I = 0x2

.field public static final RECORDING_SEQUENCE_REPEAT_ONCE_ONLY:I = 0x0

.field public static final RECORDING_SEQUENCE_REPEAT_SATUREDAY:I = 0x40

.field public static final RECORDING_SEQUENCE_REPEAT_SUNDAY:I = 0x1

.field public static final RECORDING_SEQUENCE_REPEAT_THURSDAY:I = 0x10

.field public static final RECORDING_SEQUENCE_REPEAT_TUESDAY:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_WEDNESDAY:I = 0x8

.field private static final TAG:Ljava/lang/String; = "HdmiTimerRecordingSources"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDurationValue(II)V
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x63

    .line 4
    .line 5
    if-gt p0, v0, :cond_1

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x3b

    .line 10
    .line 11
    if-gt p1, p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string/jumbo v0, "minute should be in rage of [0, 59]:"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Hour should be in rage of [0, 99]:"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method private static checkTimeValue(II)V
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x17

    .line 4
    .line 5
    if-gt p0, v0, :cond_1

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x3b

    .line 10
    .line 11
    if-gt p1, p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "Minute should be in rage of [0, 59]:"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Hour should be in rage of [0, 23]:"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public static checkTimerRecordSource(I[B)Z
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x7

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq p0, v2, :cond_7

    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x2

    .line 10
    if-eq p0, v5, :cond_5

    .line 11
    .line 12
    const/4 v6, 0x3

    .line 13
    if-eq p0, v6, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    aget-byte p0, p1, v1

    .line 17
    .line 18
    if-ne p0, v4, :cond_2

    .line 19
    .line 20
    if-ne v5, v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v3

    .line 24
    :goto_0
    return v2

    .line 25
    :cond_2
    const/4 p1, 0x5

    .line 26
    if-ne p0, p1, :cond_4

    .line 27
    .line 28
    if-ne v6, v0, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    move v2, v3

    .line 32
    :goto_1
    return v2

    .line 33
    :cond_4
    return v3

    .line 34
    :cond_5
    if-ne v4, v0, :cond_6

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_6
    move v2, v3

    .line 38
    :goto_2
    return v2

    .line 39
    :cond_7
    if-ne v1, v0, :cond_8

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_8
    move v2, v3

    .line 43
    :goto_3
    return v2
.end method

.method private static checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .locals 1

    .line 1
    const-string v0, "HdmiTimerRecordingSources"

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo p0, "source should not be null."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    const-string p0, "TimerInfo should not be null."

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public static durationOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static ofAnalogueSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static ofDigitalSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static ofExternalPhysicalAddress(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .line 5
    .line 6
    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static ofExternalPlug(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .line 5
    .line 6
    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static timeOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static timerInfoOf(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .locals 8

    .line 1
    if-ltz p0, :cond_3

    .line 2
    .line 3
    const/16 v0, 0x1f

    .line 4
    .line 5
    if-gt p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-lt p1, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-gt p1, v0, :cond_2

    .line 13
    .line 14
    iget v0, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    .line 15
    .line 16
    iget v1, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    .line 19
    .line 20
    .line 21
    iget v0, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    .line 22
    .line 23
    iget v1, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    .line 26
    .line 27
    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    and-int/lit8 v0, p4, -0x80

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "Invalid reecording sequence value:"

    .line 38
    .line 39
    invoke-static {p1, p4}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_0
    new-instance v7, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    move-object v0, v7

    .line 51
    move v1, p0

    .line 52
    move v2, p1

    .line 53
    move-object v3, p2

    .line 54
    move-object v4, p3

    .line 55
    move v5, p4

    .line 56
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;ILandroid/hardware/hdmi/HdmiTimerRecordSources$1;)V

    .line 57
    .line 58
    .line 59
    return-object v7

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p2, "Month of year should be in range of [1, 12]:"

    .line 63
    .line 64
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string p2, "Day of month should be in range of [0, 31]:"

    .line 75
    .line 76
    invoke-static {p2, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
