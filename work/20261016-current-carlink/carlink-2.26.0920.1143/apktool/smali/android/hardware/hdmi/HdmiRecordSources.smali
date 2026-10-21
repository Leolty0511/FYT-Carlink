.class public final Landroid/hardware/hdmi/HdmiRecordSources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;,
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;,
        Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;,
        Landroid/hardware/hdmi/HdmiRecordSources$DvbData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AtscData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AribData;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;,
        Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    }
.end annotation


# static fields
.field public static final ANALOGUE_BROADCAST_TYPE_CABLE:I = 0x0

.field public static final ANALOGUE_BROADCAST_TYPE_SATELLITE:I = 0x1

.field public static final ANALOGUE_BROADCAST_TYPE_TERRESTRIAL:I = 0x2

.field public static final BROADCAST_SYSTEM_NTSC_M:I = 0x3

.field public static final BROADCAST_SYSTEM_PAL_BG:I = 0x0

.field public static final BROADCAST_SYSTEM_PAL_DK:I = 0x8

.field public static final BROADCAST_SYSTEM_PAL_I:I = 0x4

.field public static final BROADCAST_SYSTEM_PAL_M:I = 0x2

.field public static final BROADCAST_SYSTEM_PAL_OTHER_SYSTEM:I = 0x1f

.field public static final BROADCAST_SYSTEM_SECAM_BG:I = 0x6

.field public static final BROADCAST_SYSTEM_SECAM_DK:I = 0x5

.field public static final BROADCAST_SYSTEM_SECAM_L:I = 0x7

.field public static final BROADCAST_SYSTEM_SECAM_LP:I = 0x1

.field private static final CHANNEL_NUMBER_FORMAT_1_PART:I = 0x1

.field private static final CHANNEL_NUMBER_FORMAT_2_PART:I = 0x2

.field public static final DIGITAL_BROADCAST_TYPE_ARIB:I = 0x0

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_BS:I = 0x8

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_CS:I = 0x9

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_T:I = 0xa

.field public static final DIGITAL_BROADCAST_TYPE_ATSC:I = 0x1

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_CABLE:I = 0x10

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_SATELLITE:I = 0x11

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_TERRESTRIAL:I = 0x12

.field public static final DIGITAL_BROADCAST_TYPE_DVB:I = 0x2

.field public static final DIGITAL_BROADCAST_TYPE_DVB_C:I = 0x18

.field public static final DIGITAL_BROADCAST_TYPE_DVB_S:I = 0x19

.field public static final DIGITAL_BROADCAST_TYPE_DVB_S2:I = 0x1a

.field public static final DIGITAL_BROADCAST_TYPE_DVB_T:I = 0x1b

.field private static final RECORD_SOURCE_TYPE_ANALOGUE_SERVICE:I = 0x3

.field private static final RECORD_SOURCE_TYPE_DIGITAL_SERVICE:I = 0x2

.field private static final RECORD_SOURCE_TYPE_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final RECORD_SOURCE_TYPE_EXTERNAL_PLUG:I = 0x4

.field private static final RECORD_SOURCE_TYPE_OWN_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiRecordSources"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(III[BI)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->threeFieldsToSixBytes(III[BI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(S[BI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    move-result p0

    return p0
.end method

.method public static checkRecordSource([B)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    aget-byte v1, p0, v0

    .line 9
    .line 10
    array-length p0, p0

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr p0, v2

    .line 13
    if-eq v1, v2, :cond_9

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v1, v3, :cond_7

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x4

    .line 20
    if-eq v1, v4, :cond_5

    .line 21
    .line 22
    if-eq v1, v5, :cond_3

    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    if-eq v1, v4, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    if-ne p0, v3, :cond_2

    .line 29
    .line 30
    move v0, v2

    .line 31
    :cond_2
    return v0

    .line 32
    :cond_3
    if-ne p0, v2, :cond_4

    .line 33
    .line 34
    move v0, v2

    .line 35
    :cond_4
    return v0

    .line 36
    :cond_5
    if-ne p0, v5, :cond_6

    .line 37
    .line 38
    move v0, v2

    .line 39
    :cond_6
    return v0

    .line 40
    :cond_7
    const/4 v1, 0x7

    .line 41
    if-ne p0, v1, :cond_8

    .line 42
    .line 43
    move v0, v2

    .line 44
    :cond_8
    return v0

    .line 45
    :cond_9
    if-nez p0, :cond_a

    .line 46
    .line 47
    move v0, v2

    .line 48
    :cond_a
    :goto_0
    return v0
.end method

.method public static ofAnalogue(III)Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;
    .locals 2

    .line 1
    const-string v0, "HdmiRecordSources"

    .line 2
    .line 3
    if-ltz p0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-gt p0, v1, :cond_2

    .line 7
    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    const v1, 0xffff

    .line 11
    .line 12
    .line 13
    if-gt p1, v1, :cond_1

    .line 14
    .line 15
    if-ltz p2, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x1f

    .line 18
    .line 19
    if-gt p2, v1, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p0, p1, p2, v1}, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p1, "Invalid Broadcast system:"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p2, "Invalid frequency value[0x0000-0xFFFF]:"

    .line 58
    .line 59
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p2, "Invalid Broadcast type:"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-static {p2, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public static ofArib(ILandroid/hardware/hdmi/HdmiRecordSources$AribData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Invalid ARIB type:"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "HdmiRecordSources"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string/jumbo p1, "type should not be null."

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_0
    :pswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p1, "data should not be null."

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ofAtsc(ILandroid/hardware/hdmi/HdmiRecordSources$AtscData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "Invalid ATSC type:"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "HdmiRecordSources"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    .line 38
    :cond_0
    :pswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p1, "data should not be null."

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ofDigitalChannelId(ILandroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p0, v1, :cond_0

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch p0, :pswitch_data_1

    .line 15
    .line 16
    .line 17
    packed-switch p0, :pswitch_data_2

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v0, "Invalid broadcast type:"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "HdmiRecordSources"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v0, "Invalid broadcast system value:"

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_0
    :pswitch_0
    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, v0, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p1, "data should not be null."

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ofDvb(ILandroid/hardware/hdmi/HdmiRecordSources$DvbData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "Invalid DVB type:"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "HdmiRecordSources"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    .line 38
    :cond_0
    :pswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p1, "data should not be null."

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ofExternalPhysicalAddress(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
    .locals 3

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    and-int/2addr v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Invalid physical address:"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "HdmiRecordSources"

    .line 28
    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static ofExternalPlug(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    if-gt p0, v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Invalid plug number[1-255]"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "HdmiRecordSources"

    .line 30
    .line 31
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static ofOwnSource()Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;
    .locals 2

    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0
.end method

.method private static shortToByteArray(S[BI)I
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    int-to-byte v0, v0

    .line 6
    aput-byte v0, p1, p2

    .line 7
    .line 8
    add-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    and-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    int-to-byte p0, p0

    .line 13
    aput-byte p0, p1, p2

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    return p0
.end method

.method private static threeFieldsToSixBytes(III[BI)I
    .locals 0

    .line 1
    int-to-short p0, p0

    .line 2
    invoke-static {p0, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 3
    .line 4
    .line 5
    int-to-short p0, p1

    .line 6
    add-int/lit8 p1, p4, 0x2

    .line 7
    .line 8
    invoke-static {p0, p3, p1}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 9
    .line 10
    .line 11
    int-to-short p0, p2

    .line 12
    add-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    invoke-static {p0, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x6

    .line 18
    return p0
.end method
