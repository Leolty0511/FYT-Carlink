.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:S = 0x8s

.field private static final HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final HAS_DRIFT:S = 0x20s

.field private static final HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final HAS_FULL_BIAS:S = 0x4s

.field private static final HAS_LEAP_SECOND:S = 0x1s

.field private static final HAS_NO_FLAGS:S = 0x0s

.field private static final HAS_TIME_UNCERTAINTY:S = 0x2s

.field public static final TYPE_GPS_TIME:B = 0x2t

.field public static final TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mBiasInNs:D

.field private mBiasUncertaintyInNs:D

.field private mDriftInNsPerSec:D

.field private mDriftUncertaintyInNsPerSec:D

.field private mFlags:S

.field private mFullBiasInNs:J

.field private mLeapSecond:S

.field private mTimeInNs:J

.field private mTimeUncertaintyInNs:D

.field private mType:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GpsClock$1;

    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$002(Landroid/location/GpsClock;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return p1
.end method

.method public static synthetic access$102(Landroid/location/GpsClock;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return p1
.end method

.method public static synthetic access$202(Landroid/location/GpsClock;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return p1
.end method

.method public static synthetic access$302(Landroid/location/GpsClock;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide p1
.end method

.method public static synthetic access$402(Landroid/location/GpsClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide p1
.end method

.method public static synthetic access$502(Landroid/location/GpsClock;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide p1
.end method

.method public static synthetic access$602(Landroid/location/GpsClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide p1
.end method

.method public static synthetic access$702(Landroid/location/GpsClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide p1
.end method

.method public static synthetic access$802(Landroid/location/GpsClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide p1
.end method

.method public static synthetic access$902(Landroid/location/GpsClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide p1
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

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
    iget-byte v1, p0, Landroid/location/GpsClock;->mType:B

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
    const-string v0, "GpsTime"

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const-string v0, "LocalHwClock"

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

.method private initialize()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    .line 8
    .line 9
    .line 10
    const-wide/high16 v0, -0x8000000000000000L

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetFullBiasInNs()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private isFlagSet(S)Z
    .locals 1

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetFlag(S)V
    .locals 1

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    not-int p1, p1

    and-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method

.method private setFlag(S)V
    .locals 1

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBiasInNs()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide v0
.end method

.method public getBiasUncertaintyInNs()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide v0
.end method

.method public getDriftInNsPerSec()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide v0
.end method

.method public getDriftUncertaintyInNsPerSec()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide v0
.end method

.method public getFullBiasInNs()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide v0
.end method

.method public getLeapSecond()S
    .locals 1

    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return v0
.end method

.method public getTimeInNs()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide v0
.end method

.method public getTimeUncertaintyInNs()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide v0
.end method

.method public getType()B
    .locals 1

    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    return v0
.end method

.method public hasBiasInNs()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyInNs()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftInNsPerSec()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyInNsPerSec()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasInNs()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyInNs()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    return-void
.end method

.method public resetBiasInNs()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 9
    .line 10
    return-void
.end method

.method public resetBiasUncertaintyInNs()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 9
    .line 10
    return-void
.end method

.method public resetDriftInNsPerSec()V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 9
    .line 10
    return-void
.end method

.method public resetDriftUncertaintyInNsPerSec()V
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 9
    .line 10
    return-void
.end method

.method public resetFullBiasInNs()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 8
    .line 9
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 3
    .line 4
    .line 5
    const/16 v0, -0x8000

    .line 6
    .line 7
    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 8
    .line 9
    return-void
.end method

.method public resetTimeUncertaintyInNs()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 8
    .line 9
    return-void
.end method

.method public set(Landroid/location/GpsClock;)V
    .locals 2

    .line 1
    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    .line 2
    .line 3
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 4
    .line 5
    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    .line 6
    .line 7
    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 8
    .line 9
    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    .line 10
    .line 11
    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    .line 12
    .line 13
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 16
    .line 17
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 18
    .line 19
    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 20
    .line 21
    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 22
    .line 23
    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 24
    .line 25
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    .line 26
    .line 27
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 28
    .line 29
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 30
    .line 31
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 32
    .line 33
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 34
    .line 35
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 36
    .line 37
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 38
    .line 39
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 40
    .line 41
    return-void
.end method

.method public setBiasInNs(D)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 7
    .line 8
    return-void
.end method

.method public setBiasUncertaintyInNs(D)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 7
    .line 8
    return-void
.end method

.method public setDriftInNsPerSec(D)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 7
    .line 8
    return-void
.end method

.method public setDriftUncertaintyInNsPerSec(D)V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 7
    .line 8
    return-void
.end method

.method public setFullBiasInNs(J)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 6
    .line 7
    return-void
.end method

.method public setLeapSecond(S)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 3
    .line 4
    .line 5
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 6
    .line 7
    return-void
.end method

.method public setTimeInNs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-void
.end method

.method public setTimeUncertaintyInNs(D)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 6
    .line 7
    return-void
.end method

.method public setType(B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GpsClock:\n"

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
    const-string v3, "Type"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 22
    .line 23
    const-string v3, "   %-15s = %s\n"

    .line 24
    .line 25
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v6, "LeapSecond"

    .line 35
    .line 36
    aput-object v6, v2, v4

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    iget-short v6, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v6, v7

    .line 53
    :goto_0
    aput-object v6, v2, v5

    .line 54
    .line 55
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    new-array v6, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v8, "TimeInNs"

    .line 66
    .line 67
    aput-object v8, v6, v4

    .line 68
    .line 69
    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 70
    .line 71
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    aput-object v8, v6, v5

    .line 76
    .line 77
    const-string v8, "TimeUncertaintyInNs"

    .line 78
    .line 79
    aput-object v8, v6, v1

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_1

    .line 86
    .line 87
    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 88
    .line 89
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-object v8, v7

    .line 95
    :goto_1
    const/4 v9, 0x3

    .line 96
    aput-object v8, v6, v9

    .line 97
    .line 98
    const-string v8, "   %-15s = %-25s   %-26s = %s\n"

    .line 99
    .line 100
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-array v6, v1, [Ljava/lang/Object;

    .line 108
    .line 109
    const-string v10, "FullBiasInNs"

    .line 110
    .line 111
    aput-object v10, v6, v4

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_2

    .line 118
    .line 119
    iget-wide v10, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 120
    .line 121
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move-object v10, v7

    .line 127
    :goto_2
    aput-object v10, v6, v5

    .line 128
    .line 129
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    new-array v3, v2, [Ljava/lang/Object;

    .line 137
    .line 138
    const-string v6, "BiasInNs"

    .line 139
    .line 140
    aput-object v6, v3, v4

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_3

    .line 147
    .line 148
    iget-wide v10, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 149
    .line 150
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move-object v6, v7

    .line 156
    :goto_3
    aput-object v6, v3, v5

    .line 157
    .line 158
    const-string v6, "BiasUncertaintyInNs"

    .line 159
    .line 160
    aput-object v6, v3, v1

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_4

    .line 167
    .line 168
    iget-wide v10, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 169
    .line 170
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    goto :goto_4

    .line 175
    :cond_4
    move-object v6, v7

    .line 176
    :goto_4
    aput-object v6, v3, v9

    .line 177
    .line 178
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    new-array v2, v2, [Ljava/lang/Object;

    .line 186
    .line 187
    const-string v3, "DriftInNsPerSec"

    .line 188
    .line 189
    aput-object v3, v2, v4

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_5

    .line 196
    .line 197
    iget-wide v3, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 198
    .line 199
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    goto :goto_5

    .line 204
    :cond_5
    move-object v3, v7

    .line 205
    :goto_5
    aput-object v3, v2, v5

    .line 206
    .line 207
    const-string v3, "DriftUncertaintyInNsPerSec"

    .line 208
    .line 209
    aput-object v3, v2, v1

    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_6

    .line 216
    .line 217
    iget-wide v3, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 218
    .line 219
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    :cond_6
    aput-object v7, v2, v9

    .line 224
    .line 225
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-short p2, p0, Landroid/location/GpsClock;->mFlags:S

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-short p2, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-byte p2, p0, Landroid/location/GpsClock;->mType:B

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
