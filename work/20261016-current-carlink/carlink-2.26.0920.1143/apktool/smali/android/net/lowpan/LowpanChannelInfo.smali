.class public Landroid/net/lowpan/LowpanChannelInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BANDWIDTH:F = 0.0f

.field public static final UNKNOWN_FREQUENCY:F = 0.0f

.field public static final UNKNOWN_POWER:I = 0x7fffffff


# instance fields
.field private mIndex:I

.field private mIsMaskedByRegulatoryDomain:Z

.field private mMaxTransmitPower:I

.field private mName:Ljava/lang/String;

.field private mSpectrumBandwidth:F

.field private mSpectrumCenterFrequency:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 6
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    const v1, 0x7fffffff

    .line 7
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 8
    iput-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;FF)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 10
    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 12
    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 13
    iput-object p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 14
    iput p3, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 15
    iput p4, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanChannelInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Landroid/net/lowpan/LowpanChannelInfo;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return p1
.end method

.method public static synthetic access$202(Landroid/net/lowpan/LowpanChannelInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Landroid/net/lowpan/LowpanChannelInfo;F)F
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return p1
.end method

.method public static synthetic access$402(Landroid/net/lowpan/LowpanChannelInfo;F)F
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return p1
.end method

.method public static synthetic access$502(Landroid/net/lowpan/LowpanChannelInfo;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return p1
.end method

.method public static synthetic access$602(Landroid/net/lowpan/LowpanChannelInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return p1
.end method

.method public static getChannelInfoForIeee802154Page0(I)Landroid/net/lowpan/LowpanChannelInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-gez p0, :cond_1

    .line 8
    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-nez p0, :cond_2

    .line 12
    .line 13
    const v1, 0x4e4f04d4    # 8.6830003E8f

    .line 14
    .line 15
    .line 16
    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 17
    .line 18
    const v1, 0x49127c00    # 600000.0f

    .line 19
    .line 20
    .line 21
    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/16 v2, 0xb

    .line 25
    .line 26
    const v3, 0x49f42400    # 2000000.0f

    .line 27
    .line 28
    .line 29
    if-ge p0, v2, :cond_3

    .line 30
    .line 31
    int-to-float v1, p0

    .line 32
    mul-float/2addr v1, v3

    .line 33
    const v2, 0x4e5787c8    # 9.04E8f

    .line 34
    .line 35
    .line 36
    add-float/2addr v1, v2

    .line 37
    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/16 v2, 0x1a

    .line 44
    .line 45
    if-ge p0, v2, :cond_0

    .line 46
    .line 47
    const v1, 0x4a989680    # 5000000.0f

    .line 48
    .line 49
    .line 50
    int-to-float v2, p0

    .line 51
    mul-float/2addr v2, v1

    .line 52
    const v1, 0x4f0c1227    # 2.34999987E9f

    .line 53
    .line 54
    .line 55
    add-float/2addr v2, v1

    .line 56
    iput v2, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 57
    .line 58
    iput v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 59
    .line 60
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iput-object p0, v0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 65
    .line 66
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/lowpan/LowpanChannelInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/lowpan/LowpanChannelInfo;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 20
    .line 21
    iget v2, p1, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 26
    .line 27
    iget-boolean v2, p1, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 32
    .line 33
    iget v2, p1, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 34
    .line 35
    cmpl-float v0, v0, v2

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 40
    .line 41
    iget v2, p1, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 42
    .line 43
    cmpl-float v0, v0, v2

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 48
    .line 49
    iget p1, p1, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 50
    .line 51
    if-ne v0, p1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_1
    return v1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return v0
.end method

.method public getMaxTransmitPower()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpectrumBandwidth()F
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return v0
.end method

.method public getSpectrumCenterFrequency()F
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    iget-boolean v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x3

    .line 34
    aput-object v1, v0, v2

    .line 35
    .line 36
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x4

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x5

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public isMaskedByRegulatoryDomain()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "Channel "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, " ("

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    const-string v1, ")"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    cmpl-float v3, v1, v2

    .line 48
    .line 49
    const-string v4, "MHz"

    .line 50
    .line 51
    const-string/jumbo v5, "kHz"

    .line 52
    .line 53
    .line 54
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 55
    .line 56
    const-string v7, "GHz"

    .line 57
    .line 58
    const v8, 0x49742400    # 1000000.0f

    .line 59
    .line 60
    .line 61
    const v9, 0x4e6e6b28    # 1.0E9f

    .line 62
    .line 63
    .line 64
    if-lez v3, :cond_3

    .line 65
    .line 66
    cmpl-float v3, v1, v9

    .line 67
    .line 68
    const-string v10, ", SpectrumCenterFrequency: "

    .line 69
    .line 70
    if-lez v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 76
    .line 77
    div-float/2addr v1, v9

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    cmpl-float v1, v1, v8

    .line 86
    .line 87
    if-lez v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 93
    .line 94
    div-float/2addr v1, v8

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    .line 104
    .line 105
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 106
    .line 107
    div-float/2addr v1, v6

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 115
    .line 116
    cmpl-float v2, v1, v2

    .line 117
    .line 118
    if-lez v2, :cond_6

    .line 119
    .line 120
    cmpl-float v2, v1, v9

    .line 121
    .line 122
    const-string v3, ", SpectrumBandwidth: "

    .line 123
    .line 124
    if-lez v2, :cond_4

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    .line 128
    .line 129
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 130
    .line 131
    div-float/2addr v1, v9

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    cmpl-float v1, v1, v8

    .line 140
    .line 141
    if-lez v1, :cond_5

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 147
    .line 148
    div-float/2addr v1, v8

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 160
    .line 161
    div-float/2addr v1, v6

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    .line 167
    .line 168
    :cond_6
    :goto_1
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 169
    .line 170
    const v2, 0x7fffffff

    .line 171
    .line 172
    .line 173
    if-eq v1, v2, :cond_7

    .line 174
    .line 175
    const-string v1, ", MaxTransmitPower: "

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    .line 179
    .line 180
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 183
    .line 184
    .line 185
    const-string v1, "dBm"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
