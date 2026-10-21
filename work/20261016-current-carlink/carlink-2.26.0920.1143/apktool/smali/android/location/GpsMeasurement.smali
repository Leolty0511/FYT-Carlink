.class public Landroid/location/GpsMeasurement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ADR_ALL:S = 0x7s

.field public static final ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final ADR_STATE_RESET:S = 0x2s

.field public static final ADR_STATE_UNKNOWN:S = 0x0s

.field public static final ADR_STATE_VALID:S = 0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final GPS_MEASUREMENT_HAS_UNCORRECTED_PSEUDORANGE_RATE:I = 0x40000

.field private static final HAS_AZIMUTH:I = 0x8

.field private static final HAS_AZIMUTH_UNCERTAINTY:I = 0x10

.field private static final HAS_BIT_NUMBER:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_CODE_PHASE:I = 0x80

.field private static final HAS_CODE_PHASE_UNCERTAINTY:I = 0x100

.field private static final HAS_DOPPLER_SHIFT:I = 0x8000

.field private static final HAS_DOPPLER_SHIFT_UNCERTAINTY:I = 0x10000

.field private static final HAS_ELEVATION:I = 0x2

.field private static final HAS_ELEVATION_UNCERTAINTY:I = 0x4

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_PSEUDORANGE:I = 0x20

.field private static final HAS_PSEUDORANGE_UNCERTAINTY:I = 0x40

.field private static final HAS_SNR:I = 0x1

.field private static final HAS_TIME_FROM_LAST_BIT:I = 0x4000

.field private static final HAS_USED_IN_FIX:I = 0x20000

.field public static final LOSS_OF_LOCK_CYCLE_SLIP:B = 0x2t

.field public static final LOSS_OF_LOCK_OK:B = 0x1t

.field public static final LOSS_OF_LOCK_UNKNOWN:B = 0x0t

.field public static final MULTIPATH_INDICATOR_DETECTED:B = 0x1t

.field public static final MULTIPATH_INDICATOR_NOT_USED:B = 0x2t

.field public static final MULTIPATH_INDICATOR_UNKNOWN:B = 0x0t

.field private static final STATE_ALL:S = 0x1fs

.field public static final STATE_BIT_SYNC:S = 0x2s

.field public static final STATE_CODE_LOCK:S = 0x1s

.field public static final STATE_MSEC_AMBIGUOUS:S = 0x10s

.field public static final STATE_SUBFRAME_SYNC:S = 0x4s

.field public static final STATE_TOW_DECODED:S = 0x8s

.field public static final STATE_UNKNOWN:S


# instance fields
.field private mAccumulatedDeltaRangeInMeters:D

.field private mAccumulatedDeltaRangeState:S

.field private mAccumulatedDeltaRangeUncertaintyInMeters:D

.field private mAzimuthInDeg:D

.field private mAzimuthUncertaintyInDeg:D

.field private mBitNumber:I

.field private mCarrierCycles:J

.field private mCarrierFrequencyInHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0InDbHz:D

.field private mCodePhaseInChips:D

.field private mCodePhaseUncertaintyInChips:D

.field private mDopplerShiftInHz:D

.field private mDopplerShiftUncertaintyInHz:D

.field private mElevationInDeg:D

.field private mElevationUncertaintyInDeg:D

.field private mFlags:I

.field private mLossOfLock:B

.field private mMultipathIndicator:B

.field private mPrn:B

.field private mPseudorangeInMeters:D

.field private mPseudorangeRateInMetersPerSec:D

.field private mPseudorangeRateUncertaintyInMetersPerSec:D

.field private mPseudorangeUncertaintyInMeters:D

.field private mReceivedGpsTowInNs:J

.field private mReceivedGpsTowUncertaintyInNs:J

.field private mSnrInDb:D

.field private mState:S

.field private mTimeFromLastBitInMs:S

.field private mTimeOffsetInNs:D

.field private mUsedInFix:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GpsMeasurement$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$002(Landroid/location/GpsMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return p1
.end method

.method public static synthetic access$1002(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide p1
.end method

.method public static synthetic access$102(Landroid/location/GpsMeasurement;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return p1
.end method

.method public static synthetic access$1102(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide p1
.end method

.method public static synthetic access$1202(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide p1
.end method

.method public static synthetic access$1302(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide p1
.end method

.method public static synthetic access$1402(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide p1
.end method

.method public static synthetic access$1502(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide p1
.end method

.method public static synthetic access$1602(Landroid/location/GpsMeasurement;F)F
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return p1
.end method

.method public static synthetic access$1702(Landroid/location/GpsMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method public static synthetic access$1802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method public static synthetic access$1902(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method public static synthetic access$2002(Landroid/location/GpsMeasurement;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return p1
.end method

.method public static synthetic access$202(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide p1
.end method

.method public static synthetic access$2102(Landroid/location/GpsMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return p1
.end method

.method public static synthetic access$2202(Landroid/location/GpsMeasurement;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return p1
.end method

.method public static synthetic access$2302(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide p1
.end method

.method public static synthetic access$2402(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide p1
.end method

.method public static synthetic access$2502(Landroid/location/GpsMeasurement;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return p1
.end method

.method public static synthetic access$2602(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method public static synthetic access$2702(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide p1
.end method

.method public static synthetic access$2802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide p1
.end method

.method public static synthetic access$2902(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide p1
.end method

.method public static synthetic access$3002(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide p1
.end method

.method public static synthetic access$302(Landroid/location/GpsMeasurement;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return p1
.end method

.method public static synthetic access$3102(Landroid/location/GpsMeasurement;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return p1
.end method

.method public static synthetic access$402(Landroid/location/GpsMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide p1
.end method

.method public static synthetic access$502(Landroid/location/GpsMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide p1
.end method

.method public static synthetic access$602(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide p1
.end method

.method public static synthetic access$702(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide p1
.end method

.method public static synthetic access$802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide p1
.end method

.method public static synthetic access$902(Landroid/location/GpsMeasurement;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return p1
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

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

.method private getLossOfLockString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

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
    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

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
    const-string v0, "CycleSlip"

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const-string v0, "Ok"

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

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

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
    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

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
    const-string v0, "NotUsed"

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
    .locals 4

    .line 1
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    and-int/2addr v1, v2

    .line 17
    if-ne v1, v2, :cond_1

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    and-int/2addr v1, v3

    .line 28
    if-ne v1, v3, :cond_2

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    and-int/2addr v1, v3

    .line 39
    if-ne v1, v3, :cond_3

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
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 47
    .line 48
    const/16 v3, 0x8

    .line 49
    .line 50
    and-int/2addr v1, v3

    .line 51
    if-ne v1, v3, :cond_4

    .line 52
    .line 53
    const-string v1, "TowDecoded|"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 59
    .line 60
    const/16 v3, 0x10

    .line 61
    .line 62
    and-int/2addr v1, v3

    .line 63
    if-ne v1, v3, :cond_5

    .line 64
    .line 65
    const-string v1, "MsecAmbiguous"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 71
    .line 72
    and-int/lit8 v1, v1, -0x20

    .line 73
    .line 74
    if-lez v1, :cond_6

    .line 75
    .line 76
    const-string v3, "Other("

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ")|"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    sub-int/2addr v1, v2

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 3
    .line 4
    const/16 v1, -0x80

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/location/GpsMeasurement;->setPrn(B)V

    .line 7
    .line 8
    .line 9
    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setTimeOffsetInNs(D)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setState(S)V

    .line 15
    .line 16
    .line 17
    const-wide/high16 v1, -0x8000000000000000L

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowInNs(J)V

    .line 20
    .line 21
    .line 22
    const-wide v1, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowUncertaintyInNs(J)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v1, 0x1

    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setCn0InDbHz(D)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateInMetersPerSec(D)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateUncertaintyInMetersPerSec(D)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeState(S)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeInMeters(D)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeUncertaintyInMeters(D)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeInMeters()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeUncertaintyInMeters()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseInChips()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseUncertaintyInChips()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierFrequencyInHz()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierCycles()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhase()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhaseUncertainty()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setLossOfLock(B)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetBitNumber()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetTimeFromLastBitInMs()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftInHz()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftUncertaintyInHz()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setMultipathIndicator(B)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetSnrInDb()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationInDeg()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationUncertaintyInDeg()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthInDeg()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthUncertaintyInDeg()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setUsedInFix(Z)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

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

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()S
    .locals 1

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getAzimuthInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide v0
.end method

.method public getAzimuthUncertaintyInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide v0
.end method

.method public getBitNumber()I
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return v0
.end method

.method public getCarrierCycles()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyInHz()F
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0InDbHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide v0
.end method

.method public getCodePhaseInChips()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide v0
.end method

.method public getCodePhaseUncertaintyInChips()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide v0
.end method

.method public getDopplerShiftInHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide v0
.end method

.method public getDopplerShiftUncertaintyInHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide v0
.end method

.method public getElevationInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide v0
.end method

.method public getElevationUncertaintyInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide v0
.end method

.method public getLossOfLock()B
    .locals 1

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return v0
.end method

.method public getMultipathIndicator()B
    .locals 1

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return v0
.end method

.method public getPrn()B
    .locals 1

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return v0
.end method

.method public getPseudorangeInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide v0
.end method

.method public getPseudorangeRateInMetersPerSec()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyInMetersPerSec()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeUncertaintyInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getReceivedGpsTowInNs()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide v0
.end method

.method public getReceivedGpsTowUncertaintyInNs()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()S
    .locals 1

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    return v0
.end method

.method public getTimeFromLastBitInMs()S
    .locals 1

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return v0
.end method

.method public getTimeOffsetInNs()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide v0
.end method

.method public hasAzimuthInDeg()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasAzimuthUncertaintyInDeg()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBitNumber()Z
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyInHz()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseInChips()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseUncertaintyInChips()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftInHz()Z
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftUncertaintyInHz()Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationInDeg()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationUncertaintyInDeg()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeInMeters()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeUncertaintyInMeters()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeFromLastBitInMs()Z
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isPseudorangeRateCorrected()Z
    .locals 1

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUsedInFix()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    return-void
.end method

.method public resetAzimuthInDeg()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 9
    .line 10
    return-void
.end method

.method public resetAzimuthUncertaintyInDeg()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 9
    .line 10
    return-void
.end method

.method public resetBitNumber()V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

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
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, -0x8000000000000000L

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 9
    .line 10
    return-void
.end method

.method public resetCarrierFrequencyInHz()V
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

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
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

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
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 9
    .line 10
    return-void
.end method

.method public resetCodePhaseInChips()V
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 9
    .line 10
    return-void
.end method

.method public resetCodePhaseUncertaintyInChips()V
    .locals 2

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 9
    .line 10
    return-void
.end method

.method public resetDopplerShiftInHz()V
    .locals 2

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 5
    .line 6
    .line 7
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 8
    .line 9
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 10
    .line 11
    return-void
.end method

.method public resetDopplerShiftUncertaintyInHz()V
    .locals 2

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 9
    .line 10
    return-void
.end method

.method public resetElevationInDeg()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 8
    .line 9
    return-void
.end method

.method public resetElevationUncertaintyInDeg()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 8
    .line 9
    return-void
.end method

.method public resetPseudorangeInMeters()V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 9
    .line 10
    return-void
.end method

.method public resetPseudorangeUncertaintyInMeters()V
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 9
    .line 10
    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 8
    .line 9
    return-void
.end method

.method public resetTimeFromLastBitInMs()V
    .locals 1

    .line 1
    const/16 v0, 0x4000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, -0x8000

    .line 7
    .line 8
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 9
    .line 10
    return-void
.end method

.method public set(Landroid/location/GpsMeasurement;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/location/GpsMeasurement;->mFlags:I

    .line 2
    .line 3
    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 4
    .line 5
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mPrn:B

    .line 6
    .line 7
    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 8
    .line 9
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 12
    .line 13
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mState:S

    .line 14
    .line 15
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 16
    .line 17
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 18
    .line 19
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 20
    .line 21
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 22
    .line 23
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 24
    .line 25
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 26
    .line 27
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 28
    .line 29
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 30
    .line 31
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 32
    .line 33
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 34
    .line 35
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 36
    .line 37
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 38
    .line 39
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 40
    .line 41
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 42
    .line 43
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 44
    .line 45
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 46
    .line 47
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 48
    .line 49
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 50
    .line 51
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 52
    .line 53
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 54
    .line 55
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 56
    .line 57
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 58
    .line 59
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 60
    .line 61
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 62
    .line 63
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 64
    .line 65
    iget v0, p1, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 66
    .line 67
    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 68
    .line 69
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 70
    .line 71
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 72
    .line 73
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 74
    .line 75
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 76
    .line 77
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 78
    .line 79
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 80
    .line 81
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 82
    .line 83
    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 84
    .line 85
    iget v0, p1, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 86
    .line 87
    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 88
    .line 89
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 90
    .line 91
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 92
    .line 93
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 94
    .line 95
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 96
    .line 97
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 98
    .line 99
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 100
    .line 101
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 102
    .line 103
    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 104
    .line 105
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 106
    .line 107
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 108
    .line 109
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 110
    .line 111
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 112
    .line 113
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 114
    .line 115
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 116
    .line 117
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 118
    .line 119
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 120
    .line 121
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 122
    .line 123
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 124
    .line 125
    iget-boolean p1, p1, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 126
    .line 127
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 128
    .line 129
    return-void
.end method

.method public setAccumulatedDeltaRangeInMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-void
.end method

.method public setAccumulatedDeltaRangeState(S)V
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyInMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-void
.end method

.method public setAzimuthInDeg(D)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 7
    .line 8
    return-void
.end method

.method public setAzimuthUncertaintyInDeg(D)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 7
    .line 8
    return-void
.end method

.method public setBitNumber(I)V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

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
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 7
    .line 8
    return-void
.end method

.method public setCarrierFrequencyInHz(F)V
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

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
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

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
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 7
    .line 8
    return-void
.end method

.method public setCn0InDbHz(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-void
.end method

.method public setCodePhaseInChips(D)V
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 7
    .line 8
    return-void
.end method

.method public setCodePhaseUncertaintyInChips(D)V
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 7
    .line 8
    return-void
.end method

.method public setDopplerShiftInHz(D)V
    .locals 1

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 8
    .line 9
    return-void
.end method

.method public setDopplerShiftUncertaintyInHz(D)V
    .locals 1

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 7
    .line 8
    return-void
.end method

.method public setElevationInDeg(D)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 6
    .line 7
    return-void
.end method

.method public setElevationUncertaintyInDeg(D)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 6
    .line 7
    return-void
.end method

.method public setLossOfLock(B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return-void
.end method

.method public setMultipathIndicator(B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return-void
.end method

.method public setPrn(B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return-void
.end method

.method public setPseudorangeInMeters(D)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 7
    .line 8
    return-void
.end method

.method public setPseudorangeRateInMetersPerSec(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeRateUncertaintyInMetersPerSec(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeUncertaintyInMeters(D)V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 7
    .line 8
    return-void
.end method

.method public setReceivedGpsTowInNs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-void
.end method

.method public setReceivedGpsTowUncertaintyInNs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 6
    .line 7
    return-void
.end method

.method public setState(S)V
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return-void
.end method

.method public setTimeFromLastBitInMs(S)V
    .locals 1

    .line 1
    const/16 v0, 0x4000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 7
    .line 8
    return-void
.end method

.method public setTimeOffsetInNs(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-void
.end method

.method public setUsedInFix(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GpsMeasurement:\n"

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
    const-string v3, "Prn"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    iget-byte v3, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
    const-string v6, "TimeOffsetInNs"

    .line 37
    .line 38
    aput-object v6, v2, v4

    .line 39
    .line 40
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 41
    .line 42
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
    const-string v6, "State"

    .line 58
    .line 59
    aput-object v6, v2, v4

    .line 60
    .line 61
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getStateString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    aput-object v6, v2, v5

    .line 66
    .line 67
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    new-array v6, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    const-string v7, "ReceivedGpsTowInNs"

    .line 78
    .line 79
    aput-object v7, v6, v4

    .line 80
    .line 81
    iget-wide v7, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 82
    .line 83
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    aput-object v7, v6, v5

    .line 88
    .line 89
    const-string v7, "ReceivedGpsTowUncertaintyInNs"

    .line 90
    .line 91
    aput-object v7, v6, v1

    .line 92
    .line 93
    iget-wide v7, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 94
    .line 95
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    const/4 v8, 0x3

    .line 100
    aput-object v7, v6, v8

    .line 101
    .line 102
    const-string v7, "   %-29s = %-25s   %-40s = %s\n"

    .line 103
    .line 104
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-array v6, v1, [Ljava/lang/Object;

    .line 112
    .line 113
    const-string v9, "Cn0InDbHz"

    .line 114
    .line 115
    aput-object v9, v6, v4

    .line 116
    .line 117
    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 118
    .line 119
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    aput-object v9, v6, v5

    .line 124
    .line 125
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    new-array v6, v2, [Ljava/lang/Object;

    .line 133
    .line 134
    const-string v9, "PseudorangeRateInMetersPerSec"

    .line 135
    .line 136
    aput-object v9, v6, v4

    .line 137
    .line 138
    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

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
    const-string v9, "PseudorangeRateUncertaintyInMetersPerSec"

    .line 147
    .line 148
    aput-object v9, v6, v1

    .line 149
    .line 150
    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 151
    .line 152
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    aput-object v9, v6, v8

    .line 157
    .line 158
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    new-array v6, v1, [Ljava/lang/Object;

    .line 166
    .line 167
    const-string v9, "PseudorangeRateIsCorrected"

    .line 168
    .line 169
    aput-object v9, v6, v4

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->isPseudorangeRateCorrected()Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    aput-object v9, v6, v5

    .line 180
    .line 181
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    new-array v6, v1, [Ljava/lang/Object;

    .line 189
    .line 190
    const-string v9, "AccumulatedDeltaRangeState"

    .line 191
    .line 192
    aput-object v9, v6, v4

    .line 193
    .line 194
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    aput-object v9, v6, v5

    .line 199
    .line 200
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    new-array v6, v2, [Ljava/lang/Object;

    .line 208
    .line 209
    const-string v9, "AccumulatedDeltaRangeInMeters"

    .line 210
    .line 211
    aput-object v9, v6, v4

    .line 212
    .line 213
    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 214
    .line 215
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    aput-object v9, v6, v5

    .line 220
    .line 221
    const-string v9, "AccumulatedDeltaRangeUncertaintyInMeters"

    .line 222
    .line 223
    aput-object v9, v6, v1

    .line 224
    .line 225
    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 226
    .line 227
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    aput-object v9, v6, v8

    .line 232
    .line 233
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    new-array v6, v2, [Ljava/lang/Object;

    .line 241
    .line 242
    const-string v9, "PseudorangeInMeters"

    .line 243
    .line 244
    aput-object v9, v6, v4

    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeInMeters()Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    const/4 v10, 0x0

    .line 251
    if-eqz v9, :cond_0

    .line 252
    .line 253
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 254
    .line 255
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    goto :goto_0

    .line 260
    :cond_0
    move-object v9, v10

    .line 261
    :goto_0
    aput-object v9, v6, v5

    .line 262
    .line 263
    const-string v9, "PseudorangeUncertaintyInMeters"

    .line 264
    .line 265
    aput-object v9, v6, v1

    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeUncertaintyInMeters()Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-eqz v9, :cond_1

    .line 272
    .line 273
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 274
    .line 275
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    goto :goto_1

    .line 280
    :cond_1
    move-object v9, v10

    .line 281
    :goto_1
    aput-object v9, v6, v8

    .line 282
    .line 283
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    new-array v6, v2, [Ljava/lang/Object;

    .line 291
    .line 292
    const-string v9, "CodePhaseInChips"

    .line 293
    .line 294
    aput-object v9, v6, v4

    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseInChips()Z

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    if-eqz v9, :cond_2

    .line 301
    .line 302
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 303
    .line 304
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    goto :goto_2

    .line 309
    :cond_2
    move-object v9, v10

    .line 310
    :goto_2
    aput-object v9, v6, v5

    .line 311
    .line 312
    const-string v9, "CodePhaseUncertaintyInChips"

    .line 313
    .line 314
    aput-object v9, v6, v1

    .line 315
    .line 316
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseUncertaintyInChips()Z

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    if-eqz v9, :cond_3

    .line 321
    .line 322
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 323
    .line 324
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    goto :goto_3

    .line 329
    :cond_3
    move-object v9, v10

    .line 330
    :goto_3
    aput-object v9, v6, v8

    .line 331
    .line 332
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    new-array v6, v1, [Ljava/lang/Object;

    .line 340
    .line 341
    const-string v9, "CarrierFrequencyInHz"

    .line 342
    .line 343
    aput-object v9, v6, v4

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierFrequencyInHz()Z

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    if-eqz v9, :cond_4

    .line 350
    .line 351
    iget v9, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 352
    .line 353
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    goto :goto_4

    .line 358
    :cond_4
    move-object v9, v10

    .line 359
    :goto_4
    aput-object v9, v6, v5

    .line 360
    .line 361
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    new-array v6, v1, [Ljava/lang/Object;

    .line 369
    .line 370
    const-string v9, "CarrierCycles"

    .line 371
    .line 372
    aput-object v9, v6, v4

    .line 373
    .line 374
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierCycles()Z

    .line 375
    .line 376
    .line 377
    move-result v9

    .line 378
    if-eqz v9, :cond_5

    .line 379
    .line 380
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 381
    .line 382
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    goto :goto_5

    .line 387
    :cond_5
    move-object v9, v10

    .line 388
    :goto_5
    aput-object v9, v6, v5

    .line 389
    .line 390
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    new-array v6, v2, [Ljava/lang/Object;

    .line 398
    .line 399
    const-string v9, "CarrierPhase"

    .line 400
    .line 401
    aput-object v9, v6, v4

    .line 402
    .line 403
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhase()Z

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    if-eqz v9, :cond_6

    .line 408
    .line 409
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 410
    .line 411
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    goto :goto_6

    .line 416
    :cond_6
    move-object v9, v10

    .line 417
    :goto_6
    aput-object v9, v6, v5

    .line 418
    .line 419
    const-string v9, "CarrierPhaseUncertainty"

    .line 420
    .line 421
    aput-object v9, v6, v1

    .line 422
    .line 423
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhaseUncertainty()Z

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    if-eqz v9, :cond_7

    .line 428
    .line 429
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 430
    .line 431
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    goto :goto_7

    .line 436
    :cond_7
    move-object v9, v10

    .line 437
    :goto_7
    aput-object v9, v6, v8

    .line 438
    .line 439
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    new-array v6, v1, [Ljava/lang/Object;

    .line 447
    .line 448
    const-string v9, "LossOfLock"

    .line 449
    .line 450
    aput-object v9, v6, v4

    .line 451
    .line 452
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getLossOfLockString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v9

    .line 456
    aput-object v9, v6, v5

    .line 457
    .line 458
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    new-array v6, v1, [Ljava/lang/Object;

    .line 466
    .line 467
    const-string v9, "BitNumber"

    .line 468
    .line 469
    aput-object v9, v6, v4

    .line 470
    .line 471
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasBitNumber()Z

    .line 472
    .line 473
    .line 474
    move-result v9

    .line 475
    if-eqz v9, :cond_8

    .line 476
    .line 477
    iget v9, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 478
    .line 479
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    goto :goto_8

    .line 484
    :cond_8
    move-object v9, v10

    .line 485
    :goto_8
    aput-object v9, v6, v5

    .line 486
    .line 487
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    new-array v6, v1, [Ljava/lang/Object;

    .line 495
    .line 496
    const-string v9, "TimeFromLastBitInMs"

    .line 497
    .line 498
    aput-object v9, v6, v4

    .line 499
    .line 500
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasTimeFromLastBitInMs()Z

    .line 501
    .line 502
    .line 503
    move-result v9

    .line 504
    if-eqz v9, :cond_9

    .line 505
    .line 506
    iget-short v9, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 507
    .line 508
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    goto :goto_9

    .line 513
    :cond_9
    move-object v9, v10

    .line 514
    :goto_9
    aput-object v9, v6, v5

    .line 515
    .line 516
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    new-array v6, v2, [Ljava/lang/Object;

    .line 524
    .line 525
    const-string v9, "DopplerShiftInHz"

    .line 526
    .line 527
    aput-object v9, v6, v4

    .line 528
    .line 529
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftInHz()Z

    .line 530
    .line 531
    .line 532
    move-result v9

    .line 533
    if-eqz v9, :cond_a

    .line 534
    .line 535
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 536
    .line 537
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    goto :goto_a

    .line 542
    :cond_a
    move-object v9, v10

    .line 543
    :goto_a
    aput-object v9, v6, v5

    .line 544
    .line 545
    const-string v9, "DopplerShiftUncertaintyInHz"

    .line 546
    .line 547
    aput-object v9, v6, v1

    .line 548
    .line 549
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftUncertaintyInHz()Z

    .line 550
    .line 551
    .line 552
    move-result v9

    .line 553
    if-eqz v9, :cond_b

    .line 554
    .line 555
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 556
    .line 557
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 558
    .line 559
    .line 560
    move-result-object v9

    .line 561
    goto :goto_b

    .line 562
    :cond_b
    move-object v9, v10

    .line 563
    :goto_b
    aput-object v9, v6, v8

    .line 564
    .line 565
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    new-array v6, v1, [Ljava/lang/Object;

    .line 573
    .line 574
    const-string v9, "MultipathIndicator"

    .line 575
    .line 576
    aput-object v9, v6, v4

    .line 577
    .line 578
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    aput-object v9, v6, v5

    .line 583
    .line 584
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    new-array v6, v1, [Ljava/lang/Object;

    .line 592
    .line 593
    const-string v9, "SnrInDb"

    .line 594
    .line 595
    aput-object v9, v6, v4

    .line 596
    .line 597
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasSnrInDb()Z

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    if-eqz v9, :cond_c

    .line 602
    .line 603
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 604
    .line 605
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    goto :goto_c

    .line 610
    :cond_c
    move-object v9, v10

    .line 611
    :goto_c
    aput-object v9, v6, v5

    .line 612
    .line 613
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    new-array v6, v2, [Ljava/lang/Object;

    .line 621
    .line 622
    const-string v9, "ElevationInDeg"

    .line 623
    .line 624
    aput-object v9, v6, v4

    .line 625
    .line 626
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationInDeg()Z

    .line 627
    .line 628
    .line 629
    move-result v9

    .line 630
    if-eqz v9, :cond_d

    .line 631
    .line 632
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 633
    .line 634
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    goto :goto_d

    .line 639
    :cond_d
    move-object v9, v10

    .line 640
    :goto_d
    aput-object v9, v6, v5

    .line 641
    .line 642
    const-string v9, "ElevationUncertaintyInDeg"

    .line 643
    .line 644
    aput-object v9, v6, v1

    .line 645
    .line 646
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationUncertaintyInDeg()Z

    .line 647
    .line 648
    .line 649
    move-result v9

    .line 650
    if-eqz v9, :cond_e

    .line 651
    .line 652
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 653
    .line 654
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 655
    .line 656
    .line 657
    move-result-object v9

    .line 658
    goto :goto_e

    .line 659
    :cond_e
    move-object v9, v10

    .line 660
    :goto_e
    aput-object v9, v6, v8

    .line 661
    .line 662
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v6

    .line 666
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    new-array v2, v2, [Ljava/lang/Object;

    .line 670
    .line 671
    const-string v6, "AzimuthInDeg"

    .line 672
    .line 673
    aput-object v6, v2, v4

    .line 674
    .line 675
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthInDeg()Z

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    if-eqz v6, :cond_f

    .line 680
    .line 681
    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 682
    .line 683
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    goto :goto_f

    .line 688
    :cond_f
    move-object v6, v10

    .line 689
    :goto_f
    aput-object v6, v2, v5

    .line 690
    .line 691
    const-string v6, "AzimuthUncertaintyInDeg"

    .line 692
    .line 693
    aput-object v6, v2, v1

    .line 694
    .line 695
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthUncertaintyInDeg()Z

    .line 696
    .line 697
    .line 698
    move-result v6

    .line 699
    if-eqz v6, :cond_10

    .line 700
    .line 701
    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 702
    .line 703
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 704
    .line 705
    .line 706
    move-result-object v10

    .line 707
    :cond_10
    aput-object v10, v2, v8

    .line 708
    .line 709
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    new-array v1, v1, [Ljava/lang/Object;

    .line 717
    .line 718
    const-string v2, "UsedInFix"

    .line 719
    .line 720
    aput-object v2, v1, v4

    .line 721
    .line 722
    iget-boolean v2, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 723
    .line 724
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    aput-object v2, v1, v5

    .line 729
    .line 730
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-byte p2, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 14
    .line 15
    .line 16
    iget-short p2, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    .line 45
    .line 46
    iget-short p2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    .line 60
    .line 61
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 64
    .line 65
    .line 66
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    .line 70
    .line 71
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    .line 75
    .line 76
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    .line 85
    .line 86
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    .line 90
    .line 91
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    .line 95
    .line 96
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    .line 100
    .line 101
    iget-byte p2, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 104
    .line 105
    .line 106
    iget p2, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    .line 110
    .line 111
    iget-short p2, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    .line 115
    .line 116
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 119
    .line 120
    .line 121
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 124
    .line 125
    .line 126
    iget-byte p2, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    .line 130
    .line 131
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 134
    .line 135
    .line 136
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 139
    .line 140
    .line 141
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 144
    .line 145
    .line 146
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 147
    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 149
    .line 150
    .line 151
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 152
    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 154
    .line 155
    .line 156
    iget-boolean p2, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
