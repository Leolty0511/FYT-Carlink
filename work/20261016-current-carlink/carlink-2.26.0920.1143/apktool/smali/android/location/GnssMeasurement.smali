.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$MultipathIndicator;
    }
.end annotation


# static fields
.field private static final ADR_ALL:I = 0x7

.field public static final ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final ADR_STATE_RESET:I = 0x2

.field public static final ADR_STATE_UNKNOWN:I = 0x0

.field public static final ADR_STATE_VALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_SNR:I = 0x1

.field public static final MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field private static final STATE_ALL:I = 0x3fff

.field public static final STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final STATE_BIT_SYNC:I = 0x2

.field public static final STATE_CODE_LOCK:I = 0x1

.field public static final STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final STATE_GLO_STRING_SYNC:I = 0x40

.field public static final STATE_GLO_TOD_DECODED:I = 0x80

.field public static final STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final STATE_SBAS_SYNC:I = 0x2000

.field public static final STATE_SUBFRAME_SYNC:I = 0x4

.field public static final STATE_SYMBOL_SYNC:I = 0x20

.field public static final STATE_TOW_DECODED:I = 0x8

.field public static final STATE_TOW_KNOWN:I = 0x4000

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mAccumulatedDeltaRangeMeters:D

.field private mAccumulatedDeltaRangeState:I

.field private mAccumulatedDeltaRangeUncertaintyMeters:D

.field private mAutomaticGainControlLevelInDb:D

.field private mCarrierCycles:J

.field private mCarrierFrequencyHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0DbHz:D

.field private mConstellationType:I

.field private mFlags:I

.field private mMultipathIndicator:I

.field private mPseudorangeRateMetersPerSecond:D

.field private mPseudorangeRateUncertaintyMetersPerSecond:D

.field private mReceivedSvTimeNanos:J

.field private mReceivedSvTimeUncertaintyNanos:J

.field private mSnrInDb:D

.field private mState:I

.field private mSvid:I

.field private mTimeOffsetNanos:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$002(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return p1
.end method

.method public static synthetic access$1002(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return p1
.end method

.method public static synthetic access$102(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return p1
.end method

.method public static synthetic access$1102(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide p1
.end method

.method public static synthetic access$1202(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide p1
.end method

.method public static synthetic access$1302(Landroid/location/GnssMeasurement;F)F
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return p1
.end method

.method public static synthetic access$1402(Landroid/location/GnssMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method public static synthetic access$1502(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method public static synthetic access$1602(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method public static synthetic access$1702(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return p1
.end method

.method public static synthetic access$1802(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method public static synthetic access$1902(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide p1
.end method

.method public static synthetic access$202(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return p1
.end method

.method public static synthetic access$302(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide p1
.end method

.method public static synthetic access$402(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return p1
.end method

.method public static synthetic access$502(Landroid/location/GnssMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide p1
.end method

.method public static synthetic access$602(Landroid/location/GnssMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide p1
.end method

.method public static synthetic access$702(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide p1
.end method

.method public static synthetic access$802(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide p1
.end method

.method public static synthetic access$902(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide p1
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Unknown"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    and-int/2addr v1, v2

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const-string v1, "Valid|"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    and-int/2addr v1, v3

    .line 28
    if-ne v1, v3, :cond_2

    .line 29
    .line 30
    const-string v1, "Reset|"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    and-int/2addr v1, v3

    .line 39
    if-ne v1, v3, :cond_3

    .line 40
    .line 41
    const-string v1, "CycleSlip|"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_3
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 47
    .line 48
    and-int/lit8 v1, v1, -0x8

    .line 49
    .line 50
    if-lez v1, :cond_4

    .line 51
    .line 52
    const-string v3, "Other("

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ")|"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    sub-int/2addr v1, v2

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "<Invalid:"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 19
    .line 20
    const-string v2, ">"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    const-string v0, "NotDetected"

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const-string v0, "Detected"

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    const-string v0, "Unknown"

    .line 34
    .line 35
    return-object v0
.end method

.method private getStateString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Unknown"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 14
    .line 15
    and-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "CodeLock|"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 25
    .line 26
    and-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const-string v1, "BitSync|"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 36
    .line 37
    and-int/lit8 v1, v1, 0x4

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const-string v1, "SubframeSync|"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_3
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 47
    .line 48
    and-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    const-string v1, "TowDecoded|"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_4
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 58
    .line 59
    and-int/lit16 v1, v1, 0x4000

    .line 60
    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    const-string v1, "TowKnown|"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_5
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 69
    .line 70
    and-int/lit8 v1, v1, 0x10

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    const-string v1, "MsecAmbiguous|"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_6
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 80
    .line 81
    and-int/lit8 v1, v1, 0x20

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    const-string v1, "SymbolSync|"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_7
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 91
    .line 92
    and-int/lit8 v1, v1, 0x40

    .line 93
    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    const-string v1, "GloStringSync|"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_8
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 102
    .line 103
    and-int/lit16 v1, v1, 0x80

    .line 104
    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    const-string v1, "GloTodDecoded|"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_9
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 113
    .line 114
    const v2, 0x8000

    .line 115
    .line 116
    .line 117
    and-int/2addr v1, v2

    .line 118
    if-eqz v1, :cond_a

    .line 119
    .line 120
    const-string v1, "GloTodKnown|"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_a
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 126
    .line 127
    and-int/lit16 v1, v1, 0x100

    .line 128
    .line 129
    if-eqz v1, :cond_b

    .line 130
    .line 131
    const-string v1, "BdsD2BitSync|"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_b
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 137
    .line 138
    and-int/lit16 v1, v1, 0x200

    .line 139
    .line 140
    if-eqz v1, :cond_c

    .line 141
    .line 142
    const-string v1, "BdsD2SubframeSync|"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_c
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 148
    .line 149
    and-int/lit16 v1, v1, 0x400

    .line 150
    .line 151
    if-eqz v1, :cond_d

    .line 152
    .line 153
    const-string v1, "GalE1bcCodeLock|"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_d
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 159
    .line 160
    and-int/lit16 v1, v1, 0x800

    .line 161
    .line 162
    if-eqz v1, :cond_e

    .line 163
    .line 164
    const-string v1, "E1c2ndCodeLock|"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :cond_e
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 170
    .line 171
    and-int/lit16 v1, v1, 0x1000

    .line 172
    .line 173
    if-eqz v1, :cond_f

    .line 174
    .line 175
    const-string v1, "GalE1bPageSync|"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_f
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 181
    .line 182
    and-int/lit16 v1, v1, 0x2000

    .line 183
    .line 184
    if-eqz v1, :cond_10

    .line 185
    .line 186
    const-string v1, "SbasSync|"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    :cond_10
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 192
    .line 193
    and-int/lit16 v1, v1, -0x4000

    .line 194
    .line 195
    if-lez v1, :cond_11

    .line 196
    .line 197
    const-string v2, "Other("

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v1, ")|"

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    add-int/lit8 v1, v1, -0x1

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setSvid(I)V

    .line 5
    .line 6
    .line 7
    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    .line 8
    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setState(I)V

    .line 13
    .line 14
    .line 15
    const-wide/high16 v1, -0x8000000000000000L

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    .line 18
    .line 19
    .line 20
    const-wide v1, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v1, 0x1

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetAutomaticGainControlLevel()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide v0
.end method

.method public getAutomaticGainControlLevelDb()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide v0
.end method

.method public getCarrierCycles()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyHz()F
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0DbHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide v0
.end method

.method public getConstellationType()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return v0
.end method

.method public getMultipathIndicator()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return v0
.end method

.method public getPseudorangeRateMetersPerSecond()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyMetersPerSecond()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide v0
.end method

.method public getReceivedSvTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide v0
.end method

.method public getReceivedSvTimeUncertaintyNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return v0
.end method

.method public getTimeOffsetNanos()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide v0
.end method

.method public hasAutomaticGainControlLevelDb()Z
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyHz()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    return-void
.end method

.method public resetAutomaticGainControlLevel()V
    .locals 2

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 9
    .line 10
    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, -0x8000000000000000L

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 9
    .line 10
    return-void
.end method

.method public resetCarrierFrequencyHz()V
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 9
    .line 10
    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 9
    .line 10
    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 9
    .line 10
    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 8
    .line 9
    return-void
.end method

.method public set(Landroid/location/GnssMeasurement;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2
    .line 3
    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 4
    .line 5
    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    .line 6
    .line 7
    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 8
    .line 9
    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 10
    .line 11
    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 12
    .line 13
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 16
    .line 17
    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    .line 18
    .line 19
    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 20
    .line 21
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 22
    .line 23
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 24
    .line 25
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 26
    .line 27
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 28
    .line 29
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 30
    .line 31
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 32
    .line 33
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 34
    .line 35
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 36
    .line 37
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 38
    .line 39
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 40
    .line 41
    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 42
    .line 43
    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 44
    .line 45
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 46
    .line 47
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 48
    .line 49
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 50
    .line 51
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 52
    .line 53
    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 54
    .line 55
    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 56
    .line 57
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 58
    .line 59
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 60
    .line 61
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 62
    .line 63
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 64
    .line 65
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 66
    .line 67
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 68
    .line 69
    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 70
    .line 71
    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 72
    .line 73
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 74
    .line 75
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 76
    .line 77
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 78
    .line 79
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 80
    .line 81
    return-void
.end method

.method public setAccumulatedDeltaRangeMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-void
.end method

.method public setAccumulatedDeltaRangeState(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-void
.end method

.method public setAutomaticGainControlLevelInDb(D)V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 7
    .line 8
    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 7
    .line 8
    return-void
.end method

.method public setCarrierFrequencyHz(F)V
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 7
    .line 8
    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 7
    .line 8
    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 7
    .line 8
    return-void
.end method

.method public setCn0DbHz(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-void
.end method

.method public setConstellationType(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return-void
.end method

.method public setMultipathIndicator(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return-void
.end method

.method public setPseudorangeRateMetersPerSecond(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-void
.end method

.method public setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-void
.end method

.method public setReceivedSvTimeNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-void
.end method

.method public setReceivedSvTimeUncertaintyNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 6
    .line 7
    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return-void
.end method

.method public setSvid(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return-void
.end method

.method public setTimeOffsetNanos(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GnssMeasurement:\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "Svid"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    iget v3, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v5, 0x1

    .line 23
    aput-object v3, v2, v5

    .line 24
    .line 25
    const-string v3, "   %-29s = %s\n"

    .line 26
    .line 27
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    new-array v2, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v6, "ConstellationType"

    .line 37
    .line 38
    aput-object v6, v2, v4

    .line 39
    .line 40
    iget v6, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 41
    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    aput-object v6, v2, v5

    .line 47
    .line 48
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v6, "TimeOffsetNanos"

    .line 58
    .line 59
    aput-object v6, v2, v4

    .line 60
    .line 61
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 62
    .line 63
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    aput-object v6, v2, v5

    .line 68
    .line 69
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-array v2, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v6, "State"

    .line 79
    .line 80
    aput-object v6, v2, v4

    .line 81
    .line 82
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    aput-object v6, v2, v5

    .line 87
    .line 88
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x4

    .line 96
    new-array v6, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    const-string v7, "ReceivedSvTimeNanos"

    .line 99
    .line 100
    aput-object v7, v6, v4

    .line 101
    .line 102
    iget-wide v7, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 103
    .line 104
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    aput-object v7, v6, v5

    .line 109
    .line 110
    const-string v7, "ReceivedSvTimeUncertaintyNanos"

    .line 111
    .line 112
    aput-object v7, v6, v1

    .line 113
    .line 114
    iget-wide v7, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 115
    .line 116
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    const/4 v8, 0x3

    .line 121
    aput-object v7, v6, v8

    .line 122
    .line 123
    const-string v7, "   %-29s = %-25s   %-40s = %s\n"

    .line 124
    .line 125
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    new-array v6, v1, [Ljava/lang/Object;

    .line 133
    .line 134
    const-string v9, "Cn0DbHz"

    .line 135
    .line 136
    aput-object v9, v6, v4

    .line 137
    .line 138
    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 139
    .line 140
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    aput-object v9, v6, v5

    .line 145
    .line 146
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    new-array v6, v2, [Ljava/lang/Object;

    .line 154
    .line 155
    const-string v9, "PseudorangeRateMetersPerSecond"

    .line 156
    .line 157
    aput-object v9, v6, v4

    .line 158
    .line 159
    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 160
    .line 161
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    aput-object v9, v6, v5

    .line 166
    .line 167
    const-string v9, "PseudorangeRateUncertaintyMetersPerSecond"

    .line 168
    .line 169
    aput-object v9, v6, v1

    .line 170
    .line 171
    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 172
    .line 173
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    aput-object v9, v6, v8

    .line 178
    .line 179
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    new-array v6, v1, [Ljava/lang/Object;

    .line 187
    .line 188
    const-string v9, "AccumulatedDeltaRangeState"

    .line 189
    .line 190
    aput-object v9, v6, v4

    .line 191
    .line 192
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    aput-object v9, v6, v5

    .line 197
    .line 198
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    new-array v6, v2, [Ljava/lang/Object;

    .line 206
    .line 207
    const-string v9, "AccumulatedDeltaRangeMeters"

    .line 208
    .line 209
    aput-object v9, v6, v4

    .line 210
    .line 211
    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 212
    .line 213
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    aput-object v9, v6, v5

    .line 218
    .line 219
    const-string v9, "AccumulatedDeltaRangeUncertaintyMeters"

    .line 220
    .line 221
    aput-object v9, v6, v1

    .line 222
    .line 223
    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 224
    .line 225
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    aput-object v9, v6, v8

    .line 230
    .line 231
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    new-array v6, v1, [Ljava/lang/Object;

    .line 239
    .line 240
    const-string v9, "CarrierFrequencyHz"

    .line 241
    .line 242
    aput-object v9, v6, v4

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    const/4 v10, 0x0

    .line 249
    if-eqz v9, :cond_0

    .line 250
    .line 251
    iget v9, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 252
    .line 253
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    goto :goto_0

    .line 258
    :cond_0
    move-object v9, v10

    .line 259
    :goto_0
    aput-object v9, v6, v5

    .line 260
    .line 261
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    new-array v6, v1, [Ljava/lang/Object;

    .line 269
    .line 270
    const-string v9, "CarrierCycles"

    .line 271
    .line 272
    aput-object v9, v6, v4

    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_1

    .line 279
    .line 280
    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 281
    .line 282
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    goto :goto_1

    .line 287
    :cond_1
    move-object v9, v10

    .line 288
    :goto_1
    aput-object v9, v6, v5

    .line 289
    .line 290
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    new-array v2, v2, [Ljava/lang/Object;

    .line 298
    .line 299
    const-string v6, "CarrierPhase"

    .line 300
    .line 301
    aput-object v6, v2, v4

    .line 302
    .line 303
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_2

    .line 308
    .line 309
    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 310
    .line 311
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    goto :goto_2

    .line 316
    :cond_2
    move-object v6, v10

    .line 317
    :goto_2
    aput-object v6, v2, v5

    .line 318
    .line 319
    const-string v6, "CarrierPhaseUncertainty"

    .line 320
    .line 321
    aput-object v6, v2, v1

    .line 322
    .line 323
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-eqz v6, :cond_3

    .line 328
    .line 329
    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 330
    .line 331
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    goto :goto_3

    .line 336
    :cond_3
    move-object v6, v10

    .line 337
    :goto_3
    aput-object v6, v2, v8

    .line 338
    .line 339
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    new-array v2, v1, [Ljava/lang/Object;

    .line 347
    .line 348
    const-string v6, "MultipathIndicator"

    .line 349
    .line 350
    aput-object v6, v2, v4

    .line 351
    .line 352
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    aput-object v6, v2, v5

    .line 357
    .line 358
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    new-array v2, v1, [Ljava/lang/Object;

    .line 366
    .line 367
    const-string v6, "SnrInDb"

    .line 368
    .line 369
    aput-object v6, v2, v4

    .line 370
    .line 371
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-eqz v6, :cond_4

    .line 376
    .line 377
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 378
    .line 379
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    goto :goto_4

    .line 384
    :cond_4
    move-object v6, v10

    .line 385
    :goto_4
    aput-object v6, v2, v5

    .line 386
    .line 387
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    new-array v1, v1, [Ljava/lang/Object;

    .line 395
    .line 396
    const-string v2, "AgcLevelDb"

    .line 397
    .line 398
    aput-object v2, v1, v4

    .line 399
    .line 400
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasAutomaticGainControlLevelDb()Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_5

    .line 405
    .line 406
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 407
    .line 408
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 409
    .line 410
    .line 411
    move-result-object v10

    .line 412
    :cond_5
    aput-object v10, v1, v5

    .line 413
    .line 414
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    .line 60
    .line 61
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    .line 70
    .line 71
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    .line 75
    .line 76
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    .line 85
    .line 86
    iget p2, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    .line 95
    .line 96
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
