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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff

.field private static final SBAS_SVID_OFFSET:I = -0x57


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

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/location/GpsStatus$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object p0
.end method

.method private clearSatellites()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/location/GpsSatellite;

    .line 18
    .line 19
    iput-boolean v1, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private setStatus(I[I[F[F[F)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_9

    .line 2
    aget v2, p2, v1

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    shr-int/lit8 v2, v2, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x40

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    add-int/lit16 v2, v2, 0xc8

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, -0x57

    goto :goto_1

    :cond_2
    if-eq v3, v5, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    goto :goto_5

    :cond_3
    :goto_1
    if-lez v2, :cond_8

    const/16 v3, 0xff

    if-gt v2, v3, :cond_8

    .line 3
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    if-nez v3, :cond_4

    .line 4
    new-instance v3, Landroid/location/GpsSatellite;

    invoke-direct {v3, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 5
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_4
    iput-boolean v5, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 7
    aget v2, p3, v1

    iput v2, v3, Landroid/location/GpsSatellite;->mSnr:F

    .line 8
    aget v2, p4, v1

    iput v2, v3, Landroid/location/GpsSatellite;->mElevation:F

    .line 9
    aget v2, p5, v1

    iput v2, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 10
    aget v2, p2, v1

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_3

    :cond_6
    move v4, v0

    .line 11
    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v5, v0

    .line 12
    :goto_4
    iput-boolean v5, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-void
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

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method public setStatus(Landroid/location/GnssStatus;I)V
    .locals 6

    .line 13
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 14
    iget v1, p1, Landroid/location/GnssStatus;->mSvCount:I

    iget-object v2, p1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iget-object v3, p1, Landroid/location/GnssStatus;->mCn0DbHz:[F

    iget-object v4, p1, Landroid/location/GnssStatus;->mElevations:[F

    iget-object v5, p1, Landroid/location/GnssStatus;->mAzimuths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F)V

    return-void
.end method

.method public setTimeToFirstFix(I)V
    .locals 0

    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return-void
.end method
