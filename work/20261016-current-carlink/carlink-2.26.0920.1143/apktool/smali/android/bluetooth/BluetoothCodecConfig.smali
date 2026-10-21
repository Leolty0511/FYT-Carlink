.class public final Landroid/bluetooth/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BITS_PER_SAMPLE_16:I = 0x1

.field public static final BITS_PER_SAMPLE_24:I = 0x2

.field public static final BITS_PER_SAMPLE_32:I = 0x4

.field public static final BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final CHANNEL_MODE_MONO:I = 0x1

.field public static final CHANNEL_MODE_NONE:I = 0x0

.field public static final CHANNEL_MODE_STEREO:I = 0x2

.field public static final CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLE_RATE_176400:I = 0x10

.field public static final SAMPLE_RATE_192000:I = 0x20

.field public static final SAMPLE_RATE_44100:I = 0x1

.field public static final SAMPLE_RATE_48000:I = 0x2

.field public static final SAMPLE_RATE_88200:I = 0x4

.field public static final SAMPLE_RATE_96000:I = 0x8

.field public static final SAMPLE_RATE_NONE:I = 0x0

.field public static final SOURCE_CODEC_TYPE_AAC:I = 0x1

.field public static final SOURCE_CODEC_TYPE_APTX:I = 0x2

.field public static final SOURCE_CODEC_TYPE_APTX_HD:I = 0x3

.field public static final SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final SOURCE_CODEC_TYPE_LDAC:I = 0x4

.field public static final SOURCE_CODEC_TYPE_MAX:I = 0x5

.field public static final SOURCE_CODEC_TYPE_SBC:I


# instance fields
.field private final mBitsPerSample:I

.field private final mChannelMode:I

.field private mCodecPriority:I

.field private final mCodecSpecific1:J

.field private final mCodecSpecific2:J

.field private final mCodecSpecific3:J

.field private final mCodecSpecific4:J

.field private final mCodecType:I

.field private final mSampleRate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 5
    .line 6
    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 7
    .line 8
    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 9
    .line 10
    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 11
    .line 12
    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 13
    .line 14
    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 15
    .line 16
    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 17
    .line 18
    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 19
    .line 20
    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 21
    .line 22
    return-void
.end method

.method private static appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    const-string/jumbo v0, "|"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Landroid/app/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/bluetooth/BluetoothCodecConfig;

    .line 7
    .line 8
    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 9
    .line 10
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 15
    .line 16
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 21
    .line 22
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 27
    .line 28
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 29
    .line 30
    if-ne v0, v2, :cond_0

    .line 31
    .line 32
    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 33
    .line 34
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 35
    .line 36
    if-ne v0, v2, :cond_0

    .line 37
    .line 38
    iget-wide v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 39
    .line 40
    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 41
    .line 42
    cmp-long v0, v2, v4

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-wide v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 47
    .line 48
    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 49
    .line 50
    cmp-long v0, v2, v4

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-wide v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 55
    .line 56
    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 57
    .line 58
    cmp-long v0, v2, v4

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    iget-wide v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 63
    .line 64
    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 65
    .line 66
    cmp-long p1, v2, v4

    .line 67
    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    :cond_0
    return v1
.end method

.method public getBitsPerSample()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public getChannelMode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const v1, 0xf4240

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "UNKNOWN CODEC("

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 30
    .line 31
    const-string v2, ")"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_0
    const-string v0, "INVALID CODEC"

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    const-string v0, "LDAC"

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    const-string v0, "aptX HD"

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    const-string v0, "aptX"

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_4
    const-string v0, "AAC"

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_5
    const-string v0, "SBC"

    .line 54
    .line 55
    return-object v0
.end method

.method public getCodecPriority()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public getCodecSpecific1()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public getCodecSpecific2()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public getCodecSpecific3()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public getCodecSpecific4()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public getCodecType()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput-object v1, v0, v2

    .line 40
    .line 41
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x4

    .line 48
    aput-object v1, v0, v2

    .line 49
    .line 50
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x5

    .line 57
    aput-object v1, v0, v2

    .line 58
    .line 59
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 60
    .line 61
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x6

    .line 66
    aput-object v1, v0, v2

    .line 67
    .line 68
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 69
    .line 70
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x7

    .line 75
    aput-object v1, v0, v2

    .line 76
    .line 77
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 78
    .line 79
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/16 v2, 0x8

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    return v0
.end method

.method public isMandatoryCodec()Z
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCodecPriority(I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    and-int/2addr v3, v4

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    const-string v3, "44100"

    .line 21
    .line 22
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 27
    .line 28
    and-int/lit8 v3, v3, 0x2

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    const-string v3, "48000"

    .line 33
    .line 34
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_2
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 39
    .line 40
    and-int/lit8 v3, v3, 0x4

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    const-string v3, "88200"

    .line 45
    .line 46
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_3
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 51
    .line 52
    and-int/lit8 v3, v3, 0x8

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    const-string v3, "96000"

    .line 57
    .line 58
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_4
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x10

    .line 65
    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    const-string v3, "176400"

    .line 69
    .line 70
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_5
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 75
    .line 76
    and-int/lit8 v3, v3, 0x20

    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    const-string v3, "192000"

    .line 81
    .line 82
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_6
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 87
    .line 88
    if-nez v3, :cond_7

    .line 89
    .line 90
    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    goto :goto_1

    .line 95
    :cond_7
    move-object v3, v2

    .line 96
    :goto_1
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 97
    .line 98
    and-int/2addr v5, v4

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    const-string v5, "16"

    .line 102
    .line 103
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :cond_8
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 108
    .line 109
    and-int/lit8 v5, v5, 0x2

    .line 110
    .line 111
    if-eqz v5, :cond_9

    .line 112
    .line 113
    const-string v5, "24"

    .line 114
    .line 115
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_9
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 120
    .line 121
    and-int/lit8 v5, v5, 0x4

    .line 122
    .line 123
    if-eqz v5, :cond_a

    .line 124
    .line 125
    const-string v5, "32"

    .line 126
    .line 127
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :cond_a
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 132
    .line 133
    if-nez v5, :cond_b

    .line 134
    .line 135
    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    :cond_b
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 140
    .line 141
    and-int/2addr v1, v4

    .line 142
    if-eqz v1, :cond_c

    .line 143
    .line 144
    const-string v1, "MONO"

    .line 145
    .line 146
    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    :cond_c
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 151
    .line 152
    and-int/lit8 v1, v1, 0x2

    .line 153
    .line 154
    if-eqz v1, :cond_d

    .line 155
    .line 156
    const-string v1, "STEREO"

    .line 157
    .line 158
    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string/jumbo v5, "{codecName:"

    .line 165
    .line 166
    .line 167
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v5, ",mCodecType:"

    .line 178
    .line 179
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 183
    .line 184
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v5, ",mCodecPriority:"

    .line 188
    .line 189
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 193
    .line 194
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v5, ",mSampleRate:"

    .line 198
    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    new-array v5, v4, [Ljava/lang/Object;

    .line 203
    .line 204
    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 205
    .line 206
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    const/4 v7, 0x0

    .line 211
    aput-object v6, v5, v7

    .line 212
    .line 213
    const-string v6, "0x%x"

    .line 214
    .line 215
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v5, "("

    .line 223
    .line 224
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v0, "),mBitsPerSample:"

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    new-array v0, v4, [Ljava/lang/Object;

    .line 236
    .line 237
    iget v8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 238
    .line 239
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    aput-object v8, v0, v7

    .line 244
    .line 245
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, "),mChannelMode:"

    .line 259
    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    new-array v0, v4, [Ljava/lang/Object;

    .line 264
    .line 265
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 266
    .line 267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    aput-object v3, v0, v7

    .line 272
    .line 273
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v0, "),mCodecSpecific1:"

    .line 287
    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 292
    .line 293
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v0, ",mCodecSpecific2:"

    .line 297
    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 302
    .line 303
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v0, ",mCodecSpecific3:"

    .line 307
    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 312
    .line 313
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v0, ",mCodecSpecific4:"

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 322
    .line 323
    const-string/jumbo v0, "}"

    .line 324
    .line 325
    .line 326
    invoke-static {v1, v2, v3, v0}, Landroid/app/m;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
