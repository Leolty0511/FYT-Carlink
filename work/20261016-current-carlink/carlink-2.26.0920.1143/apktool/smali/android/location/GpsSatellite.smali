.class public final Landroid/location/GpsSatellite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mAzimuth:F

.field mElevation:F

.field mHasAlmanac:Z

.field mHasEphemeris:Z

.field mPrn:I

.field mSnr:F

.field mUsedInFix:Z

.field mValid:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/location/GpsSatellite;->mPrn:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    return v0
.end method

.method public setStatus(Landroid/location/GpsSatellite;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/location/GpsSatellite;->mValid:Z

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mValid:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    .line 10
    .line 11
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 14
    .line 15
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 18
    .line 19
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 22
    .line 23
    iget v0, p1, Landroid/location/GpsSatellite;->mSnr:F

    .line 24
    .line 25
    iput v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    .line 26
    .line 27
    iget v0, p1, Landroid/location/GpsSatellite;->mElevation:F

    .line 28
    .line 29
    iput v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    .line 30
    .line 31
    iget p1, p1, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 32
    .line 33
    iput p1, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public usedInFix()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    return v0
.end method
