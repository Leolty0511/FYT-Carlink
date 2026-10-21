.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:I = 0x8

.field private static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final HAS_DRIFT:I = 0x20

.field private static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final HAS_FULL_BIAS:I = 0x4

.field private static final HAS_LEAP_SECOND:I = 0x1

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private mBiasNanos:D

.field private mBiasUncertaintyNanos:D

.field private mDriftNanosPerSecond:D

.field private mDriftUncertaintyNanosPerSecond:D

.field private mFlags:I

.field private mFullBiasNanos:J

.field private mHardwareClockDiscontinuityCount:I

.field private mLeapSecond:I

.field private mTimeNanos:J

.field private mTimeUncertaintyNanos:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GnssClock$1;

    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$002(Landroid/location/GnssClock;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return p1
.end method

.method public static synthetic access$102(Landroid/location/GnssClock;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return p1
.end method

.method public static synthetic access$202(Landroid/location/GnssClock;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide p1
.end method

.method public static synthetic access$302(Landroid/location/GnssClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide p1
.end method

.method public static synthetic access$402(Landroid/location/GnssClock;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide p1
.end method

.method public static synthetic access$502(Landroid/location/GnssClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide p1
.end method

.method public static synthetic access$602(Landroid/location/GnssClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide p1
.end method

.method public static synthetic access$702(Landroid/location/GnssClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide p1
.end method

.method public static synthetic access$802(Landroid/location/GnssClock;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide p1
.end method

.method public static synthetic access$902(Landroid/location/GnssClock;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return p1
.end method

.method private initialize()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    .line 5
    .line 6
    .line 7
    const-wide/high16 v0, -0x8000000000000000L

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    .line 28
    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

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

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBiasNanos()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide v0
.end method

.method public getBiasUncertaintyNanos()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public getDriftNanosPerSecond()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide v0
.end method

.method public getDriftUncertaintyNanosPerSecond()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide v0
.end method

.method public getFullBiasNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide v0
.end method

.method public getHardwareClockDiscontinuityCount()I
    .locals 1

    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return v0
.end method

.method public getLeapSecond()I
    .locals 1

    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return v0
.end method

.method public getTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide v0
.end method

.method public getTimeUncertaintyNanos()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide v0
.end method

.method public hasBiasNanos()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyNanos()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftNanosPerSecond()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasNanos()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyNanos()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    return-void
.end method

.method public resetBiasNanos()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 9
    .line 10
    return-void
.end method

.method public resetBiasUncertaintyNanos()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 9
    .line 10
    return-void
.end method

.method public resetDriftNanosPerSecond()V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 9
    .line 10
    return-void
.end method

.method public resetDriftUncertaintyNanosPerSecond()V
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 9
    .line 10
    return-void
.end method

.method public resetFullBiasNanos()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 8
    .line 9
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 3
    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 8
    .line 9
    return-void
.end method

.method public resetTimeUncertaintyNanos()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 3
    .line 4
    .line 5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 8
    .line 9
    return-void
.end method

.method public set(Landroid/location/GnssClock;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    .line 2
    .line 3
    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 4
    .line 5
    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    .line 6
    .line 7
    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 8
    .line 9
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 12
    .line 13
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 16
    .line 17
    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 18
    .line 19
    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 20
    .line 21
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    .line 22
    .line 23
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 24
    .line 25
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 26
    .line 27
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 28
    .line 29
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 30
    .line 31
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 32
    .line 33
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 34
    .line 35
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 36
    .line 37
    iget p1, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 38
    .line 39
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 40
    .line 41
    return-void
.end method

.method public setBiasNanos(D)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 7
    .line 8
    return-void
.end method

.method public setBiasUncertaintyNanos(D)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 7
    .line 8
    return-void
.end method

.method public setDriftNanosPerSecond(D)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 7
    .line 8
    return-void
.end method

.method public setDriftUncertaintyNanosPerSecond(D)V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 7
    .line 8
    return-void
.end method

.method public setFullBiasNanos(J)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 6
    .line 7
    return-void
.end method

.method public setHardwareClockDiscontinuityCount(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return-void
.end method

.method public setLeapSecond(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 6
    .line 7
    return-void
.end method

.method public setTimeNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-void
.end method

.method public setTimeUncertaintyNanos(D)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GnssClock:\n"

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
    const-string v3, "LeapSecond"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v3, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v5

    .line 31
    :goto_0
    const/4 v6, 0x1

    .line 32
    aput-object v3, v2, v6

    .line 33
    .line 34
    const-string v3, "   %-15s = %s\n"

    .line 35
    .line 36
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    new-array v7, v2, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v8, "TimeNanos"

    .line 47
    .line 48
    aput-object v8, v7, v4

    .line 49
    .line 50
    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 51
    .line 52
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    aput-object v8, v7, v6

    .line 57
    .line 58
    const-string v8, "TimeUncertaintyNanos"

    .line 59
    .line 60
    aput-object v8, v7, v1

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 69
    .line 70
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v8, v5

    .line 76
    :goto_1
    const/4 v9, 0x3

    .line 77
    aput-object v8, v7, v9

    .line 78
    .line 79
    const-string v8, "   %-15s = %-25s   %-26s = %s\n"

    .line 80
    .line 81
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-array v7, v1, [Ljava/lang/Object;

    .line 89
    .line 90
    const-string v10, "FullBiasNanos"

    .line 91
    .line 92
    aput-object v10, v7, v4

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_2

    .line 99
    .line 100
    iget-wide v10, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 101
    .line 102
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move-object v10, v5

    .line 108
    :goto_2
    aput-object v10, v7, v6

    .line 109
    .line 110
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    new-array v7, v2, [Ljava/lang/Object;

    .line 118
    .line 119
    const-string v10, "BiasNanos"

    .line 120
    .line 121
    aput-object v10, v7, v4

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-eqz v10, :cond_3

    .line 128
    .line 129
    iget-wide v10, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 130
    .line 131
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    move-object v10, v5

    .line 137
    :goto_3
    aput-object v10, v7, v6

    .line 138
    .line 139
    const-string v10, "BiasUncertaintyNanos"

    .line 140
    .line 141
    aput-object v10, v7, v1

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    if-eqz v10, :cond_4

    .line 148
    .line 149
    iget-wide v10, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 150
    .line 151
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    goto :goto_4

    .line 156
    :cond_4
    move-object v10, v5

    .line 157
    :goto_4
    aput-object v10, v7, v9

    .line 158
    .line 159
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    new-array v2, v2, [Ljava/lang/Object;

    .line 167
    .line 168
    const-string v7, "DriftNanosPerSecond"

    .line 169
    .line 170
    aput-object v7, v2, v4

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_5

    .line 177
    .line 178
    iget-wide v10, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 179
    .line 180
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    goto :goto_5

    .line 185
    :cond_5
    move-object v7, v5

    .line 186
    :goto_5
    aput-object v7, v2, v6

    .line 187
    .line 188
    const-string v7, "DriftUncertaintyNanosPerSecond"

    .line 189
    .line 190
    aput-object v7, v2, v1

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_6

    .line 197
    .line 198
    iget-wide v10, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 199
    .line 200
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    :cond_6
    aput-object v5, v2, v9

    .line 205
    .line 206
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    new-array v1, v1, [Ljava/lang/Object;

    .line 214
    .line 215
    const-string v2, "HardwareClockDiscontinuityCount"

    .line 216
    .line 217
    aput-object v2, v1, v4

    .line 218
    .line 219
    iget v2, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    aput-object v2, v1, v6

    .line 226
    .line 227
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/location/GnssClock;->mFlags:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
