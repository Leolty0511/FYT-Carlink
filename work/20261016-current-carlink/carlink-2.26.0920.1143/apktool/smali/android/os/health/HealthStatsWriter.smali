.class public Landroid/os/health/HealthStatsWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mConstants:Landroid/os/health/HealthKeys$Constants;

.field private final mMeasurementFields:[Z

.field private final mMeasurementValues:[J

.field private final mMeasurementsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimerCounts:[I

.field private final mTimerFields:[Z

.field private final mTimerTimes:[J

.field private final mTimersValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/health/HealthKeys$Constants;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-array v1, v0, [Z

    .line 12
    .line 13
    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    .line 14
    .line 15
    new-array v1, v0, [I

    .line 16
    .line 17
    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    .line 18
    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    iput-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-array v1, v0, [Z

    .line 29
    .line 30
    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    .line 31
    .line 32
    new-array v0, v0, [J

    .line 33
    .line 34
    iput-object v0, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    new-array v0, v0, [Landroid/util/ArrayMap;

    .line 42
    .line 43
    iput-object v0, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    new-array v0, v0, [Landroid/util/ArrayMap;

    .line 51
    .line 52
    iput-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    new-array p1, p1, [Landroid/util/ArrayMap;

    .line 60
    .line 61
    iput-object p1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 62
    .line 63
    return-void
.end method

.method private static countBooleanArray([Z)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    aget-boolean v3, p0, v1

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v2
.end method

.method private static countObjectArray([Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v1

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v2
.end method

.method private static writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/os/health/HealthStatsWriter;

    .line 25
    .line 26
    invoke-virtual {v2, p0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method private static writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private static writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/os/Parcelable;

    .line 26
    .line 27
    invoke-interface {v3, p0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public addMeasurement(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    .line 9
    .line 10
    aput-boolean v1, v0, p1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    .line 13
    .line 14
    aput-wide p2, v0, p1

    .line 15
    .line 16
    return-void
.end method

.method public addMeasurements(ILjava/lang/String;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 9
    .line 10
    aget-object v1, v0, p1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/util/ArrayMap;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 18
    .line 19
    .line 20
    aput-object v1, v0, p1

    .line 21
    .line 22
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    .line 9
    .line 10
    aget-object v1, v0, p1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/util/ArrayMap;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 18
    .line 19
    .line 20
    aput-object v1, v0, p1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public addTimer(IIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aput-boolean v1, v0, p1

    .line 12
    .line 13
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    .line 14
    .line 15
    aput p2, v0, p1

    .line 16
    .line 17
    iget-object p2, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    .line 18
    .line 19
    aput-wide p3, p2, p1

    .line 20
    .line 21
    return-void
.end method

.method public addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    .line 9
    .line 10
    aget-object v1, v0, p1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/util/ArrayMap;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 18
    .line 19
    .line 20
    aput-object v1, v0, p1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public flattenToParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/health/HealthKeys$Constants;->getDataType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    .line 11
    .line 12
    invoke-static {v0}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move v2, v1

    .line 27
    :goto_0
    array-length v3, v0

    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    .line 31
    .line 32
    aget-boolean v3, v3, v2

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    aget v3, v0, v2

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    .line 42
    .line 43
    aget v3, v3, v2

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    .line 49
    .line 50
    aget-wide v4, v3, v2

    .line 51
    .line 52
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    .line 59
    .line 60
    invoke-static {v0}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-virtual {v0, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move v2, v1

    .line 75
    :goto_1
    array-length v3, v0

    .line 76
    if-ge v2, v3, :cond_3

    .line 77
    .line 78
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    .line 79
    .line 80
    aget-boolean v3, v3, v2

    .line 81
    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    aget v3, v0, v2

    .line 85
    .line 86
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    .line 90
    .line 91
    aget-wide v4, v3, v2

    .line 92
    .line 93
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    .line 95
    .line 96
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-static {v0}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 109
    .line 110
    const/4 v2, 0x2

    .line 111
    invoke-virtual {v0, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    move v2, v1

    .line 116
    :goto_2
    array-length v3, v0

    .line 117
    if-ge v2, v3, :cond_5

    .line 118
    .line 119
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    .line 120
    .line 121
    aget-object v3, v3, v2

    .line 122
    .line 123
    if-eqz v3, :cond_4

    .line 124
    .line 125
    aget v3, v0, v2

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    .line 131
    .line 132
    aget-object v3, v3, v2

    .line 133
    .line 134
    invoke-static {p1, v3}, Landroid/os/health/HealthStatsWriter;->writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-static {v0}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 150
    .line 151
    const/4 v2, 0x3

    .line 152
    invoke-virtual {v0, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move v2, v1

    .line 157
    :goto_3
    array-length v3, v0

    .line 158
    if-ge v2, v3, :cond_7

    .line 159
    .line 160
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    .line 161
    .line 162
    aget-object v3, v3, v2

    .line 163
    .line 164
    if-eqz v3, :cond_6

    .line 165
    .line 166
    aget v3, v0, v2

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    .line 170
    .line 171
    iget-object v3, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    .line 172
    .line 173
    aget-object v3, v3, v2

    .line 174
    .line 175
    invoke-static {p1, v3}, Landroid/os/health/HealthStatsWriter;->writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 182
    .line 183
    invoke-static {v0}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 191
    .line 192
    const/4 v2, 0x4

    .line 193
    invoke-virtual {v0, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :goto_4
    array-length v2, v0

    .line 198
    if-ge v1, v2, :cond_9

    .line 199
    .line 200
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 201
    .line 202
    aget-object v2, v2, v1

    .line 203
    .line 204
    if-eqz v2, :cond_8

    .line 205
    .line 206
    aget v2, v0, v1

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    .line 210
    .line 211
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 212
    .line 213
    aget-object v2, v2, v1

    .line 214
    .line 215
    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_9
    return-void
.end method
