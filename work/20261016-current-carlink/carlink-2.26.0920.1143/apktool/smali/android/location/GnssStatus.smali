.class public final Landroid/location/GnssStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssStatus$ConstellationType;,
        Landroid/location/GnssStatus$Callback;
    }
.end annotation


# static fields
.field public static final CONSTELLATION_BEIDOU:I = 0x5

.field public static final CONSTELLATION_GALILEO:I = 0x6

.field public static final CONSTELLATION_GLONASS:I = 0x3

.field public static final CONSTELLATION_GPS:I = 0x1

.field public static final CONSTELLATION_QZSS:I = 0x4

.field public static final CONSTELLATION_SBAS:I = 0x2

.field public static final CONSTELLATION_TYPE_MASK:I = 0xf

.field public static final CONSTELLATION_TYPE_SHIFT_WIDTH:I = 0x4

.field public static final CONSTELLATION_UNKNOWN:I = 0x0

.field public static final GNSS_SV_FLAGS_HAS_ALMANAC_DATA:I = 0x2

.field public static final GNSS_SV_FLAGS_HAS_CARRIER_FREQUENCY:I = 0x8

.field public static final GNSS_SV_FLAGS_HAS_EPHEMERIS_DATA:I = 0x1

.field public static final GNSS_SV_FLAGS_NONE:I = 0x0

.field public static final GNSS_SV_FLAGS_USED_IN_FIX:I = 0x4

.field public static final SVID_SHIFT_WIDTH:I = 0x8


# instance fields
.field final mAzimuths:[F

.field final mCarrierFrequencies:[F

.field final mCn0DbHz:[F

.field final mElevations:[F

.field final mSvCount:I

.field final mSvidWithFlags:[I


# direct methods
.method public constructor <init>(I[I[F[F[F[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/location/GnssStatus;->mSvCount:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    .line 7
    .line 8
    iput-object p3, p0, Landroid/location/GnssStatus;->mCn0DbHz:[F

    .line 9
    .line 10
    iput-object p4, p0, Landroid/location/GnssStatus;->mElevations:[F

    .line 11
    .line 12
    iput-object p5, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    .line 13
    .line 14
    iput-object p6, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getAzimuthDegrees(I)F
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    aget p1, v0, p1

    return p1
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    aget p1, v0, p1

    return p1
.end method

.method public getCn0DbHz(I)F
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mCn0DbHz:[F

    aget p1, v0, p1

    return p1
.end method

.method public getConstellationType(I)I
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method public getElevationDegrees(I)F
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mElevations:[F

    aget p1, v0, p1

    return p1
.end method

.method public getSatelliteCount()I
    .locals 1

    iget v0, p0, Landroid/location/GnssStatus;->mSvCount:I

    return v0
.end method

.method public getSvid(I)I
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public hasAlmanacData(I)Z
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasEphemerisData(I)Z
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public usedInFix(I)Z
    .locals 1

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
