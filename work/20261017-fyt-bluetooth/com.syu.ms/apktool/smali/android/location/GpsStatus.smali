.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Landroid/location/GpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [Landroid/location/GpsSatellite;

    .line 2
    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    .line 3
    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 5
    new-instance v2, Landroid/location/GpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Landroid/location/GpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    return-object p0
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method public declared-synchronized setStatus(I[I[F[F[F[I[I[I)V
    .locals 12

    move-object v1, p0

    monitor-enter p0

    const/4 v0, 0x0

    move v2, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v3, v1, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 2
    aget-object v3, v3, v2

    iput-boolean v0, v3, Landroid/location/GpsSatellite;->mValid:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_7

    .line 3
    aget v4, p2, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 4
    div-int/lit8 v6, v4, 0x20

    mul-int/lit8 v7, v6, 0x20

    sub-int v7, v4, v7

    shl-int v8, v5, v7

    if-ltz v7, :cond_1

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    if-ltz v6, :cond_1

    const/16 v9, 0x8

    if-lt v6, v9, :cond_2

    :cond_1
    const-string v9, "TD"

    .line 5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "an error has been happened posInInt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "baseNum:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ltz v4, :cond_6

    .line 6
    iget-object v7, v1, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v9, v7

    if-ge v4, v9, :cond_6

    .line 7
    aget-object v4, v7, v4

    .line 8
    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mValid:Z

    .line 9
    aget v7, p3, v3

    iput v7, v4, Landroid/location/GpsSatellite;->mSnr:F

    .line 10
    aget v7, p4, v3

    iput v7, v4, Landroid/location/GpsSatellite;->mElevation:F

    .line 11
    aget v7, p5, v3

    iput v7, v4, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 12
    aget v7, p6, v6

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    iput-boolean v7, v4, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 13
    aget v7, p7, v6

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    iput-boolean v7, v4, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 14
    aget v6, p8, v6

    and-int/2addr v6, v8

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v5, v0

    :goto_4
    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStatus(Landroid/location/GpsStatus;)V
    .locals 3

    .line 16
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v0

    iput v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 18
    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTimeToFirstFix(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return-void
.end method
