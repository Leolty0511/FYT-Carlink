.class public final Landroid/location/GpsSatellite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAzimuth:F

.field public mElevation:F

.field public mHasAlmanac:Z

.field public mHasEphemeris:Z

.field public mPrn:I

.field public mSnr:F

.field public mUsedInFix:Z

.field public mValid:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/location/GpsSatellite;->mPrn:I

    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/GpsSatellite;->mPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    return v0
.end method

.method public setStatus(Landroid/location/GpsSatellite;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mValid:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    .line 2
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 3
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 4
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 5
    iget v0, p1, Landroid/location/GpsSatellite;->mSnr:F

    iput v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    .line 6
    iget v0, p1, Landroid/location/GpsSatellite;->mElevation:F

    iput v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    .line 7
    iget p1, p1, Landroid/location/GpsSatellite;->mAzimuth:F

    iput p1, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    return-void
.end method

.method public usedInFix()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    return v0
.end method
